/*
	ArmA 3 King of Hill
	Code written by Sa-Matra
	Using this code without Sa-Matra's direct permission is forbidden
	
	Special build for Gamed.de
	
	Build ETYKMBSIGDHGNALL
*/
#include "hpp\defines.hpp"
kgnoik={private["_0w"];
_0w=[];
for "_i" from 0 to count(kgubgt)-1 do{private["_0x","_0y"];
_0x=kgubgt select _i;
_0y=0;
{if(side group _x==_0x)then{if((getPosATL _x)call kgfnsu)then{_0y=_0y+1;
};
};
}forEach playableUnits;
_0w set[_i,_0y];
};
_0w};

kg5coq={private["_0y"];
_0y=0;
for "_i" from 0 to count(kgubgt)-1 do{private["_0x"];
_0x=kgubgt select _i;
if(_0x!=playerSide)then{_0y=_0y+(_0x call kgpgsr);
};
};
_0y};

kgpgsr={private["_0y"];
_0y=0;
{if(side group _x==_this)then{if((getPosATL _x)call kgfnsu)then{_0y=_0y+1;
};
};
}forEach playableUnits;
_0y};

kgqmps={if((getPosATL player)call kgfnsu)exitWith{1};
0};

kgnwrv={_0z=kgskxp;
switch(_0z)do{};
kgskxp=_this;

   switch(kgskxp)do{case kg27tr:{
   if!(playerSide in[blufor,opfor,independent])exitWith{endMission "LOSER";
};
call kgxhpo;
_0c=(kgubgt find playerSide);
kglc1q=kghzyg select _0c;
kg2e5i=kghznt select _0c;
kg9tp7=kgmksk select _0c;
kgxvny=kgpli7 select _0c;
kghrr8=kgzdcu select _0c;
kg7t24=kgx5lt select _0c;
kgxuke=kgtou3 select _0c;
kgj6pi=kg79q5 select _0c;
(kglc1q select 0)switchMove "ChopperLight_CB_idle7lookaround_H";
(kglc1q select 0)addEventHandler["AnimDone",{(_this select 0)switchMove(_this select 1);
}];
{if(_x getVariable["face",""]!="")then{_x setFace(_x getVariable "face");
};
}forEach kglc1q;
_01=+kgdva1;
_01 set[2,0];
_02=player createSimpleTask["Objective"];
_02 setSimpleTaskDestination _01;
_02 setSimpleTaskDescription["战区内玩家最多的一方将每40秒获得1点分数，占领重要区域的阵营将获得更多分数，先达到100分的阵营获胜。","占领并守卫","Objective"];
_02 setTaskState "Assigned";
player setCurrentTask _02;
{_l="#lightpoint" createVehicleLocal(getPosATL _x);
_l setLightBrightness 1.4;
_l setLightAmbient[1,1,0.9];
_l setLightColor[1,1,0.9];
_l setPosATL(_x modelToWorld[0,0,-3]);
_03="Land_runway_edgelight" createVehicleLocal(getPosATL _x);
_03 attachTo[_x,[-0.03,0.27,2.72]];
_03 setVectorUp[0,0,-1];
_03 attachTo[_x,[-0.03,0.27,2.72]];
}forEach kghznt;
call kgtiw9;
call kggcc2;

   call kgk78q;

   };

   
   case kgze3i:{
   if(_0z!=kg27tr)then{call kgxhpo;

   kglc1q=(kghzyg select(kgubgt find playerSide));

   kg2e5i=(kghznt select(kgubgt find playerSide));

   kg9tp7=(kgmksk select(kgubgt find playerSide));

   kgxvny=(kgpli7 select(kgubgt find playerSide));

   kg7t24=(kgx5lt select(kgubgt find playerSide));

   kgxuke=(kgtou3 select(kgubgt find playerSide));

   kgj6pi=(kg79q5 select(kgubgt find playerSide));

   call kgla5w;
call kgxcee;

   };

   
   kga2iy=nil;

   [kgg41u select 0 select 0,10,{
   kgbgkr=3000;

   setViewDistance kgbgkr;

   enableEnvironment false;

   player allowDamage false;

   if((vehicle player)!=player)then{(vehicle player)allowDamage false;
if((vehicle player)isKindOf "Air")then{player action["AutoHover",(vehicle player)];
};
};
call kgfxs5;

   }]
   call kgyzs8;

   0.5 fadeMusic 0;

   call kga7r2;

   call kg3srb;

   kg4bsk=false;

   _04=0;
{if(alive(_x select 0))then{if((_x select 0)getVariable["koh_side",civilian]==playerSide)then{_04=_04+(_x select 3);
};
};
}forEach kg8u9s;
if(_04>0)then{[[-1,kgub4d,_04]]call kgt98j;
call kgttgb;
};
_05=+(call kg3cem);
_06=(missionNamespace getVariable["kgvsc7",[0,0,0]])select(kgubgt find playerSide);
if(count(kgnine)<=2&&!isServer)then{_06=0;
};
{_05 set[_forEachIndex,(ceil((_x*_06/kg7pk9)/2)*2)max 50000];
}forEach _05;
if((_05 select 0)>0||(_05 select 1)>0)then{[[-1,kgwsdn,_05]]call kgt98j;
call kgrl7m;
call kgttgb;
};
kgin4h=true;

   };

   };

};

kgfxs5={if(!isNil{kgqh85})then{deleteVehicle kgqh85;
};
disableSerialization;
private["_07","_08","_09","_0aa"];
_07=kgg41u select 0 select 0;
_08=kgg41u select 0 select 1;
_09=kgg41u select 1 select 0;
_0aa=kgg41u select 1 select 1;
4 cutFadeOut 1;
5 cutFadeOut 1;
6 cutFadeOut 1;
showCinemaBorder true;
kgqh85="camera" createVehicleLocal _07;
kgqh85 setPosATL _07;
kgqh85 setVectorDirAndUp[_09,_0aa];
kgqh85 cameraEffect["internal","back"];
kgqh85 camCommit 0;
kgqh85 camSetPos _08;
kgqh85 camCommit 100;
15 cutRsc["KingOfHill_GameEnding","PLAIN"];
if(kg2utt==playerSide)then{playSound"KOH_Win";
}else{playSound "KOH_Lose";
};
0 fadeMusic 1;
true spawn{for "_i" from 0 to 3 do{closeDialog 0;
sleep 0.01;
};
};
};
