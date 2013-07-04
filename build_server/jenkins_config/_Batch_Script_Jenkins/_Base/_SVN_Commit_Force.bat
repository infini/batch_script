
@echo off


rem %1 - commit path
rem %2 - commit log file path


svn commit -F %2 %1
