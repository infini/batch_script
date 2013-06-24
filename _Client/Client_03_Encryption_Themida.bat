
@echo off


rem %1 - client build configuration


PUSHD %~DP0


pause


call	..\_Base\_Themida.bat	SFrame	D:\Build\Work\_Force_Build\_Default_Binary\_Client\%1	D:\Build\Work\Tool\Themida	_Default_Force_Build_Themida
ping 127.0.0.1 -n 10 > nul
