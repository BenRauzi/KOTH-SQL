/*
	Author: Ben Harris
	Description: Main Initialisation File for the Server
*/

Harris_serverInit = {
	["KOTH", "SQL_CUSTOM", "KOTH.ini"] call MySQL_fnc_ExtDBinit;

	addMissionEventHandler ["HandleDisconnect",{ [_this select 0] remoteExecCall ["Harris_saveStats", 2];}];
};