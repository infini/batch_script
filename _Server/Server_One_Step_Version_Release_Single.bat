
@echo off


rem %1 - default or stable
rem %2 - VS2005 or VS2010
rem %3 - project output path
rem %4 - file name
rem %5 - server name


PUSHD %~DP0


call	Server_01_RemoveTemporaryFolder.bat

call	Server_02_CopyToTemporaryFolder_Single.bat	%1	%3	%4	%5
rem %1 - default or stable
rem %2 - project output path
rem %3 - file name
rem %4 - server name

call	Server_03_DigitalSign.bat

call	Server_04_CopyToSVN_Single.bat	%1	%2	%4	%5
rem %1 - default or stable
rem %2 - VS2005 or VS2010
rem %3 - file name
rem %4 - server name
