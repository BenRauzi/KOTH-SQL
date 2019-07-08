#include "defs.hpp"
_05d = GET_SELECTED_VEHICLE;
_03l = GET_SELECTED_DATA(balca_loader_compatible_magazines_IDC);
_cap = [] call GFNC(get_capacity);
_index_turret = GET_SELECTED_TURRET;
if (((_cap select 0)+getNumber(configFile>>"CfgMagazines">>_03l>>"count") <= _cap select 1)or(BALCA_RELOADER_DEBUG)) then {
	if (((_05d isKindOf "Plane")or(_05d isKindOf "Helicopter"))and(_index_turret select 0 < 1)) then {
			_05d addMagazine _03l;
			_magazine_not_compatible = true;
			{if (_03l in getArray(configFile>>"CfgWeapons">>_x>>"magazines")) then
				{_magazine_not_compatible = false;};
			} forEach (weapons _05d);
			//diag_log ["_magazine_not_compatible",_magazine_not_compatible];
			if (_magazine_not_compatible) then {
				{{	if ((_magazine_not_compatible)&&(_03l in (getArray(configFile>>"CfgWeapons">>_x>>"magazines")))) then {
						_magazine_not_compatible = false;
						//diag_log format ["weapon %1",_x];
						_05d addWeapon _x;
						//diag_log format ["weapon added %1",_x];
					};
				} forEach _x;} forEach CHANGABLE_WEAPONS;
			};
	}else{
			_05d addMagazineTurret [_03l,GET_SELECTED_TURRET];
	};
};
[] call GFNC(fill_current_magazines_list);