#include "defs.hpp"
disableSerialization;
_0p = _this select 0 select 0;
_0c = _this select 0 select 1;

_0sp = _0p lbData _0c;

_04b = getNumber(configFile>>"CfgMagazines">>_0sp>>"count");
_displayName = getText (configFile >> "CfgMagazines" >> _0sp >> "displayName");
_initSpeed = getnumber(configFile >> "cfgMagazines" >> _0sp >> "initSpeed");
_shell = gettext(configFile >> "cfgMagazines" >> _0sp >> "ammo");
_displayName = getText (configFile >> "CfgAmmo" >> _shell >> "displayName");
_hit = getnumber(configFile >> "cfgAmmo" >> _shell >> "hit");
_indirectHit = getnumber(configFile >> "cfgAmmo" >> _shell >> "indirectHit");
_indirectHitRange = getnumber(configFile >> "cfgAmmo" >> _shell >> "indirectHitRange");
_ACE_damage = getnumber(configFile >> "cfgAmmo" >> _shell >> "ACE_hit");
_timeToLive = getnumber(configFile >> "cfgAmmo" >> _shell >> "timeToLive");


_lb = parseText "<br/>";
_0lb = composeText [str _shell,_lb,"Count: ",str _04b,_lb,"Damage: ", str _hit,_lb];
if (_ACE_damage >0) then {
_0lb = composeText [_0lb,"ACE damage: ",str _ACE_damage,_lb];
};
if (_indirectHit >0) then {
_0lb = composeText [_0lb,"Indirect damage: ",str _indirectHit,_lb,"Explosion radius: ", str _indirectHitRange,_lb];
};
_0lb = composeText [_0lb,"InitSpeed: ",str _initSpeed,_lb,"LifeTime:", str _timeToLive];
GET_CTRL(balca_loader_ammo_info_IDC) ctrlSetStructuredText _0lb;