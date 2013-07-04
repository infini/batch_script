
@echo off


rem %1 - default or stable
rem %2 - temporary client name
rem %3 - nProtect method level


PUSHD %~DP0


call	..\_Base\_NProtect.bat	..\..\Temporary_Binary\Client\%2	SFrame	..\..\Resource_%1	..\..\Tool\NPGEClient	%3
ping 127.0.0.1 -n 10 > nul


POPD
