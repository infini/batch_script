
@echo off


PUSHD %~DP0

call	Client_00_Update_SVN.bat
call	Client_01_RemoveTemporaryFolder.bat
call	Client_02_CopyToTemporaryFolder.bat
call	Client_03_Encryption.bat
call	Client_04_DigitalSign.bat
call	Client_05_CopyToSVN.bat
call	Client_06_Commit.bat
