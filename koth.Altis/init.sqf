/*
	ArmA 3 King of Hill
	Code written by Sa-Matra
	Using this code without Sa-Matra's direct permission is forbidden
	
	Special build for Gamed.de
	
	Build ETYKMBSIGDHGNALL
*/

#include "nostamina.sqf"

if !(isServer) then {
	[player] remoteExecCall	["Harris_initStats", 2];
};