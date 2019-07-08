/*
  Author: Ben Harris
  Description: Initialises All Functions for Client and Server
*/

if (!isMultiplayer || isServer) then {
	Init_Function_List = ["serverInit", "clientInit"];
	Init_Functions = ["Functions", "Init", "Harris", Init_Function_List, "Client"];//Main Folder, Sub Folder, Function Tag, Function List, Scope

	Save_Function_List = ["initStats", "loadStats", "saveStats", "saveStatsLocal"];
	Save_Functions = ["Server", "Save", "Harris", Save_Function_List, "Client"]; //Main Folder, Sub Folder, Function Tag, Function List, Scope

	Functions_List = [Init_Functions, Save_Functions];

	{
		_dir = format["\Harris_Server\%1\%2", _x select 0, _x select 1];
		_tag = _x select 2;
		_scope = _x select 4;
		{
			_file = format["%1\fn_%2.sqf", _dir, _x];
			[] call compile preprocessFileLineNumbers _file; //Could move this to compileFinal for security, however call compile allows more flexibility
			if (_scope == "Client") then {
				publicVariable format["%1_%2", _tag, _x];
				diag_log format["%1_%2 Loaded", _tag, _x];
			};
		} forEach (_x select 3);
	} forEach Functions_List;

	[] call Harris_serverInit;
};