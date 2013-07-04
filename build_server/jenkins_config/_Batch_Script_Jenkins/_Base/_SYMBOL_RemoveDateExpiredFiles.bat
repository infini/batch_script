
@echo off


rem %1 - path
rem %2 - day


rem forfiles /p %1 /m "*.exe" /s /d -%2 /c "cmd /c del @file"
rem forfiles /p %1 /m "*.pdb" /s /d -%2 /c "cmd /c del @file"
rem forfiles /p %1 /m "*.ptr" /s /d -%2 /c "cmd /c del @file"
rem forfiles /p %1 /m vc* /s /c "cmd /c if @isdir == TRUE ( rd /S /Q @path )"


forfiles /p %1 /m * /s /d -%2 /c "cmd /c if @isdir == TRUE ( rd /S /Q @path )"
