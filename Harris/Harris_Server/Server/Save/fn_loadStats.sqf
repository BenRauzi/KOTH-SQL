/*
	Author: Ben Harris 
	Description: Loads the players stats
*/

Harris_loadStats = {
	params["_info"];

	player setVariable ["dataReceived", true];

	profilenamespace getVariable ["koth765611980996449814701716102", _info];
	saveProfileNamespace;
};