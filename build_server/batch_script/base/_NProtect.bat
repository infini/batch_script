
@echo off


rem %~1 - ���̳ʸ� �̸�
rem %~2 - ���̳ʸ� ���
rem %~3 - Ŭ���̾�Ʈ ���� ���
rem %~4 - nProtect ���̳ʸ� ���
rem %~5 - nProtect method level


rem Ŭ���̾�Ʈ ���� ��ο� ���̳ʸ� ����
del %3\%1.exe /Q
del %3\%1.pdb /Q
del %3\%1.exe.bak /Q


rem Ŭ���̾�Ʈ ���� ��ο� ���̳ʸ� ����
copy /Y %2\%1.exe %3
copy /Y %2\%1.pdb %3


rem ���̳ʸ� nProtect ��ŷ
%4\NPGEClient.exe /Rappelz:rappelz!##:%5:"%3\%1.exe";"%3\%1.exe /ImmTerminate"
IF NOT ERRORLEVEL 0 pause


rem ��ŷ�� ���̳ʸ� �۾� ��ο� ����
copy /Y %3\%1.exe %2


rem Ŭ���̾�Ʈ ���� ��ο� ���̳ʸ� ����
rem del %3\%1.exe /Q
rem del %3\%1.pdb /Q
rem del %3\%1.exe.bak /Q
