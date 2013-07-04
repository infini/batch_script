
@echo off


rem %1 - default or stable
rem %2 - project output path
rem %3 - file name
rem %4 - server name


PUSHD %~DP0


call	..\_Base\_Copy.bat	..\..\..\RP_Source_Jenkins\%1\Server\%2	%3.exe	..\..\Temporary_Binary\Server\%4	%3.exe
call	..\_Base\_Copy.bat	..\..\..\RP_Source_Jenkins\%1\Server\%2	%3.pdb	..\..\Temporary_Binary\Server\%4	%3.pdb


POPD
