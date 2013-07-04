
@echo off


PUSHD %~DP0

call	D:\Build\Work\_Batch_Base\_Copy_StrippedSymbol.bat	PrincessAuroraServer	D:\Build\RP_Source\_Weekly_Release\default\Server\AuthServer\Release	PrincessAuroraServer	"D:\Build\RP_SVN\Design_Team\Epic 8 Part 2\branches\Release\Server"
call	D:\Build\Work\_Batch_Base\_Copy_StrippedSymbol.bat	CaptainHerlockServer	D:\Build\RP_Source\_Weekly_Release\default\Server\GameServer\x64\Release	CaptainHerlockServer	"D:\Build\RP_SVN\Design_Team\Epic 8 Part 2\branches\Release\Server"
call	D:\Build\Work\_Batch_Base\_Copy_StrippedSymbol.bat	LogServer	D:\Build\RP_Source\_Weekly_Release\default\Server\LogServer\Release	LogServer	"D:\Build\RP_SVN\Design_Team\Epic 8 Part 2\branches\Release\Server"
call	D:\Build\Work\_Batch_Base\_Copy_StrippedSymbol.bat	PatchServer	D:\Build\RP_Source\_Weekly_Release\default\Server\PatchServer\Release	PatchServer	"D:\Build\RP_SVN\Design_Team\Epic 8 Part 2\branches\Release\Server"
call	D:\Build\Work\_Batch_Base\_Copy_StrippedSymbol.bat	ServerLauncher_x64	D:\Build\RP_Source\_Weekly_Release\default\Server\ServerLauncher\x64\Release	ServerLauncher_x64	"D:\Build\RP_SVN\Design_Team\Epic 8 Part 2\branches\Release\Server"
call	D:\Build\Work\_Batch_Base\_Copy_StrippedSymbol.bat	ServerLauncher	D:\Build\RP_Source\_Weekly_Release\default\Server\ServerLauncher\Win32\Release	ServerLauncher	"D:\Build\RP_SVN\Design_Team\Epic 8 Part 2\branches\Release\Server"
call	D:\Build\Work\_Batch_Base\_Copy_StrippedSymbol.bat	UploadServer	D:\Build\RP_Source\_Weekly_Release\default\Server\UploadServer\Release	UploadServer	"D:\Build\RP_SVN\Design_Team\Epic 8 Part 2\branches\Release\Server"
