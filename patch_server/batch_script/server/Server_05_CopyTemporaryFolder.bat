
@echo off


PUSHD %~DP0


call	D:\_Patch_Task\Work\_Batch_Base\_CopyFile.bat	D:\_Patch_Task\RP_SVN\Design_Team\Rappelz_TestServerPatch\Server\RDU	*	rdu	D:\_Patch_Task\Work\_Server_Patch\TemporaryPatchFolder
