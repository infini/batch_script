
@echo off


rem %1 - VS2005 or VS2010


PUSHD %~DP0


call	D:\_Patch_Task\Work\_Batch_Base\_CopyFile.bat	D:\_Patch_Task\RP_SVN\Program_Team\DailyBuild\%1\default\Server\AuthServer	*	*	D:\RappelzServer\AuthServer

call	D:\_Patch_Task\Work\_Batch_Base\_CopyFile.bat	D:\_Patch_Task\RP_SVN\Program_Team\DailyBuild\%1\default\Server\GameServer	*	*	D:\RappelzServer\GameServer\Development

call	D:\_Patch_Task\Work\_Batch_Base\_CopyFile.bat	D:\_Patch_Task\RP_SVN\Program_Team\DailyBuild\%1\default\Server\GameServer	*	*	D:\RappelzServer\GameServer\Release

call	D:\_Patch_Task\Work\_Batch_Base\_CopyFile.bat	D:\_Patch_Task\RP_SVN\Program_Team\DailyBuild\%1\stable\Server\GameServer	*	*	D:\RappelzServer\GameServer\Maintenance

call	D:\_Patch_Task\Work\_Batch_Base\_CopyFile.bat	D:\_Patch_Task\RP_SVN\Program_Team\DailyBuild\%1\default\Server\LogServer	*	*	D:\RappelzServer\LogServer

call	D:\_Patch_Task\Work\_Batch_Base\_CopyFile.bat	D:\_Patch_Task\RP_SVN\Program_Team\DailyBuild\%1\default\Server\PatchServer	*	*	D:\RappelzServer\PatchServer

call	D:\_Patch_Task\Work\_Batch_Base\_CopyFile.bat	D:\_Patch_Task\RP_SVN\Program_Team\DailyBuild\%1\default\Server\ServerLauncher	ServerLauncher_x64	*	D:\RappelzServer\ServerLauncher

call	D:\_Patch_Task\Work\_Batch_Base\_CopyFile.bat	D:\_Patch_Task\RP_SVN\Program_Team\DailyBuild\%1\default\Server\UploadServer	*	*	D:\RappelzServer\UploadServer


call	D:\_Patch_Task\Work\_Batch_Base\_CopyFile.bat	D:\_Patch_Task\RP_SVN\Design_Team\Rappelz_TestServerPatch\Server\NewMap	*	*	D:\RappelzServer\GameServer\Development\Resource\NewMap

call	D:\_Patch_Task\Work\_Batch_Base\_CopyFile.bat	D:\_Patch_Task\RP_SVN\Design_Team\Rappelz_TestServerPatch\Server\Script	*	*	D:\RappelzServer\GameServer\Development\Resource\Script
