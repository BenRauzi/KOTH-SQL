#include "defs.hpp"
_pos = _this select 0;
_pos = [_pos select 0,_pos select 1,-(_pos select 2)];
disableSerialization;

showCinemaBorder false;
//_0vh = "camera" camCreate [_pos select 0,_pos select 1,200];
_0vh = "camera" createVehicleLocal [_pos select 0,_pos select 1,200];
_0vh cameraeffect ["External", "Top"];

_0xn = 0;
_pitch = -89;
_fov = 0.7;
_0vh camSetFov 0.7;
_0vh setVectorDirAndUp [[sin(_0xn)*cos(_pitch),cos(_0xn)*cos(_pitch),sin(_pitch)],[-sin(_0xn)*sin(_pitch), -cos(_0xn)*sin(_pitch), -cos(_pitch)]];

//titleText["WASD - move, Arrows - rotate, Num-/Num+ - zoom, V - NV, N - normal view, Q - exit","plain down"];
_keyhandler = (findDisplay 46) displayAddEventHandler ["KeyDown", "_this call c_proving_ground_satcam_keyhandler"];
GVAR(balca_satcam) = [_0vh,_keyhandler,[_pos select 0,_pos select 1,200],[_0xn,_pitch,_fov]];
GVAR(balca_satcam_mouseHandlerId) = (findDisplay 46) displayAddEventHandler ["MouseMoving", "_this call c_proving_ground_balca_satcam_MouseMovingHandler"];
GVAR(balca_satcam_MouseMovingHandler) = {
	_0a = _this select 0;
	_dx = _this select 1;
	_dy = _this select 2;

	if(!isNull findDisplay balca_debug_WC_IDD) exitWith {};

	_balca_satcam = GVAR(balca_satcam);
	_0vh = _balca_satcam select 0;
	_keyhandler = _balca_satcam select 1;
	_0mh = _balca_satcam select 2;
	_0xn = (_balca_satcam select 3) select 0;
	_pitch = (_balca_satcam select 3) select 1;
	_fov = (_balca_satcam select 3) select 2;
	_pitch = (_pitch - _dy) min 89 max -89;
	_0xn = (_0xn + _dx)%360;
	_0vh setVectorDirAndUp [[sin(_0xn)*cos(_pitch),cos(_0xn)*cos(_pitch),sin(_pitch)],[-sin(_0xn)*sin(_pitch), -cos(_0xn)*sin(_pitch), -cos(_pitch)]];
	_0vh camCommit 0.01;
	GVAR(balca_satcam) = [_0vh,_keyhandler,_0mh,[_0xn,_pitch,_fov]];
};
