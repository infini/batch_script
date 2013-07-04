
@echo off


PUSHD %~DP0

call	Server_00_Update_SVN.bat
call	Server_01_CopyToSVN.bat
call	Server_02_DigitalSign.bat
call	Server_03_Commit.bat
