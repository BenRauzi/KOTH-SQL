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

	/* diag_log("_____1____");
	diag_log(profileNamespace getVariable (profileNameSpace getVariable "kothkey2"));
	diag_log(profileNamespace getVariable (profileNameSpace getVariable "kothkey4")); */
	profilenamespace setVariable [_key, _info];
	_key4 = profileNameSpace getVariable (profileNamespace getVariable "kothkey4");
	info = ((_info select 0) select 0) select 1;
	_key4 set[1, info]; 
	/* diag_log("_____2____");
	diag_log(profileNamespace getVariable (profileNameSpace getVariable "kothkey2"));
	diag_log(profileNamespace getVariable (profileNameSpace getVariable "kothkey4")); */
};