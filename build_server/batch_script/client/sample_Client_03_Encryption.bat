
@echo off


PUSHD %~DP0

call	..\base\_NProtect.bat	SFrame	.\_temporary_folder	[ 클라이언트를 실행시킬 수 있는 리소스 경로 ]	..\..\tool\NPGEClient	22
ping 127.0.0.1 -n 5 > nul
