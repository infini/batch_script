
@echo off


rem %~1 - Epic 8 Part 1 or Epic 8 Part 2 or ...
rem %2	- 8.1 ... 8.2


PUSHD %~DP0


call	..\_Base\_CopyDirectory.bat	..\..\..\RP_SVN\Program_Team\DB\branches\%2\patch	*	*	"..\..\..\RP_SVN\Design_Team\%~1\branches\Release\Server\SQL"


call	..\_Base\_SVN_Add.bat	"..\..\..\RP_SVN\Design_Team\%~1\branches\Release\Server\SQL"	*	*


POPD
