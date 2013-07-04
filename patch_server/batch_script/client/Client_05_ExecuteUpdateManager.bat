
@echo off


PUSHD %~DP0

cd D:\_Patch_Task\Work\Tool

call	D:\_Patch_Task\Work\_Batch_Base\_Execute.bat	D:\_Patch_Task\Work\Tool\UpdateManager.exe	"/TYPE:ENCODE /APP_NAME:RZ_QA /VERSION_PATH:D:\RappelzServer\PatchServer\PatchInfo /PATCH_PATH:D:\_Patch_Task\Work\_Client_Patch\TemporaryPatchFolder"

PUSHD %~DP0
