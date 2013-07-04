
@echo off


rem %1 - default or stable
rem %2 - nProtect method level


PUSHD %~DP0


call	..\_Base\_NProtect.bat	..\..\Temporary_Binary\Client\Release_nProtect_Common	SFrame	..\..\Resource_%1	..\..\Tool\NPGEClient	%2
ping 127.0.0.1 -n 10 > nul

call	..\_Base\_NProtect.bat	..\..\Temporary_Binary\Client\Release_nProtect_ME	SFrame	..\..\Resource_%1	..\..\Tool\NPGEClient	%2
ping 127.0.0.1 -n 10 > nul


POPD
