
@echo off


rem %1 - binary path
rem %2 - binary name
rem %3 - resource path
rem %4 - nProtect tool path
rem %5 - nProtect method level


rem Ŭ���̾�Ʈ ���� ��ο� ���̳ʸ� ����
del %3\%2.exe /Q
del %3\%2.pdb /Q
del %3\%2.exe.bak /Q


rem Ŭ���̾�Ʈ ���� ��ο� ���̳ʸ� ����
copy /Y %1\%2.exe %3
copy /Y %1\%2.pdb %3


rem ���̳ʸ� nProtect ��ŷ
%4\NPGEClient.exe /Rappelz:rappelz!##:%5:"%3\%2.exe";"%3\%2.exe /ImmTerminate"
IF NOT %ERRORLEVEL% == 0 (
	@echo NPROTECT ERROR. ERRORLEVEL : %ERRORLEVEL%
	@echo.
	exit -1
)


rem ��ŷ�� ���̳ʸ� �۾� ��ο� ����
copy /Y %3\%2.exe %1


rem Ŭ���̾�Ʈ ���� ��ο� ���̳ʸ� ����
rem del %3\%2.exe /Q
rem del %3\%2.pdb /Q
rem del %3\%2.exe.bak /Q
