forfiles /p "%1" /m "*.exe" /s /d -%2 /c "cmd /c del @file"

forfiles /p "%1" /m "*.pdb" /s /d -%2 /c "cmd /c del @file"

forfiles /p "%1" /m "*.ptr" /s /d -%2 /c "cmd /c del @file"

forfiles /p "%1" /m vc* /s /c "cmd /c if @isdir == TRUE ( rd /S /Q @path )"
