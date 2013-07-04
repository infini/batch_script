
@echo off


PUSHD %~DP0


call	D:\_Patch_Task\Work\_Batch_Base\_MoveFile.bat	D:\_Patch_Task\Work\Tool	*	tpf	D:\RappelzServer\PatchServer\PatchInfo
call	D:\_Patch_Task\Work\_Batch_Base\_CopyDirectory.bat	D:\_Patch_Task\Work\_Client_Patch\TemporaryPatchFolder\Target	*	*	D:\PatchWebResource\QA
