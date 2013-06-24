
@echo off


rem %1 - binary path
rem %2 - binary name
rem %3 - Themida tool path
rem %4 - Themida config file name


rem 바이너리 경로에 bak 파일 삭제
del %1\%2.bak /Q


rem 바이너리 Themida 패킹
start /w %3\Themida.exe /protect %3\%4.tmd %3\%4._ini
IF NOT ERRORLEVEL 0 pause
