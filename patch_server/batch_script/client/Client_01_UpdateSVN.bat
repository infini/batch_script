
@echo off


PUSHD %~DP0


call	D:\_Patch_Task\Work\_Batch_Base\_SVN_Cleanup.bat	D:\_Patch_Task\RP_SVN\Design_Team
call	D:\_Patch_Task\Work\_Batch_Base\_SVN_Cleanup.bat	D:\_Patch_Task\RP_SVN\Program_Team

call	D:\_Patch_Task\Work\_Batch_Base\_SVN_Revert.bat	D:\_Patch_Task\RP_SVN\Design_Team
call	D:\_Patch_Task\Work\_Batch_Base\_SVN_Revert.bat	D:\_Patch_Task\RP_SVN\Program_Team

call	D:\_Patch_Task\Work\_Batch_Base\_SVN_Update.bat	D:\_Patch_Task\RP_SVN\Design_Team
call	D:\_Patch_Task\Work\_Batch_Base\_SVN_Update.bat	D:\_Patch_Task\RP_SVN\Program_Team
