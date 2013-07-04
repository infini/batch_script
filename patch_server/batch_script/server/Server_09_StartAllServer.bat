
@echo off


PUSHD %~DP0


call	D:\_Patch_Task\Work\_Batch_Base\_StartProcess.bat	D:\RappelzServer\LogServer	LogServer.exe
ping 127.0.0.1 -n 5 > nul

call	D:\_Patch_Task\Work\_Batch_Base\_StartProcess.bat	D:\RappelzServer\UploadServer	UploadServer.exe
ping 127.0.0.1 -n 5 > nul

call	D:\_Patch_Task\Work\_Batch_Base\_StartProcess.bat	D:\RappelzServer\PatchServer	PatchServer.exe
ping 127.0.0.1 -n 5 > nul

call	D:\_Patch_Task\Work\_Batch_Base\_StartProcess.bat	D:\RappelzServer\AuthServer	PrincessAuroraServer.exe
ping 127.0.0.1 -n 5 > nul

call	D:\_Patch_Task\Work\_Batch_Base\_StartProcess.bat	D:\RappelzServer\ServerLauncher	ServerLauncher_x64.exe
ping 127.0.0.1 -n 20 > nul


rem	call	D:\_Patch_Task\Work\_Batch_Base\_StartProcess.bat	D:\RappelzServer\GameServer\Development	CaptainHerlockServer.exe
rem	ping 127.0.0.1 -n 20 > nul

rem	8.1 game server
rem	call	D:\_Patch_Task\Work\_Batch_Base\_StartProcess.bat	D:\RappelzServer\GameServer\Release	CaptainHerlockServer.exe
rem	ping 127.0.0.1 -n 20 > nul


PUSHD %~DP0
