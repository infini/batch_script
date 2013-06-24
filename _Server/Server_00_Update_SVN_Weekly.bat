
@echo off


PUSHD %~DP0


call	..\_Base\_SVN_Cleanup.bat	..\..\..\RP_SVN\Design_Team

call	..\_Base\_SVN_Revert.bat	..\..\..\RP_SVN\Design_Team

call	..\_Base\_SVN_Update.bat	..\..\..\RP_SVN\Design_Team
