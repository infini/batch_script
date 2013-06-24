
@echo off


rem %~1 - Epic 8 Part 1 or Epic 8 Part 2 or ...


PUSHD %~DP0


call	..\_Base\_Copy.bat	..\..\Temporary_Binary\Client\Release	SFrame.exe	"..\..\..\RP_SVN\Design_Team\%~1\branches\Release\Client"	SFrame_Release.exe
call	..\_Base\_Copy.bat	..\..\Temporary_Binary\Client\Release	SFrame.pdb	"..\..\..\RP_SVN\Design_Team\%~1\branches\Release\Client"	SFrame_Release.pdb

call	..\_Base\_Copy.bat	..\..\Temporary_Binary\Client\Release_nProtect_Common	SFrame.exe	"..\..\..\RP_SVN\Design_Team\%~1\branches\Release\Client"	SFrame_Release_nProtect_Common.exe
call	..\_Base\_Copy.bat	..\..\Temporary_Binary\Client\Release_nProtect_Common	SFrame.pdb	"..\..\..\RP_SVN\Design_Team\%~1\branches\Release\Client"	SFrame_Release_nProtect_Common.pdb

call	..\_Base\_Copy.bat	..\..\Temporary_Binary\Client\Release_nProtect_ME	SFrame.exe	"..\..\..\RP_SVN\Design_Team\%~1\branches\Release\Client"	SFrame_Release_nProtect_ME.exe
call	..\_Base\_Copy.bat	..\..\Temporary_Binary\Client\Release_nProtect_ME	SFrame.pdb	"..\..\..\RP_SVN\Design_Team\%~1\branches\Release\Client"	SFrame_Release_nProtect_ME.pdb
