
@echo off


rem %1 - VS2005 or VS2010


call	Client_01_UpdateSVN.bat
call	Client_02_RemoveTemporaryFolder.bat
call	Client_03_CreateTemporaryFolder.bat
call	Client_04_CopyTemporaryFolder.bat	%1
call	Client_05_ExecuteUpdateManager.bat
call	Client_06_CopyPatchFolder.bat
call	_Client_07_RestartPatchServer.bat
call	Client_08_RemoveSVNPatchFolder.bat
call	Client_09_CommitSVNPatchFolder.bat
call	Client_02_RemoveTemporaryFolder.bat
