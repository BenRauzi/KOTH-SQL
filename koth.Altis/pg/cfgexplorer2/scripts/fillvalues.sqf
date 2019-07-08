#include "macros.hpp"
disableSerialization;
private ["_curConfig", "_valueNames", "_parentLevel", "_Entry", "_EntryName", "_0ul", "_confName", "_newLine", "_0zf", "_0lb", "_0c", "_ArrayString"];

// ***
// *** Get Parameters
// ***
_curConfig = _this select 0;
_valueNames = _this select 1;
_parentLevel = _this select 2;

if ((count _this) > 3) then
{
	_0ul = _this select 3;
} 
else
{
	_0ul = "";
};

// ***
// *** Get values from this config hive
// ***

_confName = configName _curConfig;

// ***
// *** add configName to parents box
// ***

lbadd [112,format["%1 > %2",_parentLevel,_confName]];

_newLine = "
";

if (_parentLevel == 0) then 
{
	// ***
	// ***  write the class header
	// ***
	
	if (format["%1", inheritsFrom _curConfig] == "") then {
		_0ul = _0ul + format["class %1 { %2",configName _curConfig,_newLine];	
	} else
	{
		_0ul = _0ul + format["class %1 : %3 { %2",configName _curConfig,_newLine, configName (inheritsFrom _curConfig)];	
	}
	
} else 
{
	// ***
	// ***Following values are from an inherited class
	// ***Add a comment to the code
	
	_0ul = _0ul + format["%1",_newLine];	
	_0ul = _0ul + format["  // Values from class: %1 //%2",configName _curConfig,_newLine];	
	_0ul = _0ul + format["%1",_newLine];	
};

for "_0zf" from 0 to ((count _curConfig) - 1) do {	
	_Entry = (_curConfig) select _0zf;
	_EntryName = configName _Entry;
   	
	if (not (isClass _Entry) && (not ((toUpper _EntryName) in _valueNames))) then { 
		if (isNumber _Entry) then { 
			_0lb = format["%1: %3   => %4",_parentLevel,_confName,_EntryName,getNumber _Entry];
			_0c = lbAdd [111, _0lb];
			
			_0ul = _0ul + format["  %1 = %2; %3",_EntryName, getNumber _Entry, _NewLine];
		};
		if (isText _Entry) then { 
			_0lb = format["%1: %3   => ""%4""",_parentLevel,_confName,_EntryName,gettext _Entry];
			_0c = lbAdd [111, _0lb];
			
			_0ul = _0ul + format["  %1 = ""%2""; %3",_EntryName, getText _Entry, _NewLine];
		};
		if (isArray _Entry) then { 
			_0lb = format["%1: %3   => %4",_parentLevel,_confName,_EntryName,getArray _Entry];
			_0c = lbAdd [111, _0lb];
			_ArrayString = [getArray _Entry] call GFNC(ArrayToString);
			
			_0ul = _0ul + format["  %1[] = %2; %3",_EntryName, _ArrayString, _NewLine];
		};
		_valueNames = _valueNames + [toUpper _EntryName];
	};
};

// ***
// *** Get values from next parent class
// ***
if isClass(inheritsFrom _curConfig) then
{
	_0ul = [inheritsFrom _curConfig, _valueNames, (_parentLevel + 1), _0ul ] call GFNC(FillValues);
};
lbSort ((findDisplay 19000) displayCtrl 111);
if (_parentLevel == 0) then 
{
	_0ul = _0ul + "}";
	ctrlSetText [113, _0ul];
};

_0ul