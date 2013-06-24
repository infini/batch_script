
@echo off


rem %1 - commit path
rem %2 - commit log file path


setlocal
set file=%2
set min_size=4

FOR /F "usebackq" %%A IN ('%file%') DO set size=%%~zA

IF %size% LSS %min_size% (
	svn revert %1\*.* -R
) ELSE (
	svn commit -F %2 %1
)
