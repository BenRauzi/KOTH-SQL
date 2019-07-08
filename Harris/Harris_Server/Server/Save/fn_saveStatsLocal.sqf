/*
	Author: Ben Harris
	Description: Saves the stats locally
	-- This required for onPauseScript in the description.ext
*/

Harris_saveStatsLocal = {
	[player, profilenamespace getVariable "koth765611980996449814701716102"] remoteExecCall ["Harris_saveStats", 2];
};