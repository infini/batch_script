
@echo off


rem %1 - binary path and name
rem %2 - sign tool path


%2\signtool.exe sign /f %2\rappelz.pfx /p 0000 /d "Rappelz" /du "http://www.galalab.kr" /t http://timestamp.verisign.com/scripts/timstamp.dll %1
%2\chktrust.exe -q %1
