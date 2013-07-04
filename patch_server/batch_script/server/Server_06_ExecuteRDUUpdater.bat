
@echo off


PUSHD %~DP0

cd D:\_Patch_Task\Work\Tool

call	D:\_Patch_Task\Work\_Batch_Base\_Execute.bat	D:\_Patch_Task\Work\Tool\DBUpdater.exe	"/PATH:D:\_Patch_Task\Work\_Server_Patch\TemporaryPatchFolder /VERSION:8.2 /ADDRESS:10.255.10.12 /PORT:1433 /NAME:Arcadia /ACCOUNT:sa /PASSWORD:45560000030058735da026fc5b77e95ad884ca7ba4a5add8d8d8d106ed14d8"

PUSHD %~DP0
