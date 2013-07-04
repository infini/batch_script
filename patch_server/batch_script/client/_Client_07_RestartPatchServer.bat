
@echo off


PUSHD %~DP0


SCHTASKS /Create /SC ONCE /ST 00:00 /TN RESTART_PATCHSERVER /TR "D:\_Patch_Task\Work\_Client_Patch\_Batch\Client_07_RestartPatchServer.bat" /F

SCHTASKS /Run /TN RESTART_PATCHSERVER

SCHTASKS /Delete /TN RESTART_PATCHSERVER /F
