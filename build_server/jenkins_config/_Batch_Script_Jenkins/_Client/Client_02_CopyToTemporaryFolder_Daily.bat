
@echo off


rem %1 - default or stable


PUSHD %~DP0


call	..\_Base\_Copy.bat	..\..\..\RP_Source_Jenkins\%1\Client\Game\output\Debug	SFrame.exe	..\..\Temporary_Binary\Client\Debug	SFrame.exe
call	..\_Base\_Copy.bat	..\..\..\RP_Source_Jenkins\%1\Client\Game\output\Debug	SFrame.pdb	..\..\Temporary_Binary\Client\Debug	SFrame.pdb

call	..\_Base\_Copy.bat	..\..\..\RP_Source_Jenkins\%1\Client\Game\output\Debug_Release	SFrame.exe	..\..\Temporary_Binary\Client\Debug_Release	SFrame.exe
call	..\_Base\_Copy.bat	..\..\..\RP_Source_Jenkins\%1\Client\Game\output\Debug_Release	SFrame.pdb	..\..\Temporary_Binary\Client\Debug_Release	SFrame.pdb

call	..\_Base\_Copy.bat	..\..\..\RP_Source_Jenkins\%1\Client\Game\output\Release	SFrame.exe	..\..\Temporary_Binary\Client\Release	SFrame.exe
call	..\_Base\_Copy.bat	..\..\..\RP_Source_Jenkins\%1\Client\Game\output\Release	SFrame.pdb	..\..\Temporary_Binary\Client\Release	SFrame.pdb

call	..\_Base\_Copy.bat	..\..\..\RP_Source_Jenkins\%1\Client\Game\output\Release	SFrame.exe	..\..\Temporary_Binary\Client\Release_nProtect_Common	SFrame.exe
call	..\_Base\_Copy.bat	..\..\..\RP_Source_Jenkins\%1\Client\Game\output\Release	SFrame.pdb	..\..\Temporary_Binary\Client\Release_nProtect_Common	SFrame.pdb

call	..\_Base\_Copy.bat	..\..\..\RP_Source_Jenkins\%1\Client\Game\output\Release_Dev	SFrame.exe	..\..\Temporary_Binary\Client\Release_Dev	SFrame.exe
call	..\_Base\_Copy.bat	..\..\..\RP_Source_Jenkins\%1\Client\Game\output\Release_Dev	SFrame.pdb	..\..\Temporary_Binary\Client\Release_Dev	SFrame.pdb

call	..\_Base\_Copy.bat	..\..\..\RP_Source_Jenkins\%1\Client\Game\output\Release_ME	SFrame.exe	..\..\Temporary_Binary\Client\Release_nProtect_ME	SFrame.exe
call	..\_Base\_Copy.bat	..\..\..\RP_Source_Jenkins\%1\Client\Game\output\Release_ME	SFrame.pdb	..\..\Temporary_Binary\Client\Release_nProtect_ME	SFrame.pdb


POPD
