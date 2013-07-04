
@echo off


rem %1 - default or stable
rem %2 - VS2005 or VS2010
rem %3 - temporary client name


PUSHD %~DP0


call	..\_Base\_Copy.bat	..\..\Temporary_Binary\Client\%3	SFrame.exe	..\..\..\RP_SVN\Program_Team\DailyBuild\%2\%1\Client\%3	SFrame.exe
call	..\_Base\_Copy.bat	..\..\Temporary_Binary\Client\%3	SFrame.pdb	..\..\..\RP_SVN\Program_Team\DailyBuild\%2\%1\Client\%3	SFrame.pdb


POPD
