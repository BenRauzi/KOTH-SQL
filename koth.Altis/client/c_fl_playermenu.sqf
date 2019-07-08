/*
	ArmA 3 King of Hill
	Code written by Sa-Matra
	Using this code without Sa-Matra's direct permission is forbidden
	
	Special build for Gamed.de
	
	Build ETYKMBSIGDHGNALL
*/
kgjjhs={if(kgkyng||kg4bsk||!isNil{if(isNull(uiNamespace getVariable "KingOfHill_PlayerMenu"))then{nil}else{true}})exitWith{};kgymt4=true;createDialog "KingOfHill_PlayerMenu";};kgz6cz={disableSerialization;private["_0a"];_0a=_this;[_0a,""]call bis_fnc_guiEffectTiles;call kgzweq;true spawn kgcm3e;};kgp6xc={};kgzweq={disableSerialization;private["_0a","_0p"];_0a=uiNamespace getVariable "KingOfHill_PlayerMenu";_0p=_0a displayCtrl kg2lwm;_0p ctrlSetStructuredText parseText format["金钱总计: <t color='#aaffaa'>%1 $</t><br/>经验总计: <t color='#%3'>%2 xp</t><br/>总游戏时间: %4",kgeu96 call kgkzn8,kg8jf4 call kgkzn8,kgvsvh,kgv82e call kgug1l];};kgcm3e={disableSerialization;private["_0a","_0p"];_0a=uiNamespace getVariable "KingOfHill_PlayerMenu";_0p=_0a displayCtrl kg51dn;waitUntil{_0p ctrlSetText format["上次保存于 %1 之前",(diag_tickTime-kga4bj)call kgug1l];call kgzweq;sleep 0.3;isNull(_0a)};};kgcj65={if((diag_tickTime-kga4bj)<3)exitWith{};call kgttgb;};