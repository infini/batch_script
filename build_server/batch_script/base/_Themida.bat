
@echo off


rem %~1 - 바이너리 이름
rem %~2 - 바이너리 경로
rem %~3 - Themida 바이너리 경로
rem %~4 - Themida 설정 파일 이름


rem 바이너리 경로에 bak 파일 삭제
del %2\%1.bak /Q


rem 바이너리 Themida 패킹
start /w %3\Themida.exe /protect %3\%4.tmd %3\%4._ini
IF NOT ERRORLEVEL 0 pause
