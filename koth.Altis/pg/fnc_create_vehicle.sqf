#include "defs.hpp"
#define GET_DISPLAY (findDisplay balca_debug_VC_IDD)
#define GET_CTRL(a) (GET_DISPLAY displayCtrl ##a)
#define GET_SELECTED_DATA(a) ([##a] call {_0ha = _this select 0;_selection = (lbSelection GET_CTRL(_0ha) select 0);if (isNil {_selection}) then {_selection = 0};(GET_CTRL(_0ha) lbData _selection)})
#define KINDOF_ARRAY(a,b) [##a,##b] call {_05d = _this select 0;_types = _this select 1;_res = false; {if (_05d isKindOf _x) exitwith { _res = true };} forEach _types;_res}

_mode = _this select 0;
_veh_type = _this select 1;
if(isNil{_veh_type}) then {_veh_type = -1;};
switch (_mode) do {
case 0: {

		_kindOf = ["tank"];
		_filter = [];
		switch (_veh_type) do {
			case 0: {_kindOf = ["staticWeapon"];};
			case 1: {_kindOf = ["car","Motorcycle"];_filter = ["Truck_F","Wheeled_APC_F"];};
			case 2: {_kindOf = ["Truck_F"];};
			case 3: {_kindOf = ["Wheeled_APC_F","Tracked_APC"];};
			case 4: {_kindOf = ["tank"];_filter = ["Wheeled_APC_F", "Tracked_APC"];};
			case 5: {_kindOf = ["helicopter"];_filter = ["ParachuteBase"];};
			case 6: {_kindOf = ["plane"];_filter = ["ParachuteBase"];};
			case 7: {_kindOf = ["ship"];};
			default {_kindOf = ["tank"];_filter = [];};
		};
		_cfgvehicles = configFile >> "cfgVehicles";
		lbClear GET_CTRL(balca_VC_vehlist_IDC);
		for "_i" from 0 to (count _cfgvehicles)-1 do {
			_0f = _cfgvehicles select _i;
			if (isClass _0f) then {
				_veh_type = configName(_0f);
				if ((getNumber(_0f >> "scope")==2)and(getText(_0f >> "picture")!="")and(KINDOF_ARRAY(_veh_type,_kindOf))and!(KINDOF_ARRAY(_veh_type,_filter))) then {
					GET_CTRL(balca_VC_vehlist_IDC) lbAdd (getText(_0f >> "displayName"));
					GET_CTRL(balca_VC_vehlist_IDC) lbSetData [(lbSize GET_CTRL(balca_VC_vehlist_IDC))-1,_veh_type];
					GET_CTRL(balca_VC_vehlist_IDC) lbSetPicture [(lbSize GET_CTRL(balca_VC_vehlist_IDC))-1,getText(_0f >> "picture")];
				};
			};
		};
		lbSort GET_CTRL(balca_VC_vehlist_IDC);
	};
case 1: {
		_veh_type = GET_SELECTED_DATA(balca_VC_vehlist_IDC);
		GET_CTRL(balca_VC_vehicle_shortcut_IDC) ctrlSetText (getText(configFile >> "CfgVehicles" >> _veh_type >> "picture"));
		_0f = (configFile >> "CfgVehicles" >> _veh_type);
		_displayName = getText(_0f >> "displayName");
		_armor = getNumber(_0f >> "armor");
		_maxSpeed = getNumber(_0f >> "maxSpeed");
		_0bd =  getArray(_0f >> "weapons");
		_magazines = getArray(_0f >> "magazines");
		_0tb= (_0f >> "Turrets");
		for "_i" from 0 to (count _0tb)-1 do {
			_turret = _0tb select _i;
			_0bd = _0bd + getArray(_turret >> "weapons");
			_magazines = _magazines + getArray(_turret >> "magazines");
			_subturrets = _turret >> "Turrets";
			for "_j" from 0 to (count _subturrets)-1 do {
				_turret = _subturrets select _j;
				_0bd = _0bd + getArray(_turret >> "weapons");
				_magazines = _magazines + getArray(_turret >> "magazines");
			};
		};
		_lb = parseText "<br/>";
		_0lb = composeText [str configName(_0f),_lb,
			"DisplayName: ",str _displayName,_lb,
			"Armor: ", str _armor,_lb,
			"MaxSpeed: ", str _maxSpeed,_lb,
			"Weapons: ", str _0bd,_lb,
			"Magazines: ", str _magazines,_lb];
		GET_CTRL(balca_VC_veh_info_IDC) ctrlSetStructuredText _0lb;
	};
case 2: {
/*		_old_veh = PG_get(VEH);
		_core = PG_get(CORE);
		_0xn = getDir _core;
		_pos = getPos _core;
		_veh_type = GET_SELECTED_DATA(balca_VC_vehlist_IDC);
		deleteVehicle _old_veh;
		_05d = createVehicle [_veh_type, _pos, [], 0, "CAN_COLLIDE"];
		_05d setDir _0xn;
		PG_set(VEH,_05d);*/
	};

case 3: {
		_0xn = getdir player;
		_pos = getPos player;
		_pos = [(_pos select 0)+20*sin(_0xn),(_pos select 1)+20*cos(_0xn),0];
		_veh_type = GET_SELECTED_DATA(balca_VC_vehlist_IDC);
		/*_old_veh = nearestObjects [_pos, ["AllVehicles"], 5];
		{deleteVehicle _x} forEach _old_veh;*/
		_05d = createVehicle [_veh_type, _pos, [], 0, "CAN_COLLIDE"];
		_05d setDir _0xn;
		//publicVar_requestVehicleSpawn = [player, _veh_type, _pos, _0xn];
		//publicVariableServer "publicVar_requestVehicleSpawn";
	};

case 4: {//class to clipboard
	copyToClipboard (""""+GET_SELECTED_DATA(balca_VC_vehlist_IDC)+"""");
	};

case 5: {//detailed info to clipboard
	copyToClipboard ctrlText GET_CTRL(balca_VC_veh_info_IDC);
	};
}
