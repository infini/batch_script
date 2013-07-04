
@echo off


rem %1 - process path
rem %2 - process name


cd %1

START /MIN /B %2

PUSHD %~DP0

exit /B 0
