/*
	Attempted to bypass ini file
*/
private ["_querstr", "_quer", "_array"];
params ["_mode", "_query"];

_querstr = format ["%1:%2:%3", _mode, (call extDB_SQL_CUSTOM_ID), _query];
_quer = "extDB3" callExtension _querstr;
_array = call compile _quer;
_return = _array select 1;


if ((_array select 0) == 0) exitWith
{
	diag_log format ["ExtDB3 Error: %1", _quer];
};

_return;