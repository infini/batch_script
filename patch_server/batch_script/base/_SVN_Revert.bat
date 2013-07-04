
@echo off


rem %~1 - revert path


svn revert %1\*.* -R
