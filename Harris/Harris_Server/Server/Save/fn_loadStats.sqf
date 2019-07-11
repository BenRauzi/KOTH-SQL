/*
	Author: Ben Harris 
	Description: Loads the players stats
*/

Harris_loadStats = {
	params["_info"];

	_key = profileNameSpace getVariable "[kothkey2", "koth765611980996449815856235334"];
	if (isNil "_key") exitWith { diag_log "First Load: Setting Up Client Data"};
	_info = (_info select 0) select 0;

	diag_log("_____1____");
	diag_log(profileNamespace getVariable (profileNameSpace getVariable "kothkey2"));
	diag_log(profileNamespace getVariable (profileNameSpace getVariable "kothkey4"));
	profilenamespace setVariable [_key, _info];
	_key4 = profileNameSpace getVariable (profileNamespace getVariable ["kothkey4", "koth765611980996449815856235334"]);
	_key4 set[1, (profileNamespace getVariable _key) select 1]; 
	diag_log("_____2____");
	diag_log(profileNamespace getVariable (profileNameSpace getVariable "kothkey2"));
	diag_log(profileNamespace getVariable (profileNameSpace getVariable "kothkey4"));
};