/*
	Author: Ben Harris
	Description: Saves the stats locally
	-- This required for onPauseScript in the description.ext
*/

Harris_saveStatsLocal = {
	profileNameSpace getvariable "kothkey";
	[player, profilenamespace getVariable _key] remoteExecCall ["Harris_saveStats", 2];
};