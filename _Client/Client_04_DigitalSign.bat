
@echo off


PUSHD %~DP0


FORFILES /P ..\..\Temporary_Binary\Client /M *.exe /S /C "cmd /c call D:\Build\Work\_Batch_Script_Jenkins\_Base\_DigitalSign.bat @path D:\Build\Work\Tool\DigitalSign"
