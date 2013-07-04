
@echo off


PUSHD %~DP0

taskkill /F /IM "PatchServer.exe" /T

cd D:\RappelzServer\PatchServer

START /MIN /B PatchServer.exe

PUSHD %~DP0

ping 127.0.0.1 -n 3 > nul

exit /B 0
