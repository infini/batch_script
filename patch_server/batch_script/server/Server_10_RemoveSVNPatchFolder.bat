
@echo off


PUSHD %~DP0


call	D:\_Patch_Task\Work\_Batch_Base\_SVN_Delete.bat	D:\_Patch_Task\RP_SVN\Design_Team\Rappelz_TestServerPatch\Server\NewMap
call	D:\_Patch_Task\Work\_Batch_Base\_RemoveFile.bat	D:\_Patch_Task\RP_SVN\Design_Team\Rappelz_TestServerPatch\Server\NewMap	*	*

call	D:\_Patch_Task\Work\_Batch_Base\_SVN_Delete.bat	D:\_Patch_Task\RP_SVN\Design_Team\Rappelz_TestServerPatch\Server\RDU
call	D:\_Patch_Task\Work\_Batch_Base\_RemoveFile.bat	D:\_Patch_Task\RP_SVN\Design_Team\Rappelz_TestServerPatch\Server\RDU	*	*

call	D:\_Patch_Task\Work\_Batch_Base\_SVN_Delete.bat	D:\_Patch_Task\RP_SVN\Design_Team\Rappelz_TestServerPatch\Server\Script
call	D:\_Patch_Task\Work\_Batch_Base\_RemoveFile.bat	D:\_Patch_Task\RP_SVN\Design_Team\Rappelz_TestServerPatch\Server\Script	*	*

call	D:\_Patch_Task\Work\_Batch_Base\_SVN_Delete.bat	D:\_Patch_Task\RP_SVN\Design_Team\Rappelz_TestServerPatch\Server\SQL
call	D:\_Patch_Task\Work\_Batch_Base\_RemoveFile.bat	D:\_Patch_Task\RP_SVN\Design_Team\Rappelz_TestServerPatch\Server\SQL	*	*
