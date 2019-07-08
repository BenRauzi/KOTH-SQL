#include "defs.hpp"
#define GET_DISPLAY (findDisplay balca_debug_console_IDD)
#define GET_CTRL(a) (GET_DISPLAY displayCtrl ##a)
#define GET_SELECTED_DATA(a) ([##a] call {_0ha = _this select 0;_selection = (lbSelection GET_CTRL(_0ha) select 0);if (isNil {_selection}) then {_selection = 0};(GET_CTRL(_0ha) lbData _selection)})
_mode = _this select 0;
switch (_mode) do {
	case 0: {//init
		_console_history = __uiGet(balca_console_history);
		balca_debug_console_expand = false;
		if (isNil{_console_history}) then {
			_console_history = ["uiNamespace setVariable ['balca_console_history', [format['%1', (uiNamespace getVariable ""balca_console_history"") select 0]]]; closeDialog 0;"];
			__uiSet(balca_console_history,_console_history);
			{
				GET_CTRL(balca_debug_console_history_IDC) lbAdd _x;
				GET_CTRL(balca_debug_console_history_IDC) lbSetData [(lbSize GET_CTRL(balca_debug_console_history_IDC))-1,_x];
			} forEach _console_history;
		}else{
			{
				GET_CTRL(balca_debug_console_history_IDC) lbAdd _x;
				GET_CTRL(balca_debug_console_history_IDC) lbSetData [(lbSize GET_CTRL(balca_debug_console_history_IDC))-1,_x];
			} forEach _console_history;
			GET_CTRL(balca_debug_console_edit_IDC) ctrlSetText (_console_history select ((count _console_history)-1));
			GET_CTRL(balca_debug_console_result_IDC) ctrlSetText str __uiGet(balca_console_result);
		};
	};
	case 1: {//exec
		GET_CTRL(balca_debug_console_result_IDC) ctrlSetText '';
		_command = ctrlText balca_debug_console_edit_IDC;
		_console_history = __uiGet(balca_console_history);
		if (({_x==_command} count _console_history)<1) then {
			_console_history set [(count _console_history),_command];
			__uiSet(balca_console_history,_console_history);
			GET_CTRL(balca_debug_console_history_IDC) lbAdd str _command;
			GET_CTRL(balca_debug_console_history_IDC) lbSetData [(lbSize GET_CTRL(balca_debug_console_history_IDC))-1,_command];
		};
		_0xa = call compile _command;
		if (!(isNil {_0xa})) then {
			GET_CTRL(balca_debug_console_result_IDC) ctrlSetText str _0xa;
			__uiSet(balca_console_result,_0xa);
		};
	};
	case 2: {//fill console from history
		GET_CTRL(balca_debug_console_edit_IDC) ctrlSetText GET_SELECTED_DATA(balca_debug_console_history_IDC);
	};
	case 3: {//exec command from history
		GET_CTRL(balca_debug_console_result_IDC) ctrlSetText '';
		_command = GET_SELECTED_DATA(balca_debug_console_history_IDC);
		GET_CTRL(balca_debug_console_edit_IDC) ctrlSetText _command;
		_0xa = call compile _command;
		if (!(isNil {_0xa})) then {
			GET_CTRL(balca_debug_console_result_IDC) ctrlSetText str _0xa;
			__uiSet(balca_console_result,_0xa);
		};
	};
	case 4: {//exec globally
		GET_CTRL(balca_debug_console_result_IDC) ctrlSetText '';
		_command = ctrlText balca_debug_console_edit_IDC;
		_console_history = __uiGet(balca_console_history);
		if (({_x==_command} count _console_history)<1) then {
			_console_history set [(count _console_history),_command];
			__uiSet(balca_console_history,_console_history);
			GET_CTRL(balca_debug_console_history_IDC) lbAdd str _command;
			GET_CTRL(balca_debug_console_history_IDC) lbSetData [(lbSize GET_CTRL(balca_debug_console_history_IDC))-1,_command];
		};
		[compile _command, "BIS_fnc_call", nil, false, true] call BIS_fnc_MP;
		//player setVehicleInit _command;
		//processInitCommands;
	};
	case 5: {//exec on server
		GET_CTRL(balca_debug_console_result_IDC) ctrlSetText '';
		_command = ctrlText balca_debug_console_edit_IDC;
		_console_history = __uiGet(balca_console_history);
		if (({_x==_command} count _console_history)<1) then {
			_console_history set [(count _console_history),_command];
			__uiSet(balca_console_history,_console_history);
			GET_CTRL(balca_debug_console_history_IDC) lbAdd str _command;
			GET_CTRL(balca_debug_console_history_IDC) lbSetData [(lbSize GET_CTRL(balca_debug_console_history_IDC))-1,_command];
		};
		player setVariable ['PG_result',[]];
		[compile _command, "BIS_fnc_call", false, false, true] call BIS_fnc_MP;
		//player setVehicleInit ("if isServer then {this setVariable [""PG_result"",[call {"+_command+"}],true]}");
		//processInitCommands;

/*		[] spawn {
			_08c = time+2;
			waitUntil{
				((count(player getVariable ['PG_result',[]])==1)||_08c>time)
			};
			_res = player getVariable ['PG_result',[""]];
			GET_CTRL(balca_debug_console_result_IDC) ctrlSetText str(_res select 0);
			player setVariable ['PG_result',[]];
		};*/
	};
	case 6: {//run tracker
		GET_CTRL(balca_debug_console_result_IDC) ctrlSetText '';
		PG_tracker = true;
		_command = (ctrlText balca_debug_console_edit_IDC);
		_console_history = __uiGet(balca_console_history);
		if (({_x==_command} count _console_history)<1) then {
			_console_history set [(count _console_history),_command];
			__uiSet(balca_console_history,_console_history);
			GET_CTRL(balca_debug_console_history_IDC) lbAdd str _command;
			GET_CTRL(balca_debug_console_history_IDC) lbSetData [(lbSize GET_CTRL(balca_debug_console_history_IDC))-1,_command];
		};
		_0ul = compile _command;
		_0xa = _0ul spawn {while {PG_tracker} do {sleep .5;call _this}};
		if (!(isNil {_0xa})) then {
			GET_CTRL(balca_debug_console_result_IDC) ctrlSetText str _0xa;
			__uiSet(balca_console_result,_0xa);
		};
	};
	case 7: {//run tracker
		PG_tracker = false;
	};
	case 123: {
		balca_debug_console_expand = !balca_debug_console_expand;

		_pos_result = ctrlPosition GET_CTRL(balca_debug_console_result_IDC);
		_pos_history = ctrlPosition GET_CTRL(balca_debug_console_history_IDC);
		_pos_history_title = ctrlPosition GET_CTRL(balca_debug_console_history_title_IDC);

		#define EXPAND_TIMES	4

		if(balca_debug_console_expand) then {
			_0yb = _pos_result select 3;

			_pos_result set [3, _0yb * 4];

			_pos_history_title set [1, (_pos_history_title select 1) + _0yb * (EXPAND_TIMES - 1)];

			_pos_history set [1, (_pos_history select 1) + _0yb * (EXPAND_TIMES - 1)];
			_pos_history set [3, (_pos_history select 3) - _0yb * (EXPAND_TIMES - 1)];
		} else {
			_0yb = (_pos_result select 3) / EXPAND_TIMES;

			_pos_result set [3, _0yb];

			_pos_history_title set [1, (_pos_history_title select 1) - _0yb * (EXPAND_TIMES - 1)];

			_pos_history set [1, (_pos_history select 1) - _0yb * (EXPAND_TIMES - 1)];
			_pos_history set [3, (_pos_history select 3) + _0yb * (EXPAND_TIMES - 1)];
		};

		GET_CTRL(balca_debug_console_result_IDC) ctrlSetPosition _pos_result;
		GET_CTRL(balca_debug_console_result_IDC) ctrlCommit 0;

		GET_CTRL(balca_debug_console_history_IDC) ctrlSetPosition _pos_history;
		GET_CTRL(balca_debug_console_history_IDC) ctrlCommit 0;

		GET_CTRL(balca_debug_console_history_title_IDC) ctrlSetPosition _pos_history_title;
		GET_CTRL(balca_debug_console_history_title_IDC) ctrlCommit 0;
	};
};