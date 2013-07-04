
@echo off


rem %1 - commit message


hg.exe commit -m %1

hg.exe push
