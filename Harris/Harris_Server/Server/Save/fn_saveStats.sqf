/*
	Author: Ben Harris
	Description: Saves the users's stats
*/

Harris_saveStats = {
	params["_player", "_info"];

	_insertstr = format["updatePlayerInfo:%1:%2", _info, getPlayerUID _player];
	_insert = [_insertstr, 2] call MySQL_fnc_ExtDBasync;
}; 