#
# hg.pm
#
# Andriy Chernyayev <andriy.c@gmail.com>
#
# Source Server indexing module for Mercurial
#
# vim: syntax=perl:ts=4:norl:
#

package HG;

require Exporter;
use strict;

use Data::Dumper;

#
# Simple subs to make it clear when we're testing for BOOL values
#
sub TRUE   {return(1);} # BOOLEAN TRUE
	sub FALSE  {return(0);} # BOOLEAN FALSE

# -----------------------------------------------------------------------------
# Create a new blessed reference that will maintain state for this instance of
# indexing
# -----------------------------------------------------------------------------
	sub new {
		my $proto = shift;
		my $class = ref($proto) || $proto;
		my $self  = {};
		bless($self, $class);

		if (defined $ENV{'HG'}) {
			$$self{'HG'} = $ENV{'HG'};
		} else {
			$$self{'HG'} = "hg.exe";
		}

		$$self{'FILE_LOOKUP_TABLE'} = ();

# Block for option parsing.
PARSEOPTIONS: {
		my @unused_opts;
		my @opt;

		foreach (@ARGV) {
# handle command options
			if (substr($_, 0, 1) =~ /^[\/-]$/) {
# options that set values
				if ( (@opt = split(/=/, $_))==2 ) {
block: {
# Remember this was unused
					push(@unused_opts, $_);
					1;
	   }
# options that are just flags
				} else {
block: {
					$$self{'HG_HTTP'} = TRUE, last if ( uc substr($_, 1, 5) eq "HTTP");
# Remember this was unused
					push(@unused_opts, $_);
					1;
	   }
				}
			} else {
# Remember this was unused
				push(@unused_opts, $_);
			}
		}

# Fixup @ARGV to only contained unused options so SSIndex.cmd
# can warn the user about them if necessary.
		@ARGV = @unused_opts;
			  }

			  return($self);
}

sub GetScriptVersion {
	my $self = shift;

	if (defined $$self{'HG_HTTP'}) {
		return 2;
	} else {
		return 1;
	}
}

# -----------------------------------------------------------------------------
# Given our init data and a local source path, create a lookup table that can
# return individual stream data for each source file.
# -----------------------------------------------------------------------------
sub GatherFileInformation {
	my $self        = shift;
	my $SourceRoot  = shift;
	my $ServerRefs  = shift;
	my $ExcludeInfo = shift;

#print Dumper($self);
#print Dumper($ServerRefs);
#print Dumper($ExcludeInfo);
	::info_message("self =\n" . Dumper($self));
	::info_message("SourceRoot = $SourceRoot\n");
	::info_message("ServerRefs =\n" . Dumper($ServerRefs));

# Get repository root
	my $hProc; # Mercurial process

		my $RepositoryRoot;
	my $ServedFile;

	open($hProc, "\"$$self{'HG'}\" --noninteractive --cwd \"$SourceRoot\" root 2>NUL|");
# anch: only single line should be readed
	while (<$hProc>) {
		chomp;
		$RepositoryRoot = $_;
	}

	close($hProc);

	::info_message("Repository root: $RepositoryRoot\n");

# Check workdir state, get revision id
	my $RevisionId;
	my $WorkdirState;

	open($hProc, "\"$$self{'HG'}\" --noninteractive --repository \"$RepositoryRoot\" identify --id --debug 2>NUL|");
	while (<$hProc>) {
		chomp;
		$_ =~ /([[:xdigit:]]{12,40})(\+?)/;
		$RevisionId = $1;
		$WorkdirState = $2;
	}

	close($hProc);

	::info_message("Revision ID:       $RevisionId\n");
# TODO: Stop processing if modified
	::info_message("Working dir state: Modified\n") if $WorkdirState;

# Map to remote repository
	my $RemoteRepo = $$ServerRefs{uc $RepositoryRoot};
	if (! $RemoteRepo) {
# Use directory name as repo id
		$RepositoryRoot =~ /.*\\(.*)$/;
		$RemoteRepo = uc $1 if (defined($1));

# Add to server refs
# TODO: Is unique?
		$$ServerRefs{uc $RepositoryRoot} = $RemoteRepo;
	}
	::info_message("Remote repo:       $RemoteRepo\n");

	my $DefaultRepo;

	if (defined $$self{'HG_HTTP'})
	{
		open($hProc, "\"$$self{'HG'}\" --noninteractive --repository \"$RepositoryRoot\" showconfig paths.default 2>NUL|");
		while (<$hProc>) {
			chomp;
# Check URL
			if (m/^https?:\/\/.+/i)
			{
				$DefaultRepo = $_;
			}
			else
			{
				::fatal_error("Default path \"$_\" cannot be used in http mode\n");
			}
		}

		close($hProc);

		if ($DefaultRepo) {
			::info_message("paths.default:       $DefaultRepo\n");
		}
	}

	open($hProc, "\"$$self{'HG'}\" --noninteractive --repository \"$RepositoryRoot\" manifest 2>NUL|");
	while (<$hProc>) {
		chomp;
# Directory char
		my $LocalFile = $_;

		s/\//\\/isg;

			my $LocalFileDosPath = $_;

		$ServedFile = join('\\', $RepositoryRoot, $LocalFileDosPath);
		@{$$self{'FILE_LOOKUP_TABLE'}{lc $ServedFile}} =
			( { $RemoteRepo => (defined $$self{'HG_HTTP'}) ? $DefaultRepo : $RepositoryRoot }, "$RemoteRepo*$LocalFile*$RevisionId");
		::info_message("$ServedFile\n");
	}

	close($hProc);
}

# -----------------------------------------------------------------------------
# Return ths SRCSRV stream data for a single file.
# -----------------------------------------------------------------------------
sub GetFileInfo {
	my $self        = shift;
	my $file        = shift;
	my $name_in_pdb = shift;

	if (!defined $name_in_pdb) {
		$name_in_pdb = $file;
	}

#::status_message("GetFileInfo: $file\n");
#::status_message("             $name_in_pdb\n");

	if (defined $$self{'FILE_LOOKUP_TABLE'}{lc $file}) {
		::status_message("GetFileInfo returns something for $file\n");
		return( ${$$self{'FILE_LOOKUP_TABLE'}{lc $file}}[0],
			"$name_in_pdb*${$$self{'FILE_LOOKUP_TABLE'}{lc $file}}[1]" );
	} else {
# TODO: Lookup in hardcoded paths
		return(undef);
	}
}

# -----------------------------------------------------------------------------
# Return the SCS specific stream variables.
# -----------------------------------------------------------------------------
sub SourceStreamVariables {
	my $self = shift;
	my @stream;

	if (defined $$self{'HG_HTTP'}) {
		::status_message("HTTP mode\n");
		push(@stream, "HG_EXTRACT_TARGET=".
			"%fnvar%(%var2%)\/raw-file\/%var4%\/%var3%");
		push(@stream, "SRCSRVCMD="); # if needed for HTTP
	} else {
		push(@stream, "HG_EXTRACT_TARGET=".
			"%targ%\\%var4%\\%fnbksl%(%var3%)");
		push(@stream, "HG_EXTRACT_CMD=hg --noninteractive ".
			"--cwd \"%fnvar%(%var2%)\" ". #repository
			"cat ".
			"--rev %var4% ".
			"--output \"%hg_extract_target%\" ".
			"\"%fnbksl%(%var3%)\"");
	}

	::info_message("SourceStreamVariables();\n");

	return(@stream);
}

# -----------------------------------------------------------------------------
# The long name that should be written the SRCSRV stream to describe
# the source control system being indexed.
# -----------------------------------------------------------------------------
sub LongName {
	my $self = shift;

	if (defined $$self{'HG_HTTP'}) {
		return("http");
	} else {
		return("Mercurial");
	}
}

# -----------------------------------------------------------------------------
# Loads previously saved file information.
# -----------------------------------------------------------------------------
sub LoadFileInfo {
	my $self = shift;
	my $dir  = shift;

	if ( -e "$dir\\HG_files.dat" ) {
		our $FileData1;
		require "$dir\\HG_files.dat";
		$$self{'FILE_LOOKUP_TABLE'} = $FileData1;
	} else {
		::status_message("No HG information saved in $dir.\n");
	}

	return();
}

# -----------------------------------------------------------------------------
# Saves current file information.
# -----------------------------------------------------------------------------
sub SaveFileInfo {
	my $self = shift;
	my $dir  = shift;

	my $fh;
	if ( open($fh, ">$dir\\HG_files.dat") ) {
		$Data::Dumper::Varname = "FileData";
		$Data::Dumper::Indent  = 1;
		print $fh Dumper($$self{'FILE_LOOKUP_TABLE'});
		close($fh);
	} else {
		::status_message("Failed to save data to $dir.\n");
	}

	return();
}

# -----------------------------------------------------------------------------
# Simple usage ('-?')
# -----------------------------------------------------------------------------
sub SimpleUsage {
print<<HG_SIMPLE_USAGE;

Mercurial specific settings:

     NAME            SWITCH      ENV. VAR        Default
  -----------------------------------------------------------------------------
  A) http urls       HTTP        n/a             n/a

HG_SIMPLE_USAGE
}
