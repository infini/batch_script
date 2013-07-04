
@echo off


rem %1 - VS2005 or VS2010
rem %2 - default or stable


PUSHD %~DP0


call	..\_Base\_Copy.bat	..\..\Temporary_Binary\Server\AuthServer	PrincessAuroraServer.exe	..\..\..\RP_SVN\Program_Team\DailyBuild\%1\%2\Server\AuthServer	PrincessAuroraServer.exe
call	..\_Base\_Copy.bat	..\..\Temporary_Binary\Server\AuthServer	PrincessAuroraServer.pdb	..\..\..\RP_SVN\Program_Team\DailyBuild\%1\%2\Server\AuthServer	PrincessAuroraServer.pdb

call	..\_Base\_Copy.bat	..\..\Temporary_Binary\Server\GameServer	CaptainHerlockServer.exe	..\..\..\RP_SVN\Program_Team\DailyBuild\%1\%2\Server\GameServer	CaptainHerlockServer.exe
call	..\_Base\_Copy.bat	..\..\Temporary_Binary\Server\GameServer	CaptainHerlockServer.pdb	..\..\..\RP_SVN\Program_Team\DailyBuild\%1\%2\Server\GameServer	CaptainHerlockServer.pdb

call	..\_Base\_Copy.bat	..\..\Temporary_Binary\Server\LogServer	LogServer.exe	..\..\..\RP_SVN\Program_Team\DailyBuild\%1\%2\Server\LogServer	LogServer.exe
call	..\_Base\_Copy.bat	..\..\Temporary_Binary\Server\LogServer	LogServer.pdb	..\..\..\RP_SVN\Program_Team\DailyBuild\%1\%2\Server\LogServer	LogServer.pdb

call	..\_Base\_Copy.bat	..\..\Temporary_Binary\Server\PatchServer	PatchServer.exe	..\..\..\RP_SVN\Program_Team\DailyBuild\%1\%2\Server\PatchServer	PatchServer.exe
call	..\_Base\_Copy.bat	..\..\Temporary_Binary\Server\PatchServer	PatchServer.pdb	..\..\..\RP_SVN\Program_Team\DailyBuild\%1\%2\Server\PatchServer	PatchServer.pdb

call	..\_Base\_Copy.bat	..\..\Temporary_Binary\Server\ServerLauncher	ServerLauncher.exe	..\..\..\RP_SVN\Program_Team\DailyBuild\%1\%2\Server\ServerLauncher	ServerLauncher.exe
call	..\_Base\_Copy.bat	..\..\Temporary_Binary\Server\ServerLauncher	ServerLauncher.pdb	..\..\..\RP_SVN\Program_Team\DailyBuild\%1\%2\Server\ServerLauncher	ServerLauncher.pdb

call	..\_Base\_Copy.bat	..\..\Temporary_Binary\Server\ServerLauncher	ServerLauncher_x64.exe	..\..\..\RP_SVN\Program_Team\DailyBuild\%1\%2\Server\ServerLauncher	ServerLauncher_x64.exe
call	..\_Base\_Copy.bat	..\..\Temporary_Binary\Server\ServerLauncher	ServerLauncher_x64.pdb	..\..\..\RP_SVN\Program_Team\DailyBuild\%1\%2\Server\ServerLauncher	ServerLauncher_x64.pdb

call	..\_Base\_Copy.bat	..\..\Temporary_Binary\Server\UploadServer	UploadServer.exe	..\..\..\RP_SVN\Program_Team\DailyBuild\%1\%2\Server\UploadServer	UploadServer.exe
call	..\_Base\_Copy.bat	..\..\Temporary_Binary\Server\UploadServer	UploadServer.pdb	..\..\..\RP_SVN\Program_Team\DailyBuild\%1\%2\Server\UploadServer	UploadServer.pdb


POPD
