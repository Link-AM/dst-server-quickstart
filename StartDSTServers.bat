:: Add the installation folder of your SteamCMD here in the quotes
set SteamCMD_Location="c:\steamcmd"


::_______________________________________________________________________________________

set modOverrides="test\modoverrides.lua"
set serverSetup="template\dedicated_server_mods_setup.lua"


setlocal enableDelayedExpansion

for /f delims^=^] %%a in ('findstr /r "workshop-" %modOverrides% ') do (
	set match=%%a
	(for /f delims^=^" %%b in ("!match:~13!") do (
		set wsid=%%b
		echo ServerModSetup("!wsid!"^)>> %serverSetup%
    ))
)

pause

exit


%SteamCMD_Location%"\steamcmd.exe" +login anonymous +app_update 343050 +quit
cd /D %SteamCMD_Location%"\steamapps\common\Don't Starve Together Dedicated Server\bin"
pause
start dontstarve_dedicated_server_nullrenderer -console -cluster MyDediServer -shard Master
start dontstarve_dedicated_server_nullrenderer -console -cluster MyDediServer -shard Caves
