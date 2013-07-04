
@echo off


PUSHD %~DP0

call	..\base\_NProtect.bat	SFrame	.\_temporary_folder	D:\Project_RP\resource\Rappelz_QA_Local	..\..\tool\NPGEClient	22
ping 127.0.0.1 -n 5 > nul
