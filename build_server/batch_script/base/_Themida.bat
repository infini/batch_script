
@echo off


rem %~1 - ���̳ʸ� �̸�
rem %~2 - ���̳ʸ� ���
rem %~3 - Themida ���̳ʸ� ���
rem %~4 - Themida ���� ���� �̸�


rem ���̳ʸ� ��ο� bak ���� ����
del %2\%1.bak /Q


rem ���̳ʸ� Themida ��ŷ
start /w %3\Themida.exe /protect %3\%4.tmd %3\%4._ini
IF NOT ERRORLEVEL 0 pause
