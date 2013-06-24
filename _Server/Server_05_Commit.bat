
@echo off


rem %1 - commit svn path
rem %2 - commit log file path


PUSHD %~DP0


call	..\_Base\_SVN_Commit.bat	%1	%2
