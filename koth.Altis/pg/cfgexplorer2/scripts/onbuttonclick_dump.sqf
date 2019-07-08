#include "macros.hpp"
scriptname "onBC_dump.sqf";
private ["_lbIDC", "_outputIDC", "_size", "_outText", "_crlf"];
_curConfig = CurrentConfig;
hint format ["%1",[_curConfig]];
_lbIDC = 110;
_outputIDC = 113;
_size = lbSize 110;
_outText = "";
_0xp = "	";
_crlf = "
";

_parseEnrty = {
	_entry = _this select 0;
	_needClass = _this select 1;
	_0ba = [];
	for "_i" from 0 to (count _entry)-1 do {
		_subEntry = _entry select _i;
		if ((isClass _subEntry)&&_needClass) then {
			_0ba set [count _0ba,_subEntry];
		};
		if (!(isClass _subEntry)&&!_needClass) then {
			_0ba set [count _0ba,_subEntry];
		};
	};
	_0ba
};

// 
// clear output box
//
ctrlSetText [_outputIDC,""];

//
// iterate throu entries of list box
//
{
	// diag_log text format ["%1", lbtext [_lbIDC,_x]];
	_0ec = _x;
	if ((str inheritsFrom _0ec)!="") then {
		_outText = _outText + format["class %1 : %2 {",configName _0ec,configName inheritsFrom _0ec] + _crlf;
	}else{
		_outText = _outText + format["class %1 {",configName _0ec] + _crlf;
	};
	

	{
		_Entry = _x;
		_EntryName = configName _Entry;
		_0sl = switch true do {
			case (isNumber _Entry): {[_EntryName,getNumber _Entry]};
			case (isText _Entry): {[_EntryName,""""+getText _Entry+""""]};
			case (isArray _Entry): {[_EntryName+"[]",[getArray _Entry] call GFNC(ArrayToString)]};
			default {nil};
		};
		_0lb = _0xp + format["%1 = %2;",_0sl select 0,_0sl select 1];
		_outText = _outText + _0lb + _crlf;
	} forEach ([_0ec,false] call _parseEnrty);

	_outText = _outText + "};" + _crlf;
} forEach ([_curConfig,true] call _parseEnrty);
ctrlSetText [_outputIDC,_outText];

