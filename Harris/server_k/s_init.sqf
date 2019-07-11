/*
	ArmA 3 King of Hill
	Code written by Sa-Matra
	Using this code without Sa-Matra's direct permission is forbidden
	
	Special build for Gamed.de
	
	Build ETYKMBSIGDHGNALL
*/
kgjmoc=0;
kgs2j7=0;
diag_log "====================== A3 King of Hill Server started ========================";
diag_log "============================= Logs version: v1 ===============================";
diag_log format["serverTime = %1",serverTime];
kgjmoc=0;
kgs2j7=0;
onPlayerConnected
   {
   diag_log format["PLAYER CONNECTED: id=%1 uid=%2 name=%3",_id,_uid,_name];
   kgjmoc=kgjmoc+1;kgs2j7=kgs2j7+1;(kgb6e8 select 0)set[count(kgb6e8 select 0),_uid];(kgb6e8 select 1)set[count(kgb6e8 select 1),_name];
   };

onPlayerDisconnected
   {
   diag_log format["PLAYER DISCONNECTED: id=%1 uid=%2 name=%3",_id,_uid,_name];
   kgs2j7=kgs2j7-1;_uid call kg6lpi;
   };
   
kg6lpi={_0ot=[];{if(isPlayer _x&&getPlayerUID(_x)!=_this)then{_0ot set[count _0ot,_x];};}forEach kgnine;kgnine=_0ot;kgo2zz=diag_tickTime+0.2;_0ot=[[],[],[],[]];_0dd=kgzpmd select 0;for "_i" from 0 to count(_0dd)-1 do{if(isPlayer(_0dd select _i)&&(kgzpmd select 2 select _i)!=_this)then{_0na=count(_0ot select 0);for "_j" from 0 to count(kgzpmd)-1 do{(_0ot select _j)set[_0na,kgzpmd select _j select _i];};};};kgzpmd=_0ot;((missionNamespace getVariable[format["uid%1",_this],objNull])getVariable["koh_owner",-1])call kgxdme;_0ot=[[],[]];for "_i" from 0 to count(kgb6e8 select 0)-1 do{if(kgb6e8 select 0 select _i!=_this)then{(_0ot select 0)set[count(_0ot select 0),kgb6e8 select 0 select _i];(_0ot select 1)set[count(_0ot select 1),kgb6e8 select 1 select _i];};};kgb6e8=_0ot;};

kgydes={private["_0c"];_0c=(kgzpmd select 1)find _this;if(_0c<0)exitWith{objNull};kgzpmd select 0 select _0c;};
kg7aa7={private["_0c"];_0c=(kgzpmd select 1)find _this;if(_0c<0)exitWith{""};kgzpmd select 2 select _0c;};
kgn1kn={private["_0c"];_0c=(kgb6e8 select 0)find _this;if(_0c<0)exitWith{""};kgb6e8 select 1 select _0c;};
kgx99f=compile preprocessFileLineNumbers "server_k\3rdparty\fn_shellSort.sqf";

#include "db\db_buildings.sqf";
#include "db\db_missions.sqf";
#include "db\db_paints.sqf";
#include "s_fl_buildingFunctions.sqf";
#include "s_fl_gameFunctions.sqf";
#include "s_fl_generalFunctions.sqf";
#include "s_fl_clientSide.sqf";
#include "s_resetUIDsList.sqf";
kgzpmd=[[],[],[],[]];
kgb6e8=[[],[]];
kgqx55=[];
kgqwt4=0;
kghhuz=0;
kgo2zz=0;
kg2dl9=false;
kgjoqi=0;
kgc35x=sideUnknown;
kgteto=[[],[]];
kg1tcu=civilian;
kgbdwr=0;
kgqyg5=0;
kgt51k=-1;
kgm4b1=0;
kgonou=[];
kg5pax=[];
kgjx1m=[];
kgirjs=[];
kgnine=[];
kgvtx7="KOTH3";
kgv6hy=sideUnknown;
kgfezz="";
for "_i" from 0 to 15 do{kgfezz=kgfezz+toString[65+floor(random(90-65+1))]};
independent setFriend[blufor,0];
independent setFriend[opfor,0];
blufor setFriend[independent,0];
opfor setFriend[independent,0];
kgpj8x=[];
{_0fa=(createGroup _x)createUnit["Logic",[0,0,0],[],0,""];_0fa setVariable["ready",false,true];kgpj8x pushBack _0fa;}
forEach[blufor,opfor,independent,civilian];
call kgj6uh;
call kgv45n;
publicVariable "kgonou";
publicVariable "kg5pax";
publicVariable "kgjx1m";
publicVariable "kgirjs";
publicVariable "kgnine";
publicVariable "kgfezz";
publicVariable "kgpj8x";
publicVariable "kgvtx7";
publicVariable "kgv6hy";
{call kg1t5r}
call kg1xgw;
true spawn{_0xm=serverTime-1;_0pt=serverTime+350;waitUntil{!isDedicated||serverTime<_0xm||serverTime>_0pt};sleep 1;(format["serverTime is now normal (serverTime = %1)",serverTime])call kgkq1c;kgnx43=true;publicVariable "kgnx43";kg3jar=serverTime;publicVariable "kg3jar";if(serverTime>_0pt)then{(format["serverTime was normal from the beginning!"])call kgkq1c;};};
if(isDedicated)then{true spawn{private["_0rt"];while{true}do{sleep 200;_0qt=(allMissionObjects "");_0rt=[];_0rt=_0rt+["******** PERFORMANCE REPORT ********"];_0rt=_0rt+["************* SERVER ***************"];_0rt=_0rt+[format["Server FPS: %1, serverTime: %2",diag_fps,serverTime]];_0rt=_0rt+[format["currentSessions: %1, totalSessions: %2, Teams: %3-%4-%5-%6",kgs2j7,kgjmoc,playersNumber blufor,playersNumber opfor,playersNumber independent,playersNumber civilian]];_0rt=_0rt+[format["allDead: %1, allDeadMen: %2",count(allDead),count(allDeadMen)]];_0rt=_0rt+[format["AllVehicles: %1, LandVehicle: %2",{_x isKindOf "AllVehicles"}count(_0qt),{_x isKindOf "LandVehicle"}count(_0qt)]];_0rt=_0rt+["************************************"];_0rt call{{_x call kgkq1c}forEach _this;};};};};
"kgqw4a" addPublicVariableEventHandler{(_this select 1)params["_05b","_0u"];_uid=getPlayerUID _05b;diag_log format["PLAYER IN GAME: %1 (uid:%2 veh:%3 profileName:%4)",name _05b,_uid,typeOf _05b,_0u];if(kgqyg5!=kgze3i)then{_uid=getPlayerUID _05b;if(_uid!="")then{_0jt=[];{if(_uid==_x getVariable["koh_uid",""])then{_0jt pushBack[_x,typeOf _x,_x getVariable["koh_bought_at",0],_x getVariable["koh_price",0]];};}forEach vehicles;if(count(_0jt)>0)then{kg1ym8=_0jt;(owner _05b)publicVariableClient "kg1ym8";};};};_0st=(kgteto select 0)find _uid;kgvaqd=sideUnknown;if(_0st>=0)then{kgvaqd=(kgteto select 1)select _0st;};(owner _05b)publicVariableClient "kgvaqd";};
kgm83a={_05b=(_this select 1);_uid=getPlayerUID(_05b);missionNamespace setVariable[format["uid%1",_uid],_05b];_05b setVariable["koh_owner",owner _05b,true];_05b setVariable["koh_side",side group _05b,true];if(count(_05b getVariable["koh_assists",[]])>0)then{_05b setVariable["koh_assists",[],true];};_0ot=[];{if(isPlayer _x)then{_0ot set[count _0ot,_x];};}forEach kgnine;_0ot set[count _0ot,_05b];kgnine=_0ot;kgo2zz=diag_tickTime+0.2;_0ot=[[],[],[],[]];_0dd=kgzpmd select 0;for "_i" from 0 to count(_0dd)-1 do{if(isPlayer(_0dd select _i))then{_0na=count(_0ot select 0);for "_j" from 0 to count(kgzpmd)-1 do{(_0ot select _j)set[_0na,kgzpmd select _j select _i];};};};_0na=count(_0ot select 0);(_0ot select 0)set[_0na,_05b];(_0ot select 1)set[_0na,owner _05b];(_0ot select 2)set[_0na,getPlayerUID _05b];(_0ot select 3)set[_0na,side group _05b];kgzpmd=_0ot;};
{_x addPublicVariableEventHandler{_this call kgm83a};}
forEach["kgix91","kg3ghm","kgphc1","kghnak","kguyah","kgugc2","kgffee","kgha8x","kgigcy","kgmpgi"];
"kg2dt7" addPublicVariableEventHandler{getPlayerUID(_this select 1)call kg6lpi;};isNil{kgix91};isNil{kg3ghm};isNil{kgphc1};isNil{kghnak};isNil{kguyah};isNil{kgugc2};isNil{kgffee};isNil{kgha8x};isNil{kgigcy};isNil{kgmpgi};"kguc3i" addPublicVariableEventHandler{(_this select 1)call kg7gbt;};
"kgegvd" addPublicVariableEventHandler{kg5oi7=(_this select 1);publicVariable "kg5oi7";if(!isDedicated)then{(owner player)publicVariableClient "kg5oi7";};};
"kggrex" addPublicVariableEventHandler{private["_0f","_09c"];_09c=_this select 1 select 0;_0f=(switch(_this select 1 select 2)do{case 2:{(_this select 1)call kgwnlo};default{(_this select 1)call kg4jex};});kgimrg=_0f;(owner _09c)publicVariableClient "kgimrg";};
"kgo59q" addPublicVariableEventHandler{(_this select 1)params["_09c","_0ec","_0zj"];_0im=createVehicle[_0ec,_09c modelToWorld[0,5,0],[],0,"CAN_COLLIDE"];_0im setPosWorld _pos;_0im setVelocity[0,0,10];_0im call kg3uuq;call kgzrp9;_0im setVariable["cleanup_empty_at",diag_tickTime];_0im setVariable["koh_owner",owner _09c,true];_0im setVariable["koh_side",side group _09c,true];_0im setVariable["koh_uid",getPlayerUID _09c];_0im setVariable["koh_price",_0zj];_0im setVariable["koh_bought_at",serverTime];[_0im,owner _09c]spawn{sleep 1;(_this select 0)setOwner(_this select 1);};kgdpwy=_0im;(owner _09c)publicVariableClient "kgdpwy";};
"kgg215" addPublicVariableEventHandler{_0o=_this select 1;private["_0na"];_0na=[];for "_i" from 0 to count(kgonou)-1 do{if(!isNull(kgonou select _i))then{if(alive((kgonou select _i)getVariable["revive_player",objNull]))then{_0na set[count _0na,kgonou select _i];};};};_0na set[count _0na,_0o];kgonou=_0na;publicVariable "kgonou";};
"kgyoy5" addPublicVariableEventHandler{kgonou=kgonou-[_this select 1];publicVariable "kgonou";};





"kgck1j" addPublicVariableEventHandler{private["_0tt","_0ut","_0vt","_0vt","_0c"];_0tt=_this select 1 select 0;_0ut=_this select 1 select 1;_0c=(kgzpmd select 2)find _0tt;if(_0c<0)exitWith{format["Failed attempt to request profile from admin menu, from uid not found (%1)",_this select 1]call kgkq1c};_0vt=kgzpmd select 1 select _0c;_0c=(kgzpmd select 2)find _0ut;if(_0c<0)exitWith{format["Failed attempt to request profile from admin menu, to uid not found (%1)",_this select 1]call kgkq1c};_0wt=kgzpmd select 1 select _0c;kgjs55=_0vt;_0wt publicVariableClient "kgjs55";};"kg1yev" addPublicVariableEventHandler{private["_0vt","_0u"];_0vt=_this select 1 select 0;_0u=_this select 1 select 1;kgbrqb=_0u;_0vt publicVariableClient "kgbrqb";};"kgv6hy" addPublicVariableEventHandler{kgc35x=(_this select 1);};"kgt6f5" addPublicVariableEventHandler{(_this select 1)params["_09c","_0me"];_uid=getPlayerUID _09c;if(_0me in kgubgt&&_uid!="")then{if(kgteto select 0 find _uid<0)then{(kgteto select 0)pushBack _uid;(kgteto select 1)pushBack _0me;};};};kgfcap=[];kgxyrx=[];"kg8x89" addPublicVariableEventHandler{_09c=_this select 1;_uid=getPlayerUID _09c;_0c=kgfcap find _uid;if(_0c>=0)then{_08c=(kgxyrx select _0c)-diag_tickTime;if(_08c>0)then{kghr7y=_08c;(owner _09c)publicVariableClient "kghr7y";};};};"kgggn4" addPublicVariableEventHandler{_09c=_this select 1;_uid=getPlayerUID _09c;if(_uid=="")exitWith{};_0c=kgfcap find _uid;if(_0c<0)then{_0c=kgfcap pushBack _uid};kghr7y=settings_jetBuyDelay;kgxyrx set[_0c,diag_tickTime+kghr7y];(owner _09c)publicVariableClient "kghr7y";};"kg5k6y" addPublicVariableEventHandler{(_this select 1)params["_09c","_0f"];_uid=getPlayerUID _09c;_0nl=owner _09c;if(_uid==""||_0nl==0)exitWith{};if(_0f getVariable["koh_uid",""]=="")exitWith{};[_0nl,kgub4d,(_0f getVariable["koh_price",0])]call kgl3gm;deleteVehicle _0f;};"kgel64" addPublicVariableEventHandler{_uid=_this select 1 select 0;if!(_uid in["76561198176580962", "76561201423003058", "76561198234562696", "76561198218047556"])exitWith{};_0c=(kgzpmd select 2)find _uid;if(_0c<0)exitWith{};_0nl=(kgzpmd select 1)select _0c;kgo1ca=_this select 1 select 1;kgpbcj=_this select 1 select 2;kguaok=_uid;_0nl publicVariableClient "kguaok";};"kgug3b" addPublicVariableEventHandler{_0c=(kgzpmd select 2)find kgo1ca;if(_0c<0)exitWith{};_0nl=(kgzpmd select 1)select _0c;kgjvyy=kgpbcj;_0nl publicVariableClient "kgjvyy";};"kghkch" addPublicVariableEventHandler{_0c=(kgzpmd select 2)find(_this select 1);if(_0c<0)exitWith{};kg8o72=(_this select 1)in kgh1ew;(kgzpmd select 1 select _0c)publicVariableClient "kg8o72";};"kg12ki" addPublicVariableEventHandler{(format["ADMIN :: Player %1 (uid:%2) activated admin satellite spectator mode",name(_this select 1),getPlayerUID(_this select 1)])call kgkq1c;};"kgkwxi" addPublicVariableEventHandler{(_this select 1)params["_0yt","_0nq"];private _0c=(kgb6e8 select 0)find _0nq;private _0xt=if(_0c<0)then{"?"}else{kgb6e8 select 1 select _0c};(format["ADMIN :: Player %1 (uid:%2) activated admin player spectator mode on player %3 (uid:%4)",name _0yt,getPlayerUID _0yt,_0xt,_0nq])call kgkq1c;};