/*
	Author: Ben Harris
	Description: Checks if the player exists, if they do initialise stats and if they don't then set stats and restart.
*/

Harris_initStats = {
	params["_player"];

	_checkstr = format ["existPlayerInfo:%1", getPlayerUID _player];
	_check = [0, _checkstr] call MySQL_fnc_ExtDBquery;

	_doesExist = (_check select 0) select 0;

	if !(_doesExist) then {
		_insertstr = format["insertPlayerInfo:%1:%2", getPlayerUID _player, "Stats not yet saved"];
		_insert = [_insertstr, 2] call MySQL_fnc_ExtDBasync;
	} else {
		_infoStr = format["playerInfo:%1", getPlayerUID _player];
		_info = [_infoStr, 2] call MySQL_fnc_ExtDBasync;

		[_info] remoteExec ["Harris_loadStats", _player];
	};
};