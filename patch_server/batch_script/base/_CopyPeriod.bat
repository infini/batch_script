
@echo off


rem %1 - src path
rem %2 - dest path



FORFILES /P %1 /M "*.*" /D 0 /C "cmd /c COPY /Y %1\@file %2\"
