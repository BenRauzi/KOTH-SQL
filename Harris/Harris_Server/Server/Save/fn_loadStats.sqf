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
		profileNameSpace setVariable ["kothkey2", "koth765611980996449814701716102"];
	};

	diag_log(_key);
	diag_log(profileNamespace getVariable _key);
	//profilenamespace setVariable [_key, _info];
	diag_log(profileNamespace getVariable _key);
};