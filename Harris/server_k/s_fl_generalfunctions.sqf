/*
	ArmA 3 King of Hill
	Code written by Sa-Matra
	Using this code without Sa-Matra's direct permission is forbidden
	
	Special build for Gamed.de
	
	Build ETYKMBSIGDHGNALL
*/
#include "defines.hpp"
kgkq1c={diag_log text format["KOTH :: %1",_this];};kgas69={(format["Class = %1, Crew = %2, owner = %3, local = %4",typeOf _this,crew _this,owner _this,local _this])call kgkq1c;};kg1xgw={_this=toArray(format["%1",_this]);_this set[0,32];_this set[count _this-1,32];_this=toString _this;private "_0ga";_0ga="EmptyDetector" createVehicleLocal[0,0,0];_0ga setTriggerArea[0,0,0,false];_0ga setTriggerStatements[_this,"",""];_0ga};kgqyc3={private["_0ba"];_0ba=false;{if((_x distance(_this select 0))<(_this select 1))exitWith{_0ba=true;};}forEach playableUnits;_0ba};kga22h={for "_i" from 0 to count(kgubgt)-1 do{if({if((_x select 0)distance _this<(_x select 1))exitWith{1};}count[[kghznt select _i,kgh5it],[kgmksk select _i,kg6rhv]]!=0)exitWith{true};false};};kgjmpk={private["_i"];_i=kgubgt find(_this select 1);if({if((_x select 0)distance(_this select 0)<(_x select 1))exitWith{1};}count[[kghznt select _i,kgh5it],[kgmksk select _i,kg6rhv]]!=0)exitWith{true};false};kg8p54={private _0o=_x getVariable["body",objNull];isPlayer _0o||alive(_0o getVariable["revive_player",objNull]);};kgr4rm={private["_0yb","_m","_0zb"];_0yb=floor(_this/3600);_m=floor((_this%3600)/60);_0zb=floor(_this%60);if(_0zb<10)then{_0zb=format["0%1",_0zb]}else{_0zb};if(_m<10)then{_m=format["0%1",_m]}else{_m};if(_0yb>0)then{format["%1:%2:%3",_0yb,_m,_0zb];}else{format["%1:%2",_m,_0zb];};};