#include "defs.hpp"
#define GET_DISPLAY (findDisplay balca_sound_player_IDD)
#define GET_CTRL(a) (GET_DISPLAY displayCtrl ##a)
#define GET_SELECTED_DATA(a) ([##a] call {_0ha = _this select 0;_selection = (lbSelection GET_CTRL(_0ha) select 0);if (isNil {_selection}) then {_selection = 0};(GET_CTRL(_0ha) lbData _selection)})


_mode = _this select 0;
switch (_mode) do {
case 0: {//fill sound list
	_cfgsounds = configFile >> "cfgSounds";
	lbClear GET_CTRL(balca_soundlist_IDC);
	for "_i" from 0 to (count _cfgsounds)-1 do {
		_0yj = _cfgsounds select _i;
		if (isClass _0yj) then {
			_soundName = configName(_0yj);
			_titles = getArray(_0yj >> "Titles");
			if (count _titles > 1) then {
				GET_CTRL(balca_soundlist_IDC) lbAdd (_soundName + "  " + (_titles select 1));
			}else{
				GET_CTRL(balca_soundlist_IDC) lbAdd _soundName;
			};
			GET_CTRL(balca_soundlist_IDC) lbSetData [(lbSize GET_CTRL(balca_soundlist_IDC))-1,_soundName];
			};
		};
		lbSort GET_CTRL(balca_soundlist_IDC);		
	};
case 1: {//play
	deleteVehicle PG_get(SOUNDSOURCE);
	PG_set(SOUNDSOURCE,"camera" createVehicle getPosATL player);
	PG_get(SOUNDSOURCE) say GET_SELECTED_DATA(balca_soundlist_IDC);
	};

case 2: {//clipboard
	copyToClipboard (""""+GET_SELECTED_DATA(balca_soundlist_IDC)+"""");
	};
};