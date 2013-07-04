
@echo off


PUSHD %~DP0

call	..\base\_Copy.bat	SFrame	[ 빌드된 바이너리 경로( ex. D:\RP_Source\default\Client\Game\output\Release_nProtect_Common ) ]	SFrame	.\_temporary_folder
