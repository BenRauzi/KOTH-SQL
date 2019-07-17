# KOTH with SQL Install Instructions

- Install DirectX End-User Runtime from the web installer ```(https://www.microsoft.com/en-nz/download/details.aspx?id=35)```
    - You may also need to individually install Visual C++ Redistributables
- Install ExtDB3 - make sure to install tbbmalloc.dll and tbbmalloc_x64.dll ```(https://bitbucket.org/torndeco/extdb3/downloads/)```
    - ~~Add ```KOTH.ini``` to sql_custom~~
    - ~~Setup SQL Server Connection in ```extdb_conf.ini```~~
    - ExtDB Configuration has already been completed
- Load ```'KOTH.sql'``` as a table in database ```'KOTH'``` on your MySQL Server
- Pack``` Harris_Server``` with Mikero's PBOProject (Not PBOManager if it can be helped) and Load on Server backend
    - Optional: Pack ```server_k.pbo``` in ```Harris``` folder
- Configure ```@koth_settings```
- ~~Add ```'[player] remoteExecCall ["Harris_initStats", 2];``` to init file BEFORE player is loaded in.~~
- ~~Add ```'onPauseScript[] = { "Harris_saveStatsLocal" };``` // When people press esc' to the BOTTOM of description.ext. if already exists add both in an array.~~

## Note:
The way this works is that variables will still be saved to the profile while ingame (these cannot be edited while playing) - then saved to the database and reloaded on the next login. This way you do not have to edit ALL your files, which means that you can be sure of the stability of the server as it does not need to be overhauled fro this system.

#### Note 2:

~~~I was not sure of how you wanted me to configure it because you did not say (Which is why I originally left it up to you to configure). So they way I have done it is if they have KOTH data saved to their account already it will use this data as their original data, then save/load all future data from the database, regardless of changes to their client data. It will still save to the client's memory while the game is active, but then be saved to the database and be loaded again when they reconnect next.~~~

## Important Note:

Make sure you full  reinstall the files. This is because the new version requires a mission AND server pbo update. ```(server_k.pbo)``` - You should delete the ```kingoh_serv.pbo``` and replace with ```server_k.pbo```