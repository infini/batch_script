
@echo off


rem %1 - VS2005 or VS2010


PUSHD %~DP0


call	D:\_Patch_Task\Work\_Batch_Base\_CopyPeriod.bat	D:\_Patch_Task\RP_SVN\Design_Team\Rappelz_TestServerPatch\Client	D:\_Patch_Task\Work\_Client_Patch\TemporaryPatchFolder

call	D:\_Patch_Task\Work\_Batch_Base\_CopyFile.bat	D:\_Patch_Task\RP_SVN\Program_Team\DailyBuild\%1\default\Client\Release_Dev	*	exe	D:\_Patch_Task\Work\_Client_Patch\TemporaryPatchFolder
