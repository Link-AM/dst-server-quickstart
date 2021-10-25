:: Add the installation folder of your SteamCMD here in the quotes
set SteamCMD_Location="c:\steamcmd"


::_______________________________________________________________________________________


"%SteamCMD_Location%" & "\steamcmd.exe" +login anonymous +app_update 343050 +quit
cd /D "%SteamCMD_Location%" & "\steamapps\common\Don't Starve Together Dedicated Server\bin"
start dontstarve_dedicated_server_nullrenderer -console -cluster MyDediServer -shard Master
start dontstarve_dedicated_server_nullrenderer -console -cluster MyDediServer -shard Caves