
@echo off


SETLOCAL


SET HOUR=%TIME:~0,2%

IF "%HOUR:~0,1%" == " " SET HOUR=0%HOUR:~1,1%

SET T=%HOUR%%TIME:~3,2%%TIME:~6,2%

rem SET D=%DATE:~0,4%-%DATE:~5,2%-%DATE:~8,2%
SET D=%DATE:~0,4%%DATE:~5,2%%DATE:~8,2%

rem SET DATETIME=%D%_%T%

SET DATETIME=%D%

@echo %DATETIME%

EXIT /B %DATETIME%


ENDLOCAL
