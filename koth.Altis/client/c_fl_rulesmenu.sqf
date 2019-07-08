/*
	ArmA 3 King of Hill
	Code written by Sa-Matra
	Using this code without Sa-Matra's direct permission is forbidden
	
	Special build for Gamed.de
	
	Build ETYKMBSIGDHGNALL
*/
kgg11k={disableSerialization;private["_0a"];_0a=_this;[_0a,""]call bis_fnc_guiEffectTiles;(_0a displayCtrl kg2oi2)ctrlSetText kgfmtd;(_0a displayCtrl kg2oi2)ctrlShow!isStreamFriendlyUIEnabled;call kgwfcn;};kgdijb={};
#define kgwa13	"English"
kgwfcn={disableSerialization;private["_0a","_0p","_pos","_0lb"];_0a=uiNamespace getVariable "KingOfHill_Rules";_0p=_0a displayCtrl kg51tp;_pos=ctrlPosition _0p;_0lb=(if(isNil{settings_RulesText})then{{if(_x!="")exitWith{_x};}forEach[getText(missionConfigFile>>"CfgKingOfTheHillSettings">>"RulesDialog">>"RulesText">>language),getText(missionConfigFile>>"CfgKingOfTheHillSettings">>"RulesDialog">>"RulesText">>kgwa13)];}else{settings_RulesText});if(isNil{_0lb})then{_0lb="";};_0p ctrlSetStructuredText parseText _0lb;_pos set[3,ctrlTextHeight _0p];_0p ctrlSetPosition _pos;_0p ctrlCommit 0;if(_0lb=="")then{_0a closeDisplay 0;};};