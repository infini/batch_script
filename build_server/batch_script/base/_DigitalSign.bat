
@echo off


rem %~1 - 바이너리 이름
rem %~2 - 바이너리 경로
rem %~3 - 디지털 서명 경로


%3\signtool.exe sign /f %3\rappelz.pfx /p 0000 /d "Rappelz" /du "http://www.galalab.kr" /t http://timestamp.verisign.com/scripts/timstamp.dll %2\%1.exe
%3\chktrust.exe -q %2\%1.exe
