#include "macros.hpp"
disableSerialization;
private["_0w","_0c","_selectedEntryName", "_Entry","_ConfName","_nix"];

// ***
// *** get parameter
// ***  

_0w = _this select 0;
_0c = _this select 1;

_selectedEntryName = lbText [110,_0c];

// ***
// *** get the new configObject
// ***
_Entry = (CurrentConfig >> _selectedEntryName);

CurrentConfig = _Entry;
ConfigPath = ConfigPath + [_Entry];

[ConfigRoot, ConfigPath] call GFNC(showConfig);
