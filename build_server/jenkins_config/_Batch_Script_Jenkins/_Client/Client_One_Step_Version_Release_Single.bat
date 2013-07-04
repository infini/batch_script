
@echo off


rem %1 - default or stable
rem %2 - VS2005 or VS2010
rem %3 - project configuration
rem %4 - temporary client name


PUSHD %~DP0


call	Client_01_RemoveTemporaryFolder.bat

call	Client_02_CopyToTemporaryFolder_Single.bat	%1	%3	%4
rem %1 - default or stable
rem %2 - project configuration
rem %3 - temporary client name


IF %4 == Release_nProtect_Common goto NPROTECT
IF %4 == Release_nProtect_ME goto NPROTECT
goto DONE



:NPROTECT
IF %2 == VS2005	call	Client_03_Encryption_NProtect_Single.bat	%1	%4	22
rem %1 - default or stable
rem %2 - temporary client name
rem %3 - nProtect method level

IF %2 == VS2010	call	Client_03_Encryption_NProtect_Single.bat	%1	%4	7
rem %1 - default or stable
rem %2 - temporary client name
rem %3 - nProtect method level

goto DONE



:DONE
call	Client_04_DigitalSign.bat

call	Client_05_CopyToSVN_Single.bat	%1	%2	%4
rem %1 - default or stable
rem %2 - VS2005 or VS2010
rem %3 - temporary client name


POPD
