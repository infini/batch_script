
@echo off


PUSHD %~DP0


call	D:\_Patch_Task\Work\_Batch_Base\_StopProcess.bat	ServerLauncher_x64.exe

call	D:\_Patch_Task\Work\_Batch_Base\_StopProcess.bat	CaptainHerlockServer.exe

call	D:\_Patch_Task\Work\_Batch_Base\_StopProcess.bat	PrincessAuroraServer.exe

call	D:\_Patch_Task\Work\_Batch_Base\_StopProcess.bat	LogServer.exe

call	D:\_Patch_Task\Work\_Batch_Base\_StopProcess.bat	UploadServer.exe

call	D:\_Patch_Task\Work\_Batch_Base\_StopProcess.bat	PatchServer.exe

ping 127.0.0.1 -n 3 > nul
