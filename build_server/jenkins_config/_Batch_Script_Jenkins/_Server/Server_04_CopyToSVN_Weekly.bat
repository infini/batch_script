
@echo off


rem %~1 - Epic 8 Part 1 or Epic 8 Part 2 or ...


PUSHD %~DP0


call	..\_Base\_Copy.bat	..\..\Temporary_Binary\Server\AuthServer	PrincessAuroraServer.exe	"..\..\..\RP_SVN\Design_Team\%~1\branches\Release\Server"	PrincessAuroraServer.exe
call	..\_Base\_Copy.bat	..\..\Temporary_Binary\Server\AuthServer	PrincessAuroraServer.pdb	"..\..\..\RP_SVN\Design_Team\%~1\branches\Release\Server"	PrincessAuroraServer.pdb

call	..\_Base\_Copy.bat	..\..\Temporary_Binary\Server\GameServer	CaptainHerlockServer.exe	"..\..\..\RP_SVN\Design_Team\%~1\branches\Release\Server"	CaptainHerlockServer.exe
call	..\_Base\_Copy.bat	..\..\Temporary_Binary\Server\GameServer	CaptainHerlockServer.pdb	"..\..\..\RP_SVN\Design_Team\%~1\branches\Release\Server"	CaptainHerlockServer.pdb

call	..\_Base\_Copy.bat	..\..\Temporary_Binary\Server\LogServer	LogServer.exe	"..\..\..\RP_SVN\Design_Team\%~1\branches\Release\Server"	LogServer.exe
call	..\_Base\_Copy.bat	..\..\Temporary_Binary\Server\LogServer	LogServer.pdb	"..\..\..\RP_SVN\Design_Team\%~1\branches\Release\Server"	LogServer.pdb

call	..\_Base\_Copy.bat	..\..\Temporary_Binary\Server\PatchServer	PatchServer.exe	"..\..\..\RP_SVN\Design_Team\%~1\branches\Release\Server"	PatchServer.exe
call	..\_Base\_Copy.bat	..\..\Temporary_Binary\Server\PatchServer	PatchServer.pdb	"..\..\..\RP_SVN\Design_Team\%~1\branches\Release\Server"	PatchServer.pdb

call	..\_Base\_Copy.bat	..\..\Temporary_Binary\Server\ServerLauncher	ServerLauncher.exe	"..\..\..\RP_SVN\Design_Team\%~1\branches\Release\Server"	ServerLauncher.exe
call	..\_Base\_Copy.bat	..\..\Temporary_Binary\Server\ServerLauncher	ServerLauncher.pdb	"..\..\..\RP_SVN\Design_Team\%~1\branches\Release\Server"	ServerLauncher.pdb

call	..\_Base\_Copy.bat	..\..\Temporary_Binary\Server\ServerLauncher	ServerLauncher_x64.exe	"..\..\..\RP_SVN\Design_Team\%~1\branches\Release\Server"	ServerLauncher_x64.exe
call	..\_Base\_Copy.bat	..\..\Temporary_Binary\Server\ServerLauncher	ServerLauncher_x64.pdb	"..\..\..\RP_SVN\Design_Team\%~1\branches\Release\Server"	ServerLauncher_x64.pdb

call	..\_Base\_Copy.bat	..\..\Temporary_Binary\Server\UploadServer	UploadServer.exe	"..\..\..\RP_SVN\Design_Team\%~1\branches\Release\Server"	UploadServer.exe
call	..\_Base\_Copy.bat	..\..\Temporary_Binary\Server\UploadServer	UploadServer.pdb	"..\..\..\RP_SVN\Design_Team\%~1\branches\Release\Server"	UploadServer.pdb


POPD
