/*
	ArmA 3 King of Hill
	Code written by Sa-Matra
	Using this code without Sa-Matra's direct permission is forbidden
	
	Special build for Gamed.de
	
	Build ETYKMBSIGDHGNALL
*/
#include "hpp\defines.hpp"
if(isNil{kgqbt1})then{kgqbt1=false;};kgx931={if(kgqqa5)exitWith{hint localize "STR_KOH_Dlg_PlayerMenu_MessageBusy";};(findDisplay 602)closeDisplay 1;kg5ky3=true;_08c=5 max(kgle6q*4);[format[localize "STR_KOH_Dlg_RepackingMagazines",kgle6q],format[localize "STR_KOH_Dlg_RepackingDone"],_08c,kgle6q,{_this!=kgle6q},{kg5ky3=false;},{kgy1pz=true;kg5ky3=false;}]spawn kgftho;};kghcte={if(kgqqa5)exitWith{hint localize "STR_KOH_Act_Busy";};private["_0o","_name","_08c"];_0o=_this;_name=_0o call kgz46d;_08c=(if(kg3338 in kgge9y)then{9}else{18});kgw9b6=[_0o getVariable["revive_player",objNull],player];publicVariable "kgw9b6";[format["Reviving %1",_name],format["%1 revived",_name],_08c,_0o,{(getPosATL(_this)distance getPosATL(player)>5)||isNull(_this)},{},{_09c=_this getVariable["revive_player",objNull];if(!(_09c getVariable["was_revived",false])&&!(player call kgjvx9))then{_09c setVariable["was_revived",true];[[player getVariable["koh_owner",0],kgids1]]call kgt98j;if(kg3338 in kgge9y)then{[[player getVariable["koh_owner",0],kg6irv,(if((getPosATL player)call kgfnsu)then{call kg5coq}else{0})]]call kgt98j;};};if(_this call kgvoo3)then{_this setVariable["koh_revived_by",player getVariable["koh_owner",0],true];};_09c switchMove "amovppnemstpsnonwnondnon";kgftdm=_this;publicVariable "kgftdm";if(isServer)then{publicVariableServer "kgftdm";};}]spawn kgftho;};kgnlak={if(diag_tickTime-kg7hzp<0.5)exitWith{};if((_this select 1)&&(_this select 0)getVariable["koh_lockpicked",false])exitWith{["通知","车辆已被锁定，在完全修理之前无法再锁定。",false,5]call kgumf6;};if(local(_this select 0))then{(_this select 0)lock(_this select 1);}else{private["_0ad"];_0ad=if(_this select 1)then{"kgmuca"}else{"kgrzez"};missionNamespace setVariable[_0ad,_this select 0];publicVariable _0ad;kgx47r=!(_this select 1);kgjhff=(_this select 1);kg7hzp=diag_tickTime;};isNil{kgmuca};isNil{kgrzez};};kg4v49={["Lockpicking vehicle","Vehicle is now open, lock broken",3,_this,{!(locked _this>1)||(player distance _this)>10},{},{if(local _this)then{_this lock false;}else{kgrzez=_this;publicVariable "kgrzez";};_this setVariable["koh_lockpicked",true,true];}]spawn kgftho;};kgzubr={private["_0bd","_08c"];_0bd=_this weaponsTurret[-1];{_0bd=_0bd+(_this weaponsTurret _x);}forEach(_this call kgxkcq);_08c=(count(_0bd)*10)max 5;["Performing full vehicle service","Vehicle repaired, refueled and rearmed",_08c,_this,{(velocity(_this)distance[0,0,0]>1)||!alive(_this)||driver _this!=player},{},{kgy5ql=0;_this setDamage 0;_this setFuel 0.98+random 0.02;if(_this getVariable["koh_lockpicked",false])then{_this setVariable["koh_lockpicked",false,true]};player setDamage 0;kgegvd=_this;publicVariableServer "kgegvd";}]spawn kgftho;call kgttgb;};kgrnio={_08c=10;[format["Selling %1",getText(configFile>>"CfgVehicles">>typeOf _this>>"displayname")],"Vehicle sold",_08c,_this,{(velocity(_this)distance[0,0,0]>1)||!alive(_this)||driver _this!=player},{},{kg5k6y=[player,_this];publicVariableServer "kg5k6y";}]spawn kgftho;call kgttgb;};kgu49m={_this engineOn false;["正在补给","补给完成",40,_this,{(velocity(_this)distance[0,0,0]>1)||!alive(_this)||driver _this!=player||isEngineOn _this},{},{_this setDamage 0;_this setFuel 0.98+random 0.02;if(_this getVariable["koh_lockpicked",false])then{_this setVariable["koh_lockpicked",false,true]};player setDamage 0;kgegvd=_this;publicVariableServer "kgegvd";}]spawn kgftho;call kgttgb;};kgwyet={private["_0cd"];_0cd=5 max(_this call kgoy8n);["Performing field repair","Vehicle is now operational",_0cd,[_this,getPosATL _this],{(getPosATL(_this select 0)distance(_this select 1))>1||!alive(_this select 0)||vehicle player!=player},{},{_0f=(_this select 0);_0f call kg592p;kgkmdu=_0f;publicVariable "kgkmdu";}]spawn kgftho;};kg3maa={if!(call kgiypm)exitWith{hint "Cannot open vehicle store, previous purchase is still processing";};createDialog "KingOfHill_Vehicles";};kg71bv={if(diag_tickTime<kgis8k+3||diag_tickTime<kgkq4g+4)exitWith{hint "Please wait a little before another rearm.";};hint "你已重新补给.";kgis8k=diag_tickTime;kgfcpm=true;};kgpqdy={["Spawn trucks are currently disabled.","Notice",true]call BIS_fnc_GUImessage;};kg248n={private _0ba=[];{if(group(_x select 0)!=group player&&(!(_x select 4)||(_x select 1)in["commander","cargo"])&&true)then{_0ba pushBack(_x select 0);};}forEach fullCrew _this;_0ba;};kgls4n={private _0dd=[];{if(_x in _this)then{moveOut _x;_0dd pushBack _x;};}forEach(_this call kg248n);if(count _0dd>0)then{kgsw9l=_0dd;publicVariable "kgsw9l";};};kgifsz={kgw5ho=_this;publicVariable "kgw5ho";_this call kg1lqn;};kg7ohf={_this distance player<(switch(true)do{case "Quadbike_01_base_F":{3};case "Offroad_01_base_F":{5};case "SUV_01_base_F":{5};case "Hatchback_01_base_F":{5};default{7};})};kg7u5z={private["_09c"];waitUntil{_09c=player;if(isNil{kgziv5})then{kgziv5=_09c addAction["<img image='i\ico_menu.paa' shadow='0'/> 玩家菜单",{call kgjjhs},nil,-30,false,false,"","!kgymt4"];};waitUntil{!alive _09c};_09c removeAction kgziv5;kgziv5=nil;waitUntil{alive player};false;};};kgyfwy={if(!isNil{kgti7m})then{{kgrtga removeAction _x;}forEach kgti7m};kgqbt1=true;kgrtga=player;kgti7m=[];_0ed=10;_0fd=-6;_0gd=-10;kgvyvw=false;kgemgx=objNull;_0hd=player addAction["revive",{kgemgx call kghcte},nil,_0fd,true,false,"","kgvyvw && vehicle player == player"];kgx47r=false;kgjhff=false;kgf1t1=false;kgqj8z=objNull;kg7hzp=diag_tickTime;_0id=player addAction["<img image='i\ico_lock.paa' shadow='0'/> 上锁",{[kgqj8z,true]call kgnlak;},nil,_0gd,false,false,"","kgx47r"];_0jd=player addAction["<img image='i\ico_unlock.paa' shadow='0'/> 解锁",{[kgqj8z,false]call kgnlak;},nil,_0ed,false,false,"","kgjhff"];_0kd=player addAction["<img image='i\ico_lockpick.paa' shadow='0'/> 撬锁",{kgqj8z call kg4v49;},nil,_0ed,true,false,"","kgf1t1"];kg6vmc=false;_0ld=player addAction["<img image='i\ico_loadout.paa' shadow='0'/> 购买武器",{createDialog "KingOfHill_Loadout"},nil,_0fd,true,false,"","kg6vmc"];kgzdet=false;_0md=player addAction["<img image='i\ico_costumes.paa' shadow='0'/> 选择服装",{if(diag_tickTime>kgkq4g+4)then{createDialog "KingOfHill_Costumes";};},nil,_0fd,true,false,"","kgzdet"];kgksjq=false;_0nd=player addAction["<img image='i\ico_perks.paa' shadow='0'/> 选择技能",{createDialog "KingOfHill_Perks"},nil,_0fd,true,false,"","kgksjq"];kgfus7=false;_0od=player addAction["<img image='i\ico_vehicles.paa' shadow='0'/> 购买载具",{call kg3maa;},nil,_0fd,true,false,"","kgfus7"];kguyfb=false;_0pd=player addAction["<img image='i\ico_rules.paa' shadow='0'/> 服务器规则",{createDialog "KingOfHill_Rules"},nil,_0fd,true,false,"","kguyfb"];kgcewp=false;_0qd=player addAction["<img image='i\ico_rearm.paa' shadow='0'/> 补给弹药",{call kg71bv},nil,_0fd,true,true,"","kgcewp"];kgzpwi=false;_0rd=player addAction[localize "STR_ACTION_EJECT",{kgl4pw=true;},nil,6.1,false,false,"","kgzpwi || (locked(vehicle player)) > 1"];kgib5l=false;kg2ow5=objNull;_0sd=player addAction["<img image='i\ico_repair.paa' shadow='0'/> 载具维修",{kg2ow5 call kgzubr},nil,_0ed,true,false,"","kgib5l && !kgqqa5"];kgp3bo=false;kg9e2u=objNull;_0td=player addAction["<img image='i\ico_repair.paa' shadow='0'/> 紧急修理",{kg9e2u call kgwyet},nil,_0fd,true,false,"","kgp3bo && vehicle player == player && !kgqqa5"];kgdvi4=false;kgerth=objNull;_0ud=player addAction["<img image='i\ico_repair.paa' shadow='0'/> 固定翼补给",{kgerth call kgu49m},nil,_0ed,true,false,"","kgdvi4 && !kgqqa5"];kgkndf=false;_0vd=player addAction["<img image='i\ico_sell.paa' shadow='0'/> Request boat",{kgbo7u=true;},nil,_0fd,true,false,"","kgkndf && !kgqqa5"];kgkhpc=false;kgx9u4=objNull;_0wd=player addAction["<img image='i\ico_sell.paa' shadow='0'/> 出售载具",{kgx9u4 call kgrnio},nil,_0ed,true,false,"","kgkhpc && !kgqqa5"];kglbvh=false;kghc18=objNull;_0xd=player addAction["<img image='i\ico_rotate.paa' shadow='0'/> 赶出载具",{kgqj8z call kgls4n;},nil,_0gd,true,false,"","kglbvh"];kgq327=false;kgu8pm=objNull;_0yd=player addAction["<img image='i\ico_rotate.paa' shadow='0'/> 翻转载具",{kgu8pm call kgifsz;},nil,_0gd,true,false,"","kgq327"];kgti7m=[_0hd,_0ld,_0md,_0nd,_0od,_0pd,_0qd,_0rd,_0id,_0jd,_0sd,_0td,_0ud,_0kd,_0vd,_0wd,_0xd,_0yd];};kghr9n={private["_09c","_02d","_03d"];_0hd=kgti7m select 0;_0zd=kgti7m select 1;_01d=kgti7m select 2;_0md=kgti7m select 3;_0nd=kgti7m select 4;_0od=kgti7m select 5;_0pd=kgti7m select 6;_0qd=kgti7m select 7;_0rd=kgti7m select 8;_0id=kgti7m select 9;_0jd=kgti7m select 10;_0sd=kgti7m select 11;_0td=kgti7m select 12;_0ud=kgti7m select 13;_0kd=kgti7m select 14;_0vd=kgti7m select 15;_0wd=kgti7m select 16;_0xd=kgti7m select 17;_0yd=kgti7m select 18;_09c=player;_02d=kghzyg select(kgubgt find playerSide);_03d=kgmksk select(kgubgt find playerSide);{_09c reveal[_x,4];}forEach _02d;while{true}do{kgvyvw=false;kg6vmc=false;kgzdet=false;kgksjq=false;kgfus7=false;kguyfb=false;kgcewp=false;kgx47r=false;kgjhff=false;kgf1t1=false;kgib5l=false;kgp3bo=false;kgdvi4=false;kgkndf=false;kgkhpc=false;kglbvh=false;kgq327=false;if(!alive _09c)exitWith{};{if((_09c distance _x<3)&&alive(_x getVariable["revive_player",objNull])&&(_x getVariable["revive_side",civilian]==playerSide))exitWith{if(kgemgx!=objNull)then{_09c setUserActionText[_0hd,format["<img image='%1' color='#ee0000'/> 救援 %2","a3\ui_f\data\map\VehicleIcons\pictureheal_ca.paa",_x call kgz46d]];};kgvyvw=true;kgemgx=_x;};}forEach kgonou;if(cursorTarget in _02d)then{if(player distance cursorTarget<14)then{switch(cursorTarget)do{case(_02d select 0):{kg6vmc=true;};case(_02d select 1):{kgzdet=true;};case(_02d select 2):{kgksjq=true;};case(_02d select 3):{kgfus7=true;};case(_02d select 4):{kguyfb=true;};case(_02d select 5):{kgcewp=true;};};};};private["_04d"];_04d=(if(vehicle player==player)then{cursorTarget}else{vehicle player});if(alive _04d)then{if(playerSide!=_04d getVariable["koh_side",civilian])then{if(locked _04d>1)then{if(player distance _04d<10)then{kgqj8z=_04d;kgf1t1=true;};};}else{if({if(_04d==_x select 0)exitWith{1}}count kg8u9s>0)then{kgqj8z=_04d;if(locked _04d>1)then{kgjhff=true;}else{kgx47r=true;};if(count(_04d call kg248n)>0)then{if(_04d getVariable["koh_safe",-1]>-1||(if(_04d isKindOf "Air")then{isTouchingGround _04d}else{abs speed _04d<15}))then{kglbvh=true;kghc18=_04d;};};};};};
#define kgqweb 13
_05d=vehicle player;if(_05d!=player&&driver(_05d)==player&&alive(_05d)&&([0,0,0]vectorDistance velocity(_05d))<1)then{_06d=(_05d)isKindOf "Plane"&&getNumber(configFile>>"CfgVehicles">>typeOf _05d>>"vtol")==0;if([getPosATL _05d,[_03d,kgqweb,1]]call kgweyr)then{if(damage _05d==0)then{if(_05d getVariable["koh_side",sideUnknown]!=_05d getVariable["koh_side_original",sideUnknown]||{{_x select 0==_05d}count kg8u9s>0})then{kgkhpc=true;kgx9u4=_05d;};};if(!_06d)then{kgib5l=true;kg2ow5=_05d;};};if(_06d)then{kgdvi4=true;kgerth=_05d;};};if(kglwbi in kgge9y)then{_07d=cursorTarget;if(vehicle player==player&&alive(_07d)&&!(_07d isKindOf "Man"))then{if(_07d call kg7ohf)then{if((_07d call kgwkl8)||fuel _07d<0.01)then{kgp3bo=true;kg9e2u=_07d;};};};};if(vehicle player==player)then{if(diag_tickTime>kg5rtx+300)then{_08d=getPosASLW player select 2;if(_08d<-1&&_08d>-4)then{if(getTerrainHeightASL(getPosWorld player)<-3)then{kgkndf=true;};};};};_05d=cursorTarget;if(alive _05d&&_05d isKindOf "AllVehicles")then{if(player distance _05d<15)then{if(vectorUp _05d select 2<0.2)then{kgq327=true;kgu8pm=_05d;};};};sleep 0.5;};};