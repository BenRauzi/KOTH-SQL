/*
	ArmA 3 King of Hill
	Code written by Sa-Matra
	Using this code without Sa-Matra's direct permission is forbidden
	
	Special build for Gamed.de
	
	Build ETYKMBSIGDHGNALL
*/
#include "hpp\idcs.hpp"
#include "hpp\defines.hpp"
kg1rxl=kgx2q5;kgvfbp={disableSerialization;private["_0xl","_0p"];_0xl=_this;[_0xl,""]call bis_fnc_guiEffectTiles;(_0xl displayCtrl kg2byg)ctrlSetText kgfmtd;(_0xl displayCtrl kg2byg)ctrlShow!isStreamFriendlyUIEnabled;(_0xl displayCtrl kgtk51)ctrlSetChecked kgawih;(_0xl displayCtrl kg5gcf)ctrlSetChecked kgeitw;(_0xl displayCtrl kg9u1j)ctrlSetChecked kg352g;(_0xl displayCtrl kgon6b)ctrlSetChecked kg7ln8;call kgxyby;call kgp8p6;if(call kge94l)then{(_0xl displayCtrl kg1rxl)ctrlShow true;};};kgp8p6={disableSerialization;private _0a=uiNamespace getVariable["KingOfHill_Settings",displayNull];if(isNull _0a)exitWith{};{(_0a displayCtrl _x)ctrlSetText format["%1",300 max(kg3cht select _forEachIndex)];}forEach[kggjjv,kg5eis,kgla8e,kggnhd];};kgesd5={params["_0yl","_0zl"];private _06e=(((kg3cht select _0yl)+_0zl)min(switch(_0yl)do{case 0:{missionNamespace getVariable["settings_viewDistanceLimitFoot",3000]};case 1:{missionNamespace getVariable["settings_viewDistanceLimitGround",3000]};case 2:{missionNamespace getVariable["settings_viewDistanceLimitHelis",3000]};case 3:{missionNamespace getVariable["settings_viewDistanceLimitJets",5000]};}))max 0;kg3cht set[_0yl,_06e];call kgp8p6;call kgb9fq;};kgxyby={private["_0xl","_0s"];disableSerialization;_0xl=uiNamespace getVariable "KingOfHill_Settings";if(isNull(_0xl))exitWith{};_0s=format["New method updates icons each frame and requires more processing powers, old method updates icons less often and recommended when you have low FPS.<br/>Active: %1",if(kgfvug==0)then{"New method"}else{"Old method"}];(_0xl displayCtrl kgrvtp)ctrlSetStructuredText parseText _0s;};kgvf1d={kgawih=_this==1;enableEnvironment kgawih;};kguak3={kgeitw=_this==1;player setVariable["show_me_on_map",kgeitw,true];};kgjc1s={kg352g=_this==1;};kgtno8={kg7ln8=_this==1;};