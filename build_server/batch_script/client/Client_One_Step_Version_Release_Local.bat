
@echo off


PUSHD %~DP0

call	Client_01_RemoveTemporaryFolder.bat
call	Client_02_CopyToTemporaryFolder.bat
call	Client_03_Encryption.bat
call	Client_04_DigitalSign.bat
