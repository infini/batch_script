
@echo off


PUSHD %~DP0

call	..\base\_NProtect.bat	SFrame	.\_temporary_folder	[ Ŭ���̾�Ʈ�� �����ų �� �ִ� ���ҽ� ��� ]	..\..\tool\NPGEClient	22
ping 127.0.0.1 -n 5 > nul
