
@echo off


rem %1 - src path
rem %2 - src file name
rem %3 - src file ext
rem %4 - dest path



ROBOCOPY %1 %4 %2.%3 /S /COPYALL
