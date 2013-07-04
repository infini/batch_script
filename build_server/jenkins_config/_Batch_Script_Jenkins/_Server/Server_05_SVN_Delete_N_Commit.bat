
@echo off


rem %1 - delete path
rem %2 - commit log file path


PUSHD %~DP0


rem forfiles /p %1 /s /c "cmd /c if @isdir == FALSE ( call	D:\Build\Work\_Batch_Script_Jenkins\_Base\_SVN_Delete.bat	@path )"

call	..\_Base\_SVN_Delete.bat	%1\*.*

forfiles /p %1 /s /c "cmd /c if @isdir == TRUE ( call	D:\Build\Work\_Batch_Script_Jenkins\_Base\_RemoveDirectory.bat	@path ) else ( call	D:\Build\Work\_Batch_Script_Jenkins\_Base\_Remove.bat	@path )"
rem forfiles /p %1 /s /c "cmd /c if @isdir == TRUE ( call	D:\RP_SVN\Program_Team\Team\Common\CI_Server_Setting\build_server\jenkins_config\_Batch_Script_Jenkins\_Base\_RemoveDirectory.bat	@path )"

call	..\_Base\_SVN_Commit.bat	%1	%2

POPD
