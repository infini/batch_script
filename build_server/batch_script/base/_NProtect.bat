
@echo off


rem %~1 - 바이너리 이름
rem %~2 - 바이너리 경로
rem %~3 - 클라이언트 실행 경로
rem %~4 - nProtect 바이너리 경로
rem %~5 - nProtect method level


rem 클라이언트 실행 경로에 바이너리 삭제
del %3\%1.exe /Q
del %3\%1.pdb /Q
del %3\%1.exe.bak /Q


rem 클라이언트 실행 경로에 바이너리 복사
copy /Y %2\%1.exe %3
copy /Y %2\%1.pdb %3


rem 바이너리 nProtect 패킹
%4\NPGEClient.exe /Rappelz:rappelz!##:%5:"%3\%1.exe";"%3\%1.exe /ImmTerminate"
IF NOT ERRORLEVEL 0 pause


rem 패킹된 바이너리 작업 경로에 복사
copy /Y %3\%1.exe %2


rem 클라이언트 실행 경로에 바이너리 삭제
rem del %3\%1.exe /Q
rem del %3\%1.pdb /Q
rem del %3\%1.exe.bak /Q
