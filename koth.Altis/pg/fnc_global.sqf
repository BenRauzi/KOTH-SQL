_fnc_create_land_target = {
	private ["_0c","_unit_type"];
	_0c = _this select 0;
	_unit_type = _this select 1;
	_0yf = if (count(_this) >2) then {_this select 2}else{0};
	_is_new = false;
	if (_0c == -1) then {_0c = (count PG_get(land_targets));_is_new = true};
	_core = PG_get(core);
	_0xn = getDir _core;
	_pos = getPos _core;
	_tdist = PG_get(target_props) select 0;
	_tspeed = PG_get(target_props) select 1;
	_tdir = PG_get(target_props) select 2;
	_grp = createGroup PG_get(opfor);
	_grp copyWaypoints PG_get(target_grp);
	_pos = if (PG_get(target_mode)<2) then {
		[(_pos select 0)+(_tdist+20)*sin(_0xn),(_pos select 1)+(_tdist+20)*cos(_0xn),0];
	}else{
		waypointPosition ((waypoints _grp) select 0)
	};
	
	
	_05b = objNull;
	if (_unit_type isKindOf "Man") then {
		_05b = _grp createUnit [_unit_type,_pos,[],0.1,"NONE"];
		switch PG_get(target_mode) do {
			case 2: {//land AI

				};
			default {
					_05b setBehaviour "CARELESS"; 
					_05b disableAI "PATHPLAN";
					_05b disableAI "MOVE";
					_05b doWatch _core;
					_05b stop true;
			};
		};
		_05b allowFleeing 0; 
		_05b disableAI "TARGET";
		_05b disableAI "AUTOTARGET";
//		_05b disableAI "ANIM";
		_05b setCombatMode "BLUE";
		switch (_0c%4) do {
			case 0: {_05b setUnitPos "UP"};
			case 1: {_05b setUnitPos "MIDDLE"};
			case 2: {_05b setUnitPos "DOWN"};
			default {_05b setUnitPos "UP"};
		};
	}else{
		_05b = createVehicle [_unit_type, _pos, [], 0, "NONE"];
		[_05b,_grp] call PG_get(fnc_create_crew);
		_05b setCombatMode "BLUE";
		_05b engineOn true;
		if !(_05b isKindOf "Plane") then {_05b flyInHeight 5;};
	};
	_05b setDir _tdir;
	{_05b removeMagazine _x} forEach magazines _05b;
	group player reveal _05b;
	//hint on hit
	_05b addEventHandler["hit","hintSilent format['""%1"" hit, damage:%2',getText(configFile >> 'cfgVehicles' >> typeof (_this select 0) >> 'displayName'),ceil((_this select 2)*100)/100]; [4,_this] call c_proving_ground_fnc_statistics"]; 
	//hint when killed
	_05b addEventHandler["killed","hintSilent format['""%1"" killed',getText(configFile >> 'cfgVehicles' >> typeof (_this select 0) >> 'displayName')];[5,_this] call c_proving_ground_fnc_statistics"];


	//hint format ["%1",[_0c,_trgname]];

	_target = [_05b,_unit_type,_grp,_0yf];
	PG_set_arr(LAND_TARGETS,_0c,_target);
	switch PG_get(target_mode) do {
		case 0: {//land static
				if (_is_new) then {
					[] call PG_get(fnc_calc_offsets);
				}else{
					[0,_0c] call PG_get(fnc_move_land_targets);
				};
			};
		case 1: {//land random
				_05b spawn PG_get(fnc_move_rand_land);
			};
	};
	_05b
};

_fnc_create_crew = {
	private["_05b","_0ya","_grp","_05d"];
	_05d = _this select 0;
	_grp = _this select 1;
	_0ya = getArray(configFile >> "cfgVehicles" >> (typeOf _05d) >> "typicalCargo");
	_target_mode = PG_get(target_mode);

	{
		_05b = (_grp createUnit [_x,[0,0,0],[],0.1,"NONE"]);
		{_05b removeMagazine _x} forEach magazines _05b;
		switch _target_mode do {
			case 2: {//land AI
					_05b doWatch PG_get(core);
				};
			case 3: {//air AI
				};
			default {
					_05b disableAI "PATHPLAN";
					_05b disableAI "MOVE";
					_05b doWatch PG_get(core);
					_05b stop true;
			};
		};
		_05b allowFleeing 0; 
		_05b disableAI "TARGET";
		_05b disableAI "AUTOTARGET";
		_05b setCombatMode "BLUE";
		switch (_forEachIndex) do {
			case 0: {_05b moveInDriver _05d};
			case 1: {_05b moveInGunner _05d};
			case 2: {_05b moveInCommander _05d};
			default {_05b moveInCargo _05d};
		};
	} forEach _0ya;
};

_fnc_create_air_target = {
	_0c = _this select 0;
	_veh_type = _this select 1;
	_04b = count PG_get(air_targets);
	if (_0c == -1) then {_0c = _04b;};
	
		
	_core = PG_get(core);
	_tdist = PG_get(target_props) select 0;
	_tspeed = PG_get(target_props) select 1;
	_tdir = PG_get(target_props) select 2;
	_0xn = getDir _core;
	_pos = getPos _core;
	_05d = createVehicle [_veh_type, [0,0,1000], [], 0, "FLY"];
	_grp = createGroup PG_get(opfor);
	_05d setDir _0xn; 
	_05d setPos [_pos select 0,_pos select 1,10]; 
	_05d engineOn true;
	_05d setVelocity [80*sin(_0xn),80*cos(_0xn),10];
	[_05d,_grp] call PG_get(fnc_create_crew);
	_05d addEventHandler ["IncomingMissile","(_this select 0) fire [""CMFlareLauncher"",""Burst""]"];
	_target = [_05d,_veh_type,_grp];
	PG_set_arr(AIR_TARGETS,_0c,_target);
	group player reveal _05d;
	_grp copyWaypoints PG_get(air_target_grp);
	_05d flyInHeight 300;

	_05d addEventHandler["hit","hintSilent format['""%1"" hit\ndamage:%2\ncrew status: %3',getText(configFile >> 'cfgVehicles' >> typeof (_this select 0) >> 'displayName'),ceil((_this select 2)*100)/100,[(_this select 0)] call {_0ya = crew (_this select 0);_crew_stat = [];{_crew_stat set [count _crew_stat, damage _x]} forEach _0ya;_crew_stat}]; "]; 
	_05d addEventHandler["killed","hintSilent format['""%1"" killed',getText(configFile >> 'cfgVehicles' >> typeof (_this select 0) >> 'displayName')];"];

	_05d
};

_fnc_move_land_targets = {
	_0tn = _this select 0;
	_move_only = _this select 1;//change position only of selected unit index, -1 - change position of all units
	_core = PG_get(core);
	_tdist = PG_get(target_props) select 0;
	_tspeed = PG_get(target_props) select 1;
	_tdir = PG_get(target_props) select 2;
	_0xn = getDir _core;
	_pos = getPos _core;
	_land_targets = if (_move_only>-1) then {[PG_get(land_targets) select _move_only]}else{PG_get(land_targets)};

	{//change unit position
		_target = _x;
		_05b = _target select 0;
		_side_offset = _0tn + (_target select 3);
		_tpos = [(_pos select 0)+_side_offset*sin(_0xn+90)+_tdist*sin(_0xn),(_pos select 1)+_side_offset*cos(_0xn+90)+_tdist*cos(_0xn),0];
		_05b setPos _tpos;
		_05b setDir _tdir;
	} forEach _land_targets;;
};

_fnc_calc_offsets = {
	_land_targets = PG_get(land_targets);
	_core = PG_get(CORE);
	_0xn = getDir _core;
	_pos = getPos _core;
	_center_offset = 0;
	_prev_size = 0;
	_betweenArray = [];
	{//calculate side offsets
		_05b = _x select 0;
		_0tp = _x select 1;
		_size = switch true do {
			case (_0tp isKindOf "man"): {1};
			case (_0tp isKindOf "air"): {12};
			default {3+abs(5*sin(_0xn-_tdir))};
		};
		_between = _size + _prev_size;
		_center_offset = _center_offset + _size;
		_betweenArray set [count _betweenArray,_between];
		_prev_size = _size;
	} forEach _land_targets;
	_side_offset = - _center_offset;
	_new_land_targets = [];
	{
		_between = _betweenArray select _forEachIndex;
		_side_offset = _side_offset + _between;
		_new_land_targets set [_forEachIndex,[_x select 0,_x select 1,_x select 2,_side_offset]];
	} forEach _land_targets;
	PG_set(land_targets,_new_land_targets);
	[0,-1] call PG_get(fnc_move_land_targets);
};

_fnc_move_rand_land = {
	_05b = _this;
	_props = PG_get(target_props);
	_tdist = _props select 0;
	_tdir = _props select 2;
	_core = PG_get(core);
	_0xn = getDir _core;
	_pos = getPos _core;
	_rprops = PG_get(target_props_rand);
	_rdist = _rprops select 0;
	_rspeed = _rprops select 1;
	_rdir = _rprops select 2;
	_PG_tdist = _05b getVariable "PG_tdist";
	switch true do {
		case ((_PG_tdist select 0)==_tdist): {};//do nothing
		default {//it is new unit or _tdist changed
			_cdist = _tdist -_rdist + random(2*_rdist);
			_05p = _tdir -_rdir + random(2*_rdir);
			_side_offset = -20+random(40);
			_tpos = [(_pos select 0)+_side_offset*sin(_0xn+90)+_cdist*sin(_0xn),(_pos select 1)+_side_offset*cos(_0xn+90)+_cdist*cos(_0xn),0];
			_05b setPos _tpos;
			_05b setDir _05p;
			if (_rspeed!=0) then {
				_0tn = _side_offset;
				_delay = 0.03;
				_shift_inc = (random(_rspeed)*_delay);
				if (random(2)>1) then {_shift_inc = -_shift_inc};
				while {((alive _05b)&&(PG_get(target_props_rand) select 1) != 0)&&(PG_get(target_mode) == 1)} do {
					sleep _delay;
					_0tn = _0tn + _shift_inc;
					if (abs(_0tn)>20) then {_shift_inc = -_shift_inc};
					_tpos = [(_pos select 0)+_0tn*sin(_0xn+90)+_cdist*sin(_0xn),(_pos select 1)+_0tn*cos(_0xn+90)+_cdist*cos(_0xn),0];
					_05b setPos _tpos;
				};
			};
		};
	};
};

PG_set(fnc_create_crew,_fnc_create_crew);
PG_set(fnc_create_land_target,_fnc_create_land_target);
PG_set(fnc_create_air_target,_fnc_create_air_target);
PG_set(fnc_calc_offsets,_fnc_calc_offsets);
PG_set(fnc_move_land_targets,_fnc_move_land_targets);
PG_set(fnc_move_rand_land,_fnc_move_rand_land);

_booster_keyhandler = 
{
	private["_0vn","_0p", "_dikCode", "_0tn", "_0un", "_0ta"];
	_0p = _this select 0;
	_dikCode = _this select 1;
	_0tn = _this select 2;
	_0un = _this select 3;
	_0ta = _this select 4;
	_0vn = false;
	if (!_0tn && !_0un && !_0ta && (_dikCode == 18)&&(vehicle player != player)) then {
			
			_0p = nil;
			_0vn = true;
			_05d = vehicle player;
			_0sa = velocity _05d;
			_pos = getPos _05d;
			_0xn = getdir _05d;
			_pitch = acos((vectorUp _05d) select 2);
			_vel_new = [((_0sa select 0) + 10*sin(_0xn)),((_0sa select 1) + 10*cos(_0xn)),((_0sa select 2) + 10*sin(_pitch))];
			_05d setVelocity _vel_new;
		};
	_0vn;
};
PG_set(booster_keyhandler,_booster_keyhandler);

pg_inheritsfrom = {
	if(_this select 0 == _this select 1) exitWith {true};
	_0ba = false;
	_01b = (if(isNil{_this select 2})then{"CfgWeapons"}else{_this select 2});
	_02b = configFile >> _01b >> (_this select 0);
	for "_i" from 0 to 4 do {
		_02b = inheritsFrom(_02b);
		if(configName(_02b) == _this select 1) exitWith {
			_0ba = true;
		};
	};
	_0ba
};

_fnc_add_weapon = {
	_0xh = _this select 0;
	_weaponCfg = (configFile >> "cfgWeapons" >> _0xh);
	_0tp = getNumber(_weaponCfg >> "type");
	if (_0tp in [1,2,4,5]) then {
		{_cWepType = [getNumber(configFile >> "cfgWeapons" >> _x >> "type")];
		if (_cWepType select 0 in [1,5]) then {_cWepType = [1,5];};
		if (_0tp in _cWepType) then {
			player removeWeapon _x;
			_current_magazines = magazines player;
			_compatible_magazines = getArray(configFile >> "cfgWeapons" >> _x >> "magazines");
			{if (_x in _compatible_magazines) then {
				player removeMagazine _x;
			};} forEach _current_magazines;
		};} forEach (weapons player);
	};
	_magazines = [];
	{
		_magazines = _magazines + getArray( (if ( _x == "this" ) then { _weaponCfg } else { _weaponCfg >> _x }) >> "magazines")
	} forEach getArray(_weaponCfg >> "muzzles");
	if (count(_magazines) > 0) then {
		player addMagazine (_magazines select 0);
	};

	switch(true) do {
		case ([_0xh, "Uniform_Base"] call pg_inheritsfrom): {
			player addUniform _0xh;
		};
		case ([_0xh, "Vest_NoCamo_Base"] call pg_inheritsfrom || [_0xh, "Vest_Camo_Base"] call pg_inheritsfrom): {
			player addVest _0xh;
		};
		case ([_0xh, "H_HelmetB"] call pg_inheritsfrom): {
			player addHeadgear _0xh;
		};
		case ([_0xh, "ItemCore"] call pg_inheritsfrom): {
			player addItem _0xh;
		};
		default {
			player addWeapon _0xh;
			player selectWeapon _0xh;
			//remove uncompatible magazines
			_compatible_magazines = [];
			{
				_compatible_magazines = _compatible_magazines + getArray(configFile >> "cfgWeapons" >> _x >> "magazines");
			} forEach (weapons player);
			{if !(_x in _compatible_magazines) then {
				player removeMagazine _x;
			};} forEach (magazines player);
			PG_set(mags,magazines player);
			PG_set(weapons,weapons player);
		};
	};
};
PG_set(fnc_add_weapon,_fnc_add_weapon);