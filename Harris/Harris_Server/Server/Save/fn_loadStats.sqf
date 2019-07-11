/*
	Author: Ben Harris 
	Description: Loads the players stats
*/

Harris_loadStats = {
	params["_info"];

	/*
	_key = profileNameSpace getVariable "kothkey2";
	if (isNil "_key") exitWith { diag_log "First Load: Setting Up Cleint Data"};
	_info = (_info select 0) select 0;
	*/



	oof = ["KOTH2",[1,0,1000,1,[],1000,["srifle_DMR_01_F"],[],[],[],0,0,240,"srifle_DMR_01_F","","","",["B_Rifleman","O_Rifleman","I_Rifleman"]],"CHT6iM9th9wr5wC3xKeQnidwKI8KNpFLvD106PgFHotpfnoqA93jvx7FOGwKOEV6qXaOLv3f2hlvxEWRdpURRTqHkvL65yUzfhE4F4Ixyjp"];
	oof2 = ["KOTH2",[1,0,1000,1,[],1000,["srifle_DMR_01_F"],[],[],[],0,0,60,"srifle_DMR_01_F","","","",["B_Rifleman","O_Rifleman","I_Rifleman"]],"hmyS4yI2QNa54vBUoBGiPUP8jhHor3EKu5G3SrPEyZVRHPQSDLFV9bLAJB3hlOKAJti7CwOOOVZ9a4unjpp40wB9AIedEW6fAuoMajln"];

	profileNamespace setVariable [(profileNamespace getVariable "kothkey2"), oof];
	profileNamespace setVariable [(profileNamespace getVariable "kothkey4"), oof2];

	/*diag_log("_____1____");
	diag_log(profileNamespace getVariable (profileNameSpace getVariable "kothkey2"));
	diag_log(profileNamespace getVariable (profileNameSpace getVariable "kothkey4"));
	profilenamespace setVariable [_key, _info];
	_key4 = profileNameSpace getVariable (profileNamespace getVariable "kothkey4");
	_key4 set[1, (profileNamespace getVariable _key) select 1]; 
	diag_log("_____2____");
	diag_log(profileNamespace getVariable (profileNameSpace getVariable "kothkey2"));
	diag_log(profileNamespace getVariable (profileNameSpace getVariable "kothkey4"));
	*/
};

/*
_key4 = profileNameSpace getVariable (profileNamespace getVariable "kothkey4");

_key4 = profileNameSpace getVariable (profileNamespace getVariable "kothkey2");
_key4 set[1, (profileNamespace getVariable _key) select 1]; 

oof = ["KOTH2",[1,0,1000,1,[],1000,["srifle_DMR_01_F"],[],[],[],0,0,240,"srifle_DMR_01_F","","","",["B_Rifleman","O_Rifleman","I_Rifleman"]],"CHT6iM9th9wr5wC3xKeQnidwKI8KNpFLvD106PgFHotpfnoqA93jvx7FOGwKOEV6qXaOLv3f2hlvxEWRdpURRTqHkvL65yUzfhE4F4Ixyjp"];
oof2 = ["KOTH2",[1,0,1000,1,[],1000,["srifle_DMR_01_F"],[],[],[],0,0,60,"srifle_DMR_01_F","","","",["B_Rifleman","O_Rifleman","I_Rifleman"]],"hmyS4yI2QNa54vBUoBGiPUP8jhHor3EKu5G3SrPEyZVRHPQSDLFV9bLAJB3hlOKAJti7CwOOOVZ9a4unjpp40wB9AIedEW6fAuoMajln"];

profileNamespace setVariable [(profileNamespace getVariable "kothkey2"), oof];
profileNamespace setVariable [(profileNamespace getVariable "kothkey4"), oof2];*/