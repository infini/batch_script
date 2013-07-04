
@echo off


rem %1	- default or stable
rem %~2 - Epic 8 Part 1 or Epic 8 Part 2 or ...
rem %3	- VS2005 or VS2010


PUSHD %~DP0


call	Client_01_RemoveTemporaryFolder.bat

call	Client_02_CopyToTemporaryFolder_Weekly.bat	%1
rem %1 - default or stable

IF %3 == VS2005	call	Client_03_Encryption_NProtect_Weekly.bat	%1	22
rem %1 - default or stable
rem %2 - nProtect method level

IF %3 == VS2010	call	Client_03_Encryption_NProtect_Weekly.bat	%1	7
rem %1 - default or stable
rem %2 - nProtect method level

call	Client_04_DigitalSign.bat

call	Client_05_CopyToSVN_Weekly.bat	%2
rem %~1 - Epic 8 Part 1 or Epic 8 Part 2 or ...

call	Client_06_Commit.bat	"..\..\..\RP_SVN\Design_Team\%~2\branches\Release\Client"	..\..\..\RP_Source_Jenkins\%1\Client\ReleaseNote_%1.txt
rem %1 - commit svn path
rem %2 - commit log file path


POPD
