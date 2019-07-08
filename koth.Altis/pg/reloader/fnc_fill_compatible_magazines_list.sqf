#include "defs.hpp"
disableSerialization;
_0c = _this select 0 select 1;

_05d = GET_SELECTED_VEHICLE;
_veh_type = GET_SELECTED_DATA(balca_loader_vehicle_list_IDC);
_0xh = GET_CTRL(balca_loader_weapon_list_IDC) lbData _0c;
_default_magazines = getArray(configFile >> "CfgVehicles" >> _veh_type >> "Turrets" >> "MainTurret" >> "magazines");
_compatible_magazines = getArray(configFile>>"CfgWeapons">>_0xh>>"magazines");

if ((_05d isKindOf "Plane")or(_05d isKindOf "Helicopter")) then {
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
};


lbClear GET_CTRL(balca_loader_compatible_magazines_IDC);
{	
	_display_name = (getText(configFile >> "CfgMagazines" >> _x >> "displayName"));
	if (_display_name=="") then {
		GET_CTRL(balca_loader_compatible_magazines_IDC) lbAdd _x;
	} else {
		GET_CTRL(balca_loader_compatible_magazines_IDC) lbAdd _display_name;
	};
	GET_CTRL(balca_loader_compatible_magazines_IDC) lbSetData [(lbSize GET_CTRL(balca_loader_compatible_magazines_IDC))-1,_x];
} forEach _compatible_magazines;

GET_CTRL(balca_loader_compatible_magazines_IDC) lbSetCurSel 0;