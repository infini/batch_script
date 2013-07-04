
@echo off


rem %1	- default or stable
rem %~2 - Epic 8 Part 1 or Epic 8 Part 2 or ...
rem %3	- 8.1 ... 8.2 ...


PUSHD %~DP0


call	Server_01_RemoveTemporaryFolder.bat

call	Server_02_CopyToTemporaryFolder_Weekly.bat	%1
rem %1	- default or stable

call	Server_03_DigitalSign.bat

call	Server_04_CopyToSVN_Weekly.bat	%2
rem %~1 - Epic 8 Part 1 or Epic 8 Part 2 or ...


call	..\_Base\_File_Size_Check.bat	..\..\..\RP_Source_Jenkins\%1\Server\ReleaseNote_%1_DB.txt

IF %ERRORLEVEL% == 0 (

call	..\_Base\_Merge_File.bat	..\..\..\RP_Source_Jenkins\%1\Server\ReleaseNote_%1_DB.txt	..\..\..\RP_Source_Jenkins\%1\Server\ReleaseNote_%1.txt

call	Server_04_CopyToSVN_Weekly_SQL.bat	%2	%3
rem %~1 - Epic 8 Part 1 or Epic 8 Part 2 or ...
rem %2	- 8.1 ... 8.2

call	Server_05_SVN_Delete_N_Commit.bat	..\..\..\RP_SVN\Program_Team\DB\branches\%3\patch	..\..\..\RP_Source_Jenkins\%1\Server\ReleaseNote_%1_DB.txt
rem %1 - delete path
rem %2 - commit log file path

)


call	Server_05_Commit.bat	"..\..\..\RP_SVN\Design_Team\%~2\branches\Release\Server"	..\..\..\RP_Source_Jenkins\%1\Server\ReleaseNote_%1.txt
rem	%1	- commit svn path
rem	%2	- commit log file path


POPD
