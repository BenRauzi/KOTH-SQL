/*
	Author: Ben Harris
	Description: Saves the stats locally
	-- This required for onPauseScript in the description.ext
*/

Harris_saveStatsLocal = {
	missionNamespace setVariable["kgmn4v",true];
	_key = profileNameSpace getvariable "kothkey2";
	[player, profilenamespace getVariable _key] remoteExecCall ["Harris_saveStats", 2];
};