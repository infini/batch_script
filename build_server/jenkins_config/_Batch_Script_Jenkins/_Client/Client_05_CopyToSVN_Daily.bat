
@echo off


rem %1 - default or stable
rem %2 - VS2005 or VS2010


PUSHD %~DP0


call	..\_Base\_Copy.bat	..\..\Temporary_Binary\Client\Debug	SFrame.exe	..\..\..\RP_SVN\Program_Team\DailyBuild\%2\%1\Client\Debug	SFrame.exe
call	..\_Base\_Copy.bat	..\..\Temporary_Binary\Client\Debug	SFrame.pdb	..\..\..\RP_SVN\Program_Team\DailyBuild\%2\%1\Client\Debug	SFrame.pdb

call	..\_Base\_Copy.bat	..\..\Temporary_Binary\Client\Debug_Release	SFrame.exe	..\..\..\RP_SVN\Program_Team\DailyBuild\%2\%1\Client\Debug_Release	SFrame.exe
call	..\_Base\_Copy.bat	..\..\Temporary_Binary\Client\Debug_Release	SFrame.pdb	..\..\..\RP_SVN\Program_Team\DailyBuild\%2\%1\Client\Debug_Release	SFrame.pdb

call	..\_Base\_Copy.bat	..\..\Temporary_Binary\Client\Release	SFrame.exe	..\..\..\RP_SVN\Program_Team\DailyBuild\%2\%1\Client\Release	SFrame.exe
call	..\_Base\_Copy.bat	..\..\Temporary_Binary\Client\Release	SFrame.pdb	..\..\..\RP_SVN\Program_Team\DailyBuild\%2\%1\Client\Release	SFrame.pdb

call	..\_Base\_Copy.bat	..\..\Temporary_Binary\Client\Release_Dev	SFrame.exe	..\..\..\RP_SVN\Program_Team\DailyBuild\%2\%1\Client\Release_Dev	SFrame.exe
call	..\_Base\_Copy.bat	..\..\Temporary_Binary\Client\Release_Dev	SFrame.pdb	..\..\..\RP_SVN\Program_Team\DailyBuild\%2\%1\Client\Release_Dev	SFrame.pdb

call	..\_Base\_Copy.bat	..\..\Temporary_Binary\Client\Release_nProtect_Common	SFrame.exe	..\..\..\RP_SVN\Program_Team\DailyBuild\%2\%1\Client\Release_nProtect_Common	SFrame.exe
call	..\_Base\_Copy.bat	..\..\Temporary_Binary\Client\Release_nProtect_Common	SFrame.pdb	..\..\..\RP_SVN\Program_Team\DailyBuild\%2\%1\Client\Release_nProtect_Common	SFrame.pdb

call	..\_Base\_Copy.bat	..\..\Temporary_Binary\Client\Release_nProtect_ME	SFrame.exe	..\..\..\RP_SVN\Program_Team\DailyBuild\%2\%1\Client\Release_nProtect_ME	SFrame.exe
call	..\_Base\_Copy.bat	..\..\Temporary_Binary\Client\Release_nProtect_ME	SFrame.pdb	..\..\..\RP_SVN\Program_Team\DailyBuild\%2\%1\Client\Release_nProtect_ME	SFrame.pdb


POPD
