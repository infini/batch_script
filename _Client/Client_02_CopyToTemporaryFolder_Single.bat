
@echo off


rem %1 - default or stable
rem %2 - project configuration
rem %3 - temporary client name


PUSHD %~DP0


call	..\_Base\_Copy.bat	..\..\..\RP_Source_Jenkins\%1\Client\Game\output\%2	SFrame.exe	..\..\Temporary_Binary\Client\%3	SFrame.exe
call	..\_Base\_Copy.bat	..\..\..\RP_Source_Jenkins\%1\Client\Game\output\%2	SFrame.pdb	..\..\Temporary_Binary\Client\%3	SFrame.pdb
