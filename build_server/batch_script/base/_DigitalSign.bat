
@echo off


rem %~1 - ���̳ʸ� �̸�
rem %~2 - ���̳ʸ� ���
rem %~3 - ������ ���� ���


%3\signtool.exe sign /f %3\rappelz.pfx /p 0000 /d "Rappelz" /du "http://www.galalab.kr" /t http://timestamp.verisign.com/scripts/timstamp.dll %2\%1.exe
%3\chktrust.exe -q %2\%1.exe
