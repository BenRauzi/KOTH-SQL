/*
	Author: Ben Harris 
	Description: Loads the players stats
*/

Harris_loadStats = {
	params["_info"];

	player setVariable ["dataReceived", true];

	_key = profileNameSpace getVariable ["kothkey2", nil];
	if (isNil "_key") then {
		_key = "koth765611980996449814701716102";
		profileNameSpace setVariable [_key, "koth765611980996449814701716102"];
	};

	profilenamespace setVariable [_key, _info];
	saveProfileNamespace;
};