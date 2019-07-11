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

	diag_log("_____1____");
	diag_log(profileNamespace getVariable (profileNameSpace getVariable "kothkey2"));
	diag_log(profileNamespace getVariable (profileNameSpace getVariable "kothkey4"));
	profilenamespace setVariable [_key, _info];
	_key4 = profileNamespace getVariable "kothkey4";
	_key4 set[1, (_info select 1)]; 
	diag_log("_____2____");
	diag_log(profileNamespace getVariable (profileNameSpace getVariable "kothkey2"));
	diag_log(profileNamespace getVariable (profileNameSpace getVariable "kothkey4"));
};