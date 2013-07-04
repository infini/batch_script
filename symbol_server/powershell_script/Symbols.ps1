$source_root = $args[0]
$symbol_root = $args[1]
$project = $args[2]


#cd $source_root

hgindex.cmd /debug /http /source=$source_root /symbols=$symbol_root

symstore.exe add /o /r /f $args[1] /s D:\Symbols /t "$project"
