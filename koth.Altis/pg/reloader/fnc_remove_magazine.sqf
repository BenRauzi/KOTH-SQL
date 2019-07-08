#include "defs.hpp"

_05d = GET_SELECTED_VEHICLE;
_03l = GET_SELECTED_DATA(balca_loader_current_magazines_IDC);
_index_turret = GET_SELECTED_TURRET;
if (((_05d isKindOf "Plane")or(_05d isKindOf "Helicopter"))and(_index_turret select 0 < 1)) then {
	_05d removeMagazine _03l
}else{
	_05d removeMagazineTurret [_03l,_index_turret];
};
[] call GFNC(fill_current_magazines_list);