
@echo off


rem %1 - default or stable
rem %2 - VS2005 or VS2010
rem %3 - file name
rem %4 - server name


PUSHD %~DP0


call	..\_Base\_Copy.bat	..\..\Temporary_Binary\Server\%4	%3.exe	..\..\..\RP_SVN\Program_Team\DailyBuild\%2\%1\Server\%4	%3.exe
call	..\_Base\_Copy.bat	..\..\Temporary_Binary\Server\%4	%3.pdb	..\..\..\RP_SVN\Program_Team\DailyBuild\%2\%1\Server\%4	%3.pdb
