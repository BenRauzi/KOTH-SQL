/*
	ArmA 3 King of Hill
	Code written by Sa-Matra
	Using this code without Sa-Matra's direct permission is forbidden
	
	Special build for Gamed.de
	
	Build ETYKMBSIGDHGNALL
*/
kg5tli={disableSerialization;private["_0a"];_0a=_this;(_0a displayCtrl kgrc1y)ctrlSetText kgfmtd;(_0a displayCtrl kgrc1y)ctrlShow!isStreamFriendlyUIEnabled;(_0a displayCtrl kgoaw2)ctrlShow false;(_0a displayCtrl kg9i4v)ctrlShow false;call kgqrbx;};kgdfwx={};kgfynt={private["_id","_0zc"];_id=_this getVariable["koh_owner",0];if(_id==0)exitWith{false};_0zc=player getVariable["groups_invites",[]];_id in _0zc;};kgi7eh={private["_0zc"];_0zc=player getVariable["groups_invites",[]];(player getVariable["koh_owner",0])in _0zc;};kgqrbx={disableSerialization;private["_0a","_0p"];_0a=uiNamespace getVariable "KingOfHill_Groups";_0p=_0a displayCtrl kgd21c;lbClear _0p;{}forEach(kgnine);};kgu88z={};kgm5ra={disableSerialization;private["_0a","_0p"];_0a=uiNamespace getVariable "KingOfHill_Groups";_0p=_0a displayCtrl kgd21c;};