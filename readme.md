# KOTH with SQL Install Instructions

- Install DirectX End-User Runtime from the web installer ```(https://www.microsoft.com/en-nz/download/details.aspx?id=35)```
- Install ExtDB3 - make sure to install tbbmalloc.dll and tbbmalloc_x64.dll ```(https://bitbucket.org/torndeco/extdb3/downloads/)```
    - ~~Add ```KOTH.ini``` to sql_custom~~
    - ~~Setup SQL Server Connection in ```extdb_conf.ini```~~
    - ExtDB Configuration has already been completed
- Load ```'KOTH.sql'``` as a table in database ```'KOTH'``` on your MySQL Server
- Pack``` Harris_Server``` with Mikero's PBOProject (Not PBOManager if it can be helped) and Load on Server backend
- Configure ```@koth_settings```
- ~~Add ```'[player] remoteExecCall ["Harris_initStats", 2];``` to init file BEFORE player is loaded in.~~
- ~~Add ```'onPauseScript[] = { "Harris_saveStatsLocal" };``` // When people press esc' to the BOTTOM of description.ext. if already exists add both in an array.~~

## Note:
The way this works is that variables will still be saved to the profile while ingame (these cannot be edited while playing) - then saved to the database and reloaded on the next login. This way you do not have to edit ALL your files, which means that you can be sure of the stability of the server as it does not need to be overhauled fro this system.