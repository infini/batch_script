
@echo off


PUSHD %~DP0

call	D:\Build\Work\_Batch_Base\_DigitalSign.bat	PrincessAuroraServer	"D:\Build\RP_SVN\Design_Team\Epic 8 Part 2\branches\Release\Server"	D:\Build\Work\Tool\DigitalSign
call	D:\Build\Work\_Batch_Base\_DigitalSign.bat	CaptainHerlockServer	"D:\Build\RP_SVN\Design_Team\Epic 8 Part 2\branches\Release\Server"	D:\Build\Work\Tool\DigitalSign
call	D:\Build\Work\_Batch_Base\_DigitalSign.bat	LogServer	"D:\Build\RP_SVN\Design_Team\Epic 8 Part 2\branches\Release\Server"	D:\Build\Work\Tool\DigitalSign
call	D:\Build\Work\_Batch_Base\_DigitalSign.bat	PatchServer	"D:\Build\RP_SVN\Design_Team\Epic 8 Part 2\branches\Release\Server"	D:\Build\Work\Tool\DigitalSign
call	D:\Build\Work\_Batch_Base\_DigitalSign.bat	ServerLauncher_x64	"D:\Build\RP_SVN\Design_Team\Epic 8 Part 2\branches\Release\Server"	D:\Build\Work\Tool\DigitalSign
call	D:\Build\Work\_Batch_Base\_DigitalSign.bat	ServerLauncher	"D:\Build\RP_SVN\Design_Team\Epic 8 Part 2\branches\Release\Server"	D:\Build\Work\Tool\DigitalSign
call	D:\Build\Work\_Batch_Base\_DigitalSign.bat	UploadServer	"D:\Build\RP_SVN\Design_Team\Epic 8 Part 2\branches\Release\Server"	D:\Build\Work\Tool\DigitalSign
