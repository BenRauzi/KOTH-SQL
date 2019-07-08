#include "defs.hpp"
//diag_log "restore_loadout";
_05d = GET_SELECTED_VEHICLE;
_veh_type = GET_SELECTED_DATA(balca_loader_vehicle_list_IDC);

//hull
_current_magazines = [];
_default_magazines_hull = getArray(configFile >> "CfgVehicles" >> _veh_type >> "magazines");
if ((_05d isKindOf "Plane")or(_05d isKindOf "Helicopter")or(_05d isKindOf "Car")) then {
	_current_magazines = magazines _05d;
	{_05d removeMagazine _x;} forEach _current_magazines;
	{_05d addMagazine _x;} forEach _default_magazines_hull;
}else{
	_current_magazines = _05d magazinesTurret [-1];
	{_05d removeMagazineTurret [_x,-1];} forEach _current_magazines;
	{_05d addMagazineTurret [_x,-1];} forEach _default_magazines_hull;
};
//diag_log "restore_loadout_1";
//turrets
_0tb= configFile >> "CfgVehicles" >> _veh_type >> "Turrets";
for "_i" from 0 to (count _0tb)-1 do {
	_turret = _0tb select _i;
	_0bd = _05d weaponsTurret [_i];


	if !(isNil {_0bd select 0}) then
	{
		_current_magazines = _05d magazinesTurret [_i];
		_default_magazines = getArray(_turret >> "magazines");
		{_05d removeMagazineTurret [_x,[_i]];} forEach _current_magazines;
		{_05d addMagazineTurret [_x,[_i]];} forEach _default_magazines;
	};
	_subturrets = _turret >> "Turrets";
	for "_j" from 0 to (count _0tb)-1 do {
		_turret = _subturrets select _j;
		_0bd = _05d weaponsTurret [_i,_j];
		if !(isNil {_0bd select 0}) then
		{
			_current_magazines = _05d magazinesTurret [_i,_j];
			_default_magazines = getArray(_turret >> "magazines");
			{_05d removeMagazineTurret [_x,[_i,_j]];} forEach _current_magazines;
			{_05d addMagazineTurret [_x,[_i,_j]];} forEach _default_magazines;
		};
	};
};

[] call GFNC(fill_current_magazines_list);
//diag_log "restore_loadout_end";