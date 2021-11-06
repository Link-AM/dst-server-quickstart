# dst-server-quickstart

### This batch file automates the task of copying modoverrides.lua files into the dedicated server directory, and then importing the workshop-ids for each mod into the dedicated_server_mods_setup.lua

## Instructions:
#### NOTE: Steps 1-5 taken from [Klei's Dedicated Server Quick Setup Guide - Windows](https://forums.kleientertainment.com/forums/topic/64212-dedicated-server-quick-setup-guide-windows/). If you have done this already then skip to [step 6](#this-is-where-steps-differ-from-kleis-instructions)

1. Download and install SteamCMD: [Click here to download](https://developer.valvesoftware.com/wiki/SteamCMD) 
<br/>

2. Visit the [Klei Accounts site](https://accounts.klei.com/login) and log in to your account. (Please note, Dedicated Servers are not supported for the Xbox and PlayStation versions of the game.) 
![](https://cdn.forums.klei.com/monthly_2021_05/2_login_ku.png.880a5609e4bd8d55d66f227a893465a5.png)
<br/>

3. On the accounts page, visit the “GAMES” tab, then scroll down to Don’t Starve Together and click on the “Game Servers” button. 
![](https://cdn.forums.klei.com/monthly_2021_05/3_gameservers.png.041c3e36c550874cbb6e45f80bb6a3d3.png)
<br/>

4. If you don’t have any server yet, please click the “ADD NEW SERVER” button. If you have a valid server, click the green “CONFIGURE” button. Expired servers are colored in red and should be deleted. 
![](https://cdn.forums.klei.com/monthly_2019_09/add_new_server.jpg.6f5da1d4b49158ee001c90dce017d6d9.jpg)
<br/>

5. In the “Configure Server” page you will find a form with some options that you can edit to customize your server. Once you are ready, click the “Download Settings” button. Download the Zip archive, extract the content, and place the folder “MyDediServer” inside \\Documents\Klei\DoNotStarveTogether\. 
![](https://cdn.forums.klei.com/monthly_2019_09/configure_server.jpg.bf9cc3c0e1eff75340d2f5191353dee2.jpg)
![](https://cdn.forums.klei.com/monthly_2019_09/mydediserver.png.8eebe8f3dea4d9b681f79f51f9a979ae.png)
<br/>

#### This is where steps differ from Klei's instructions
6. Open Steam and start Don't Starve Together.  Click Host Game and setup a new game with any mods you want enabled.  Once the server is started, exit out and go back to Host Game.  Find your new server and click the folder icon to get the the folder location of your 'cluster'
![Open Steam and go to Host Game](https://github.com/Link-AM/dst-server-quickstart/blob/main/img/hostgame.PNG)
<br/>

7. [Download](https://github.com/Link-AM/dst-server-quickstart/archive/refs/heads/main.zip) or clone this git repository.
<br/>

8. Right click > Edit the StartDSTServers.bat and adjust the three variables as necessary.  Be sure to keep the quotation marks at the end of each line.  Save it.  
![Yes thats my Steam ID. Add me!](https://github.com/Link-AM/dst-server-quickstart/blob/main/img/locations.PNG)
<br/>

8. Close your text editor and double click StartDSTServers.bat to start your server.
![Thats it!](https://github.com/Link-AM/dst-server-quickstart/blob/main/img/script.PNG)
