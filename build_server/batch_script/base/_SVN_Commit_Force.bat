
@echo off


rem %~1 - commit path
rem %~2 - commit log file name
rem %~3 - commit log file path


svn commit -F %3\%2 %1
