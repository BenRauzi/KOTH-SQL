/*
	ArmA 3 King of Hill
	Code written by Sa-Matra
	Using this code without Sa-Matra's direct permission is forbidden
	
	Special build for Gamed.de
	
	Build ETYKMBSIGDHGNALL
*/
private["_0l","_0ao","_0bo","_0co","_i","_j","_k","_0yb","_0do"];_0l=+(_this select 0);_0ao={_this};if((count _this)>1)then{if((typeName(_this select 1))=="CODE")then{_0ao=_this select 1;}else{_0ao=compile(_this select 1);};};_0bo=count _0l;_0co=[3501671,1355339,543749,213331,84801,27901,11969,4711,1968,815,271,111,41,13,4,1];for "_k" from 0 to((count _0co)-1)do{_0yb=_0co select _k;for[{_i=_0yb},{_i<_0bo},{_i=_i+1}]do{_0do=_0l select _i;_j=_i;while{(_j>=_0yb)}do{if(!(((_0l select(_j-_0yb))call _0ao)>(_0do call _0ao)))exitWith{};_0l set[_j,(_0l select(_j-_0yb))];_j=_j-_0yb;};_0l set[_j,_0do];};};_0l