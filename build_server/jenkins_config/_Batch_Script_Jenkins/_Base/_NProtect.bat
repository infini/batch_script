
@echo off


rem %1 - binary path
rem %2 - binary name
rem %3 - resource path
rem %4 - nProtect tool path
rem %5 - nProtect method level


rem 클라이언트 실행 경로에 바이너리 삭제
del %3\%2.exe /Q
del %3\%2.pdb /Q
del %3\%2.exe.bak /Q


rem 클라이언트 실행 경로에 바이너리 복사
copy /Y %1\%2.exe %3
copy /Y %1\%2.pdb %3


rem 바이너리 nProtect 패킹
%4\NPGEClient.exe /Rappelz:rappelz!##:%5:"%3\%2.exe";"%3\%2.exe /ImmTerminate"
IF NOT %ERRORLEVEL% == 0 (
	@echo NPROTECT ERROR. ERRORLEVEL : %ERRORLEVEL%
	@echo.
	exit -1
)


rem 패킹된 바이너리 작업 경로에 복사
copy /Y %3\%2.exe %1


rem 클라이언트 실행 경로에 바이너리 삭제
rem del %3\%2.exe /Q
rem del %3\%2.pdb /Q
rem del %3\%2.exe.bak /Q
