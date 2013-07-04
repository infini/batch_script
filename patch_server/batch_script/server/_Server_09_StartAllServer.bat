
@echo off


SCHTASKS /Create /SC ONCE /ST 00:00 /TN START_ALL_SERVER /TR "D:\_Patch_Task\Work\_Server_Patch\_Batch\Server_09_StartAllServer.bat" /F

SCHTASKS /Run /TN START_ALL_SERVER

SCHTASKS /Delete /TN START_ALL_SERVER /F


ping 127.0.0.1 -n 60 > nul
