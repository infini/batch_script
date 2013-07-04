
@echo off


PUSHD %~DP0


call	D:\_Patch_Task\Work\_Batch_Base\_MakeDirectory.bat	D:\_Patch_Task\Work\_Client_Patch\TemporaryPatchFolder

ping 127.0.0.1 -n 3 > nul
