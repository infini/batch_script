
@echo off


rem %1 - binary path
rem %2 - binary name
rem %3 - Themida tool path
rem %4 - Themida config file name


rem ���̳ʸ� ��ο� bak ���� ����
del %1\%2.bak /Q


rem ���̳ʸ� Themida ��ŷ
start /w %3\Themida.exe /protect %3\%4.tmd %3\%4._ini
IF NOT ERRORLEVEL 0 pause
