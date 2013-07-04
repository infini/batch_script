
@echo off


rem %1 - default or stable


PUSHD %~DP0


call	..\_Base\_Copy.bat	..\..\..\RP_Source_Jenkins\%1\Server\AuthServer\Debug	PrincessAuroraServer.exe	..\..\Temporary_Binary\Server\AuthServer	PrincessAuroraServer.exe
call	..\_Base\_Copy.bat	..\..\..\RP_Source_Jenkins\%1\Server\AuthServer\Debug	PrincessAuroraServer.pdb	..\..\Temporary_Binary\Server\AuthServer	PrincessAuroraServer.pdb

call	..\_Base\_Copy.bat	..\..\..\RP_Source_Jenkins\%1\Server\GameServer\x64\Debug	CaptainHerlockServer.exe	..\..\Temporary_Binary\Server\GameServer	CaptainHerlockServer.exe
call	..\_Base\_Copy.bat	..\..\..\RP_Source_Jenkins\%1\Server\GameServer\x64\Debug	CaptainHerlockServer.pdb	..\..\Temporary_Binary\Server\GameServer	CaptainHerlockServer.pdb

call	..\_Base\_Copy.bat	..\..\..\RP_Source_Jenkins\%1\Server\LogServer\Debug	LogServer.exe	..\..\Temporary_Binary\Server\LogServer	LogServer.exe
call	..\_Base\_Copy.bat	..\..\..\RP_Source_Jenkins\%1\Server\LogServer\Debug	LogServer.pdb	..\..\Temporary_Binary\Server\LogServer	LogServer.pdb

call	..\_Base\_Copy.bat	..\..\..\RP_Source_Jenkins\%1\Server\PatchServer\Debug	PatchServer.exe	..\..\Temporary_Binary\Server\PatchServer	PatchServer.exe
call	..\_Base\_Copy.bat	..\..\..\RP_Source_Jenkins\%1\Server\PatchServer\Debug	PatchServer.pdb	..\..\Temporary_Binary\Server\PatchServer	PatchServer.pdb

call	..\_Base\_Copy.bat	..\..\..\RP_Source_Jenkins\%1\Server\ServerLauncher\Win32\Debug	ServerLauncher.exe	..\..\Temporary_Binary\Server\ServerLauncher	ServerLauncher.exe
call	..\_Base\_Copy.bat	..\..\..\RP_Source_Jenkins\%1\Server\ServerLauncher\Win32\Debug	ServerLauncher.pdb	..\..\Temporary_Binary\Server\ServerLauncher	ServerLauncher.pdb

call	..\_Base\_Copy.bat	..\..\..\RP_Source_Jenkins\%1\Server\ServerLauncher\x64\Debug	ServerLauncher_x64.exe	..\..\Temporary_Binary\Server\ServerLauncher	ServerLauncher_x64.exe
call	..\_Base\_Copy.bat	..\..\..\RP_Source_Jenkins\%1\Server\ServerLauncher\x64\Debug	ServerLauncher_x64.pdb	..\..\Temporary_Binary\Server\ServerLauncher	ServerLauncher_x64.pdb

call	..\_Base\_Copy.bat	..\..\..\RP_Source_Jenkins\%1\Server\UploadServer\Debug	UploadServer.exe	..\..\Temporary_Binary\Server\UploadServer	UploadServer.exe
call	..\_Base\_Copy.bat	..\..\..\RP_Source_Jenkins\%1\Server\UploadServer\Debug	UploadServer.pdb	..\..\Temporary_Binary\Server\UploadServer	UploadServer.pdb


POPD
