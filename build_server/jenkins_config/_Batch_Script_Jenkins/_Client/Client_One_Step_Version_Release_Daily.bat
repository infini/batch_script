
@echo off


rem %1 - default or stable
rem %2 - VS2005 or VS2010


PUSHD %~DP0


call	Client_01_RemoveTemporaryFolder.bat

call	Client_02_CopyToTemporaryFolder_Daily.bat	%1
rem %1 - default or stable

IF %2 == VS2005	call	Client_03_Encryption_NProtect_Daily.bat	%1	22
rem %1 - default or stable
rem %2 - nProtect method level

IF %2 == VS2010	call	Client_03_Encryption_NProtect_Daily.bat	%1	7
rem %1 - default or stable
rem %2 - nProtect method level

call	Client_04_DigitalSign.bat

call	Client_05_CopyToSVN_Daily.bat	%1	%2
rem %1 - default or stable
rem %2 - VS2005 or VS2010


POPD
