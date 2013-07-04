
@echo off


PUSHD %~DP0

call	..\base\_SVN_Commit.bat	[ svn 경로 ]	[ release_note 파일명 (ex. ReleaseNote_default.txt ) ]	[ release_note 경로 ]
