
@echo off


rem %~1 - src file
rem %~2 - src path
rem %~3 - dest file
rem %~4 - dest path



copy /Y %2\%1.exe %4\%3.exe
copy /Y %2\%1.pdb %4\%3.pdb
