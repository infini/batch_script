
@echo off


PUSHD %~DP0

call	..\base\_SVN_Commit.bat	[ svn ��� ]	[ release_note ���ϸ� (ex. ReleaseNote_default.txt ) ]	[ release_note ��� ]
