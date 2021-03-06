@echo off

::______________________________________________________________________________________________
::
::	Adjust the folder locations as necessary for the following 3 variables (after the '=').
::  Be sure to keep the quotation marks at the end of each line.


set "SteamCMD_Location=C:\steamcmd"
set "Cluster_Location=C:\Users\alexl\Documents\Klei\DoNotStarveTogether\94654202\Cluster_1"
set "DediServer_Location=C:\Users\alexl\Documents\Klei\DoNotStarveTogether\MyDediServer"





::	DO NOT EDIT ANYTHING BELOW THIS LINE!
::______________________________________________________________________________________________




echo SteamCMD Location = "%SteamCMD_Location%"
echo Cluster File Location = "%Cluster_Location%"
echo Dedicated Server Location = "%DediServer_Location%"
echo.

set "cmdDir=%SteamCMD_Location%\steamapps\common\Don't Starve Together Dedicated Server"
set "binDir=%cmdDir%\bin"
set "serverLua=%cmdDir%\mods\dedicated_server_mods_setup.lua"
set "masterLua=\Master\modoverrides.lua"
set "cavesLua=\Caves\modoverrides.lua"

::	Copy modoverrides.lua from the Master folder
echo. && echo Copy "%Cluster_Location%%masterLua%" to "%DediServer_Location%%masterLua%"
copy /b/v/y "%Cluster_Location%%masterLua%" "%DediServer_Location%%masterLua%"

::	Copy modoverrides.lua from the Caves folder
echo. && echo Copy "%Cluster_Location%%cavesLua%" to "%DediServer_Location%%cavesLua%"
copy /b/v/y "%Cluster_Location%%cavesLua%" "%DediServer_Location%%cavesLua%"

::	Replace dedicated_server_mods_setup.lua with the original blank one
echo. && echo Restore "%serverLua%" file to its original state
(
echo --There are two functions that will install mods, ServerModSetup and ServerModCollectionSetup. Put the calls to the functions in this file and they will be executed on boot.
echo.
echo --ServerModSetup takes a string of a specific mod's Workshop id. It will download and install the mod to your mod directory on boot.
echo 	--The Workshop id can be found at the end of the url to the mod's Workshop page.
echo 	--Example: http://steamcommunity.com/sharedfiles/filedetails/?id=350811795
echo 	--ServerModSetup^("350811795"^)
echo.
echo --ServerModCollectionSetup takes a string of a specific mod's Workshop id. It will download all the mods in the collection and install them to the mod directory on boot.
echo 	--The Workshop id can be found at the end of the url to the collection's Workshop page.
echo 	--Example: http://steamcommunity.com/sharedfiles/filedetails/?id=379114180
echo 	--ServerModCollectionSetup^("379114180"^)
echo.
)>"%serverLua%"
echo 	File restoration complete

:: 	Import the workshop IDs from modoverrides.lua into dedicated_server_mods_setup.lua
echo. && echo Import workshop-id's from "%DediServer_Location%%masterLua%" into "%serverLua%"
setlocal enableDelayedExpansion
set /a count = 0
for /f delims^=^] %%a in ('findstr /r "workshop-" "%DediServer_Location%%masterLua%" ') do (
	set match=%%a
	(for /f delims^=^" %%b in ("!match:~13!") do (
		set wsid=%%b
		set /a count += 1
		echo ServerModSetup("!wsid!"^)>> "%serverLua%"
    ))
)
echo 	%count% workshop-id(s) imported

::	Start the dedicated server
echo. && echo. && echo Script will now attempt start the server. && echo.
pause

%SteamCMD_Location%"\steamcmd.exe" +login anonymous +app_update 343050 +quit
cd /D %binDir%
start dontstarve_dedicated_server_nullrenderer -console -cluster MyDediServer -shard Master
start dontstarve_dedicated_server_nullrenderer -console -cluster MyDediServer -shard Caves
