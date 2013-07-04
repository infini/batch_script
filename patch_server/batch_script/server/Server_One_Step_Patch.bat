
@echo off


rem %1 - VS2005 or VS2010


call	Server_01_UpdateSVN.bat
call	Server_02_StopAllServer.bat
call	Server_03_RemoveTemporaryFolder.bat
call	Server_04_CreateTemporaryFolder.bat
call	Server_05_CopyTemporaryFolder.bat
call	Server_06_ExecuteRDUUpdater.bat
call	Server_07_ExecuteSQLScript.bat
call	Server_08_CopyPatchFolder.bat	%1
call	_Server_09_StartAllServer.bat
call	Server_10_RemoveSVNPatchFolder.bat
call	Server_11_CommitSVNPatchFolder.bat
