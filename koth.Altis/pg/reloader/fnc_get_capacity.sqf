#include "defs.hpp"
disableSerialization;

_05d = GET_SELECTED_VEHICLE;
_veh_type = GET_SELECTED_DATA(balca_loader_vehicle_list_IDC);
_index_turret = GET_SELECTED_TURRET;
_0xh = GET_SELECTED_DATA(balca_loader_weapon_list_IDC);
_default_magazines = [];
_current_magazines = [];
_compatible_magazines = getArray(configFile>>"CfgWeapons">>_0xh>>"magazines");


if ((_05d isKindOf "Plane")||(_05d isKindOf "Helicopter")) then {
	{	if (_0xh in _x) then {
			{_compatible_magazines = _compatible_magazines + getArray(configFile>>"CfgWeapons">>_x>>"magazines");
			}forEach _x;
		};
	} forEach CHANGABLE_WEAPONS;
	_magazines = [];
	{if !(_x in _magazines) then {
	_magazines = _magazines + [_x];
	}} forEach _compatible_magazines;
	_compatible_magazines = _magazines;
	_default_magazines = getArray(configFile >> "CfgVehicles" >> _veh_type >> "magazines");
	if (isClass(configFile >> "CfgVehicles" >> _veh_type >> "Turrets" >> "MainTurret")) then {
		_default_magazines =_default_magazines + getArray(configFile >> "CfgVehicles" >> _veh_type >> "Turrets" >> "MainTurret" >> "magazines");
	};
	_current_magazines = magazines _05d;
}else{
	if (count(configFile >> "CfgVehicles" >> _veh_type >> "Turrets") > 0) then {
		_current_magazines = GET_CURRENT_MAGAZINES_TURRET;
		_0tb = configFile >> "CfgVehicles" >> _veh_type >> "Turrets";
		_turret = _0tb select (_index_turret select 0);
		if (isNil {_index_turret select 1}) then {
				_default_magazines = getArray(_turret >> "magazines");
		}else{
			_subturrets = _turret >> "Turrets";
			_turret = _subturrets select (_index_turret select 1);
			_default_magazines = getArray(_turret >> "magazines");
		};
	};
};

_capacity_current = 0;
{	if (_x in _compatible_magazines) then {
		_capacity_current = _capacity_current + getNumber(configFile>>"CfgMagazines">>_x>>"count");
	};
} forEach _current_magazines;

_capacity_max = 0;
{if ((_compatible_magazines find _x)>-1) then {
_capacity_max = _capacity_max + getNumber(configFile>>"CfgMagazines">>_x>>"count");
};} forEach _default_magazines;

if (_05d isKindOf "StaticWeapon") then {_capacity_max = (_capacity_max*5) max 30};
_0zn = [_capacity_current,_capacity_max];
//diag_log format ["%1",_0zn];
_0zn

