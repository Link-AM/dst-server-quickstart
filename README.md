# dst-server-quickstart

### This batch file automates the task of copying modoverrides.lua files into the dedicated server directory, and then importing the workshop-ids for each mod into the dedicated_server_mods_setup.lua

### *NOTE*: This process is for Windows operating systems only!

## Instructions:
1. Follow steps 1-5 from Klei's [Dedicated Server Quick Setup Guide - Windows](https://forums.kleientertainment.com/forums/topic/64212-dedicated-server-quick-setup-guide-windows/) to setup **SteamCMD** and **MyDediServer**.

2. Open Steam and start Don't Starve Together.  Click Host Game and setup a new game with any mods you want enabled.  Once the server is started, exit out and go back to Host Game.  Find your new server and click the folder icon to get the the folder location of your 'cluster'
![Open Steam and go to Host Game](https://github.com/Link-AM/dst-server-quickstart/blob/main/.img/hostgame.PNG)
<br/>

3. [Download](https://github.com/Link-AM/dst-server-quickstart/archive/refs/heads/main.zip) and unzip or clone this git repository to obtain the new *StartDSTServers.bat* file.
<br/>

4. Right click > Edit *StartDSTServers.bat* and adjust the three variables as necessary (be sure to keep the quotation marks at the end of each line), then save it wherever you'd like.
![Yes thats my Steam ID. Add me!](https://github.com/Link-AM/dst-server-quickstart/blob/main/.img/locations.PNG)
<br/>

5. Close your text editor and double click StartDSTServers.bat to start your server.
![Thats it!](https://github.com/Link-AM/dst-server-quickstart/blob/main/.img/script.PNG)
