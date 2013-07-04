
@echo off


PUSHD %~DP0

call	..\base\_Copy.bat	SFrame	.\_temporary_folder	[ 변경할 파일명( ex.SFrame_Release_nProtect_Common ) ]	[ svn경로 ]
