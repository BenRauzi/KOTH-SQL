/*
	ArmA 3 King of Hill
	Code written by Sa-Matra
	Using this code without Sa-Matra's direct permission is forbidden
	
	Special build for Gamed.de
	
	Build ETYKMBSIGDHGNALL
*/
#include "client\hpp\defines.hpp";
enableSaving[false,false];
kgg1ow="v9.5";
kgv7k6=(if(isNil{kgnx43})then{0}else{serverTime});
settings_gameType=kg3jls;
kgrxso=((toArray(profileName)select 0)==35);
if(kgrxso)exitWith{onMapSingleClick "(vehicle player) setPos [_pos select 0,_pos select 1,0];";};settings_infantryVersion=false;
true call compile preprocessFileLineNumbers "pg\init.sqf";true call compile preprocessFileLineNumbers "shared\sh_init.sqf";
if(isServer)then{true call compile preprocessFileLineNumbers "server_k\s_init.sqf";};
if(!isDedicated)then{true call compile preprocessFileLineNumbers "client\c_init.sqf";};BIS_initRespawn_disconnect=-1;