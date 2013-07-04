
@echo off


rem %1 - file path


setlocal

set file=%1
set min_size=10

FOR /F "usebackq" %%A IN ('%file%') DO set size=%%~zA

IF %size% LSS %min_size% (
	@echo please check the release note.
	@echo.
	exit /B -1
) ELSE (
	type %1
	@echo.
	exit /B 0
)

endlocal
