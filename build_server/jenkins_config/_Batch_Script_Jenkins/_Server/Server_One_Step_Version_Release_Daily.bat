
@echo off


rem %1 - default or stable
rem %2 - VS2005 or VS2010


PUSHD %~DP0


call	Server_01_RemoveTemporaryFolder.bat

call	Server_02_CopyToTemporaryFolder_Daily.bat	%1
rem %1 - default or stable

call	Server_03_DigitalSign.bat

call	Server_04_CopyToSVN_Daily.bat	%2	%1
rem	%1 - VS2005 or VS2010
rem	%2 - default or stable


POPD
