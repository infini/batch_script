
@echo off


rem %1	- default or stable
rem %~2 - Epic 8 Part 1 or Epic 8 Part 2 or ...


PUSHD %~DP0


call	Server_01_RemoveTemporaryFolder.bat

call	Server_02_CopyToTemporaryFolder_Weekly.bat	%1
rem %1 - default or stable

call	Server_03_DigitalSign.bat

call	Server_04_CopyToSVN_Weekly.bat	%2
rem %~1 - Epic 8 Part 1 or Epic 8 Part 2 or ...

call	Server_05_Commit.bat	"..\..\..\RP_SVN\Design_Team\%~2\branches\Release\Server"	..\..\..\RP_Source_Jenkins\%1\Server\ReleaseNote_%1.txt
rem	%1 - commit svn path
rem	%2 - commit log file path
