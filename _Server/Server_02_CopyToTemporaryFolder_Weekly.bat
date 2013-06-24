
@echo off


rem %1 - default or stable


PUSHD %~DP0


call	..\_Base\_Copy.bat	..\..\..\RP_Source_Jenkins\%1\Server\AuthServer\Release	PrincessAuroraServer.exe	..\..\Temporary_Binary\Server\AuthServer	PrincessAuroraServer.exe
call	..\_Base\_Copy.bat	..\..\..\RP_Source_Jenkins\%1\Server\AuthServer\Release	PrincessAuroraServer_STRIPPED.pdb	..\..\Temporary_Binary\Server\AuthServer	PrincessAuroraServer.pdb

call	..\_Base\_Copy.bat	..\..\..\RP_Source_Jenkins\%1\Server\GameServer\x64\Release	CaptainHerlockServer.exe	..\..\Temporary_Binary\Server\GameServer	CaptainHerlockServer.exe
call	..\_Base\_Copy.bat	..\..\..\RP_Source_Jenkins\%1\Server\GameServer\x64\Release	CaptainHerlockServer_STRIPPED.pdb	..\..\Temporary_Binary\Server\GameServer	CaptainHerlockServer.pdb

call	..\_Base\_Copy.bat	..\..\..\RP_Source_Jenkins\%1\Server\LogServer\Release	LogServer.exe	..\..\Temporary_Binary\Server\LogServer	LogServer.exe
call	..\_Base\_Copy.bat	..\..\..\RP_Source_Jenkins\%1\Server\LogServer\Release	LogServer_STRIPPED.pdb	..\..\Temporary_Binary\Server\LogServer	LogServer.pdb

call	..\_Base\_Copy.bat	..\..\..\RP_Source_Jenkins\%1\Server\PatchServer\Release	PatchServer.exe	..\..\Temporary_Binary\Server\PatchServer	PatchServer.exe
call	..\_Base\_Copy.bat	..\..\..\RP_Source_Jenkins\%1\Server\PatchServer\Release	PatchServer_STRIPPED.pdb	..\..\Temporary_Binary\Server\PatchServer	PatchServer.pdb

call	..\_Base\_Copy.bat	..\..\..\RP_Source_Jenkins\%1\Server\ServerLauncher\Win32\Release	ServerLauncher.exe	..\..\Temporary_Binary\Server\ServerLauncher	ServerLauncher.exe
call	..\_Base\_Copy.bat	..\..\..\RP_Source_Jenkins\%1\Server\ServerLauncher\Win32\Release	ServerLauncher_STRIPPED.pdb	..\..\Temporary_Binary\Server\ServerLauncher	ServerLauncher.pdb

call	..\_Base\_Copy.bat	..\..\..\RP_Source_Jenkins\%1\Server\ServerLauncher\x64\Release	ServerLauncher_x64.exe	..\..\Temporary_Binary\Server\ServerLauncher	ServerLauncher_x64.exe
call	..\_Base\_Copy.bat	..\..\..\RP_Source_Jenkins\%1\Server\ServerLauncher\x64\Release	ServerLauncher_x64_STRIPPED.pdb	..\..\Temporary_Binary\Server\ServerLauncher	ServerLauncher_x64.pdb

call	..\_Base\_Copy.bat	..\..\..\RP_Source_Jenkins\%1\Server\UploadServer\Release	UploadServer.exe	..\..\Temporary_Binary\Server\UploadServer	UploadServer.exe
call	..\_Base\_Copy.bat	..\..\..\RP_Source_Jenkins\%1\Server\UploadServer\Release	UploadServer_STRIPPED.pdb	..\..\Temporary_Binary\Server\UploadServer	UploadServer.pdb
