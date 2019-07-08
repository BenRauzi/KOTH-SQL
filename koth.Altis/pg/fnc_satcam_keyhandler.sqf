#include "defs.hpp"
private ["_event","_keyCode","_0tn","_0w","_0ta"];
private["_0vn","_0p", "_dikCode", "_0tn", "_0un", "_0ta"];
_0p = _this select 0;
_dikCode = _this select 1;
_0tn = _this select 2;
_0un = _this select 3;
_0ta = _this select 4;
_0vn = false;


_balca_satcam = GVAR(balca_satcam);
_0vh = _balca_satcam select 0;
_keyhandler = _balca_satcam select 1;
_0mh = _balca_satcam select 2;
_0xn = (_balca_satcam select 3) select 0;
_pitch = (_balca_satcam select 3) select 1;
_fov = (_balca_satcam select 3) select 2;
switch (_dikCode) do {
	case 17:{	//W
		_0zm = [(_0mh select 0) + sin(_0xn)*(_0mh select 2)/4,(_0mh select 1) + cos(_0xn)*(_0mh select 2)/4,_0mh select 2];
		_0vh camSetPos _0zm;
		_0vh camCommit 0.1;
		GVAR(balca_satcam) = [_0vh,_keyhandler,_0zm,[_0xn,_pitch,_fov]];
		};
	case 31:{	//S
		_0zm = [(_0mh select 0) - sin(_0xn)*(_0mh select 2)/4,(_0mh select 1) - cos(_0xn)*(_0mh select 2)/4,_0mh select 2];
		_0vh camSetPos _0zm;
		_0vh camCommit 0.1;
		GVAR(balca_satcam) = [_0vh,_keyhandler,_0zm,[_0xn,_pitch,_fov]];
		};
	case 30:{	//A
		_0zm = [(_0mh select 0) + sin(_0xn-90)*(_0mh select 2)/4,(_0mh select 1) + cos(_0xn-90)*(_0mh select 2)/4,_0mh select 2];
		_0vh camSetPos _0zm;
		_0vh camCommit 0.1;
		GVAR(balca_satcam) = [_0vh,_keyhandler,_0zm,[_0xn,_pitch,_fov]];
		};
	case 32:{	//D
		_0zm = [(_0mh select 0) + sin(_0xn+90)*(_0mh select 2)/4,(_0mh select 1) + cos(_0xn+90)*(_0mh select 2)/4,_0mh select 2];
		_0vh camSetPos _0zm;
		_0vh camCommit 0.1;
		GVAR(balca_satcam) = [_0vh,_keyhandler,_0zm,[_0xn,_pitch,_fov]];
		};
	case 200:{	//up
		_pitch = (_pitch + 1) min 89;
		_0vh setVectorDirAndUp [[sin(_0xn)*cos(_pitch),cos(_0xn)*cos(_pitch),sin(_pitch)],[-sin(_0xn)*sin(_pitch), -cos(_0xn)*sin(_pitch), -cos(_pitch)]];
		_0vh camCommit 0.1;
		GVAR(balca_satcam) = [_0vh,_keyhandler,_0mh,[_0xn,_pitch,_fov]];
		};
	case 208:{	//down
		_pitch = (_pitch - 1) max -89;
		_0vh setVectorDirAndUp [[sin(_0xn)*cos(_pitch),cos(_0xn)*cos(_pitch),sin(_pitch)],[-sin(_0xn)*sin(_pitch), -cos(_0xn)*sin(_pitch), -cos(_pitch)]];
		_0vh camCommit 0.1;
		GVAR(balca_satcam) = [_0vh,_keyhandler,_0mh,[_0xn,_pitch,_fov]];
		};
	case 203:{	//left
		_0xn = (_0xn - 1);
		_0vh setVectorDirAndUp [[sin(_0xn)*cos(_pitch),cos(_0xn)*cos(_pitch),sin(_pitch)],[-sin(_0xn)*sin(_pitch), -cos(_0xn)*sin(_pitch), -cos(_pitch)]];
		_0vh camCommit 0.1;
		GVAR(balca_satcam) = [_0vh,_keyhandler,_0mh,[_0xn,_pitch,_fov]];
		};
	case 205:{	//right
		_0xn = (_0xn + 1);
		_0vh setVectorDirAndUp [[sin(_0xn)*cos(_pitch),cos(_0xn)*cos(_pitch),sin(_pitch)],[-sin(_0xn)*sin(_pitch), -cos(_0xn)*sin(_pitch), -cos(_pitch)]];
		_0vh camCommit 0.1;
		GVAR(balca_satcam) = [_0vh,_keyhandler,_0mh,[_0xn,_pitch,_fov]];
		};
	case 16:{	//Q
		_0zm = [(_0mh select 0),(_0mh select 1),(((_0mh select 2)*1.1) min 2000)];
		_0vh camSetPos _0zm;
		_0vh camCommit 0.1;
		GVAR(balca_satcam) = [_0vh,_keyhandler,_0zm,[_0xn,_pitch,_fov]];
		};
	case 44:{	//Z
		_0zm = [(_0mh select 0),(_0mh select 1),(((_0mh select 2)/1.1) max 2)];
		_0vh camSetPos _0zm;
		_0vh camCommit 0.1;
		GVAR(balca_satcam) = [_0vh,_keyhandler,_0zm,[_0xn,_pitch,_fov]];
		};
/*	case 78:{	//Num +
		_fov = _fov*1.1;
		_0vh camSetFov _fov;
		_0vh camCommit 0.1;
		GVAR(balca_satcam) = [_0vh,_keyhandler,_0zm,[_0xn,_pitch,_fov]];
		};
	case 74:{	//Num -
		_fov = _fov/1.1;
		_0vh camSetFov _fov;
		_0vh camCommit 0.1;
		GVAR(balca_satcam) = [_0vh,_keyhandler,_0zm,[_0xn,_pitch,_fov]];
		};*/
	case 49:{	//N normal view
		ppEffectDestroy ppColor;
		ppEffectDestroy ppInversion;
		ppEffectDestroy ppGrain;
		camUseNVG false;

		ppGrain = ppEffectCreate ["filmGrain", 2005];
		ppGrain ppEffectEnable true;
		ppGrain ppEffectAdjust [0.02, 1, 1, 0, 1];
		ppGrain ppEffectCommit 0;
	};
	case 47:{	//V night vision
		ppEffectDestroy ppColor;
		ppEffectDestroy ppInversion;
		ppEffectDestroy ppGrain;
		camUseNVG true;
	};
	case 1:{	//Esc

		ppEffectDestroy ppColor;
		ppEffectDestroy ppInversion;
		ppEffectDestroy ppGrain;

		camUseNVG false;
		(findDisplay 46) displayRemoveEventHandler ["KeyDown",_keyhandler];
		(findDisplay 46) displayRemoveEventHandler ["MouseMoving",GVAR(balca_satcam_mouseHandlerId)];
		GVAR(balca_satcam) =nil;
		_0vh cameraEffect ["terminate","back"];
		camDestroy _0vh;
	};
	default {
		//titleText["WASD - move, Num-/Num+ - zoom, V - NV, N - normal view, Q - exit","plain down"];
	};
};//end switch
