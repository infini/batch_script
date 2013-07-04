
@echo off


PUSHD %~DP0

rem	forfiles /p "D:\_Patch_Task\RP_SVN\Design_Team\Rappelz_TestServerPatch\Server\SQL" /m "*.sql" /c "osql -Usa -Pelqldkagh -i@path"

forfiles /p "D:\_Patch_Task\RP_SVN\Design_Team\Rappelz_TestServerPatch\Server\SQL" /m "*.sql" /c "osql -Usa -E -i@path"
