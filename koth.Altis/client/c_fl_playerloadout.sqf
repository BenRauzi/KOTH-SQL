/*
	ArmA 3 King of Hill
	Code written by Sa-Matra
	Using this code without Sa-Matra's direct permission is forbidden
	
	Special build for Gamed.de
	
	Build ETYKMBSIGDHGNALL
*/
#include "hpp\idcs.hpp"
#include "hpp\defines.hpp"
kgl9rw={if({getNumber(configFile>>"CfgWeapons">>_x>>"ItemInfo">>"type")==616}count getArray(configFile>>"CfgWeapons">>headgear player>>"subItems")==0)then{player addWeapon(switch(true)do{case(call kgntp1):{if(side group player==opfor)exitWith{"O_NVGoggles_ghex_F"};"NVGoggles_tna_F"};case(side group player==opfor):{"NVGoggles_OPFOR"};case(side group player==independent):{"NVGoggles_INDEP"};default{"NVGoggles"};});};};kgfx6i={removeAllItems player;removeAllWeapons player;{player removeMagazine _x}forEach(magazines player);if(call kgyb9y)then{call kgl9rw};switch(true)do{case(kglhzb in kgge9y):{player addMagazine "Laserbatteries";player addWeapon "Laserdesignator";};case(kgdapy in kgge9y):{player addWeapon "Rangefinder";};default{player addWeapon "Binocular";};};if(kg1pnr!="")then{private["_0c"];_0c=[kg1pnr,database_loadout_secondaryWeapons]call kgyf1p;if(_0c!=-1)then{(database_loadout_secondaryWeapons select _0c)call kgpy82;};};{for "_i" from 1 to(_x select 1)do{player addItem(_x select 0);};}forEach(call database_loadout_itemsLoadout);if(kg14aj!="")then{private["_0c","_0ae","_0wh","_0xh","_0mb","_0yh"];_0c=[kg14aj,database_loadout_primaryWeapons]call kgyf1p;if(_0c!=-1)then{_0ae=(database_loadout_primaryWeapons select _0c);_0ae call kgpy82;_0wh=false;_0xh=call(_0ae select 1);_0mb=configFile>>"CfgWeapons">>_0xh>>"LinkedItems";for "_i" from 0 to count(_0mb)-1 do{_0yh=getText((_0mb select _i)>>"item");if(getNumber(configFile>>"CfgWeapons">>_0yh>>"ItemInfo">>"type")==302)then{if(kgge9y find kgsdew==-1)then{player removePrimaryWeaponItem _0yh;};_0wh=true;};};{if(_x!="")then{player addPrimaryWeaponItem _x;};}forEach[kgmtb2,call(_0ae select 10),call(_0ae select 11)];if(!_0wh&&kgge9y find kgsdew>=0)then{player addPrimaryWeaponItem "bipod_01_F_blk";};};};if(kgatq5!="")then{private["_0c"];_0c=[kgatq5,database_loadout_handgunWeapons]call kgyf1p;if(_0c!=-1)then{(database_loadout_handgunWeapons select _0c)call kgpy82;};};{player addMagazines _x;}forEach(call database_loadout_magazinesLoadout);};kgpy82={private _0xh=call(_this select 1);private _0bc=+call(_this select 8);private _0zh=getArray(configFile>>"CfgWeapons">>_0xh>>"muzzles");private _01h=[];{if(_x select 0 isEqualType[])then{(_0bc select _forEachIndex)set[0,(_x select 0)select([blufor,opfor,independent]find playerSide)];};}forEach _0bc;{_02h=getArray(if(_x=="this")then{configFile>>"CfgWeapons">>_0xh>>"magazines"}else{configFile>>"CfgWeapons">>_0xh>>_x>>"magazines"})apply{toLower _x};{if(_x select 1>0&&toLower(_x select 0)in _02h)exitWith{_01h pushBack(_x select 0);(_0bc select _forEachIndex)set[1,(_0bc select _forEachIndex select 1)-1];};}forEach _0bc;}forEach _0zh;{(uniformContainer player)addMagazineCargo[_x,1]}forEach _01h;player addWeapon _0xh;{player addMagazines _x}forEach _0bc;};kg3g1m={private _03h=[];private _04h=_03h pushBack[];private _05h=_03h pushBack[];private _06h=_03h pushBack[];private _07h=_03h pushBack[];private _08h=_03h pushBack[];private _0v;{_x params["_0xh","_09h","_0bi"];if(_0xh!="")then{private _0c=[_0xh,_09h]call kgyf1p;if(_0c<0)exitWith{};private _0ae=(_09h select _0c);private _0ec=call(_0ae select 1);private _0bc=call(_0ae select 8)apply{[toLower(if((_x select 0)isEqualType[])then{(_x select 0)select([blufor,opfor,independent]find playerSide)}else{_x select 0;}),_x select 1];};{_0ai=getArray(if(_x=="this")then{configFile>>"CfgWeapons">>_0ec>>"magazines"}else{configFile>>"CfgWeapons">>_0ec>>_x>>"magazines"})apply{toLower _x};{if(_x select 1>0&&_x select 0 in _0ai)exitWith{(_0bc select _forEachIndex)set[1,(_0bc select _forEachIndex select 1)-1];};}forEach _0bc;}forEach getArray(configFile>>"CfgWeapons">>_0ec>>"muzzles");_0v=_03h select _0bi;{for "_i" from 1 to(_x select 1)do{_0v pushBack(_x select 0);};}forEach _0bc;};}forEach[[kg14aj,database_loadout_primaryWeapons,_06h],[kg1pnr,database_loadout_secondaryWeapons,_04h],[kgatq5,database_loadout_handgunWeapons,_07h]];_0v=_03h select _08h;{for "_i" from 1 to(_x select 1)do{_0v pushBack(_x select 0);};}forEach(call database_loadout_magazinesLoadout);_0v=_03h select _05h;{for "_i" from 1 to(_x select 1)do{_0v pushBack(_x select 0);};}forEach(call database_loadout_itemsLoadout);private _0ci=call kgejuq;private _0di=[_0ci select 0,_0ci select 1,1e39];private _0ei=_0di apply{0};private["_0mb","_0hi","_0ii","_0bi"];private _0fi=[0,1,2];{_0bi=_forEachIndex;{_0gi=_x;_0mb=(if(_0bi==_05h)then{configFile>>"CfgWeapons">>_x>>"ItemInfo";}else{configFile>>"CfgMagazines">>_x;});_0hi=[];{_0hi pushBack(switch(_x)do{case 801:{0};case 701:{1};case 901:{2};});}forEach getArray(_0mb>>"allowedSlots");if(count _0hi==0)then{_0hi=_0fi};_0ii=getNumber(_0mb>>"mass");{if(_forEachIndex in _0hi&&(_0ei select _forEachIndex)+_0ii<=(_0di select _forEachIndex))exitWith{_0ei set[_forEachIndex,(_0ei select _forEachIndex)+_0ii];};}forEach _0ei;}forEach _x;}forEach _03h;private _0ji=_0ei select 2;if(_0ji==0)exitWith{0};private _0ba=(for "_i" from 2 to count(_0ci)-1 do{if(_0ci select _i>=_0ji)exitWith{_i-2+1;};});if(isNil "_0ba")then{_0ba=0};_0ba;};kg1iqk={private["_0ii"];_0ii=10;{private["_0xh","_09h"];_0xh=_x select 0;_09h=_x select 1;if(_0xh!="")then{private["_0c"];_0c=[_0xh,_09h]call kgyf1p;if(_0c!=-1)then{private["_0ae","_0ki","_0li"];_0ae=(_09h select _0c);_0ki=call(_0ae select 8);_0li=false;{for "_i" from 1 to(_x select 1)do{if(_0li)then{_0ec=(if(typeName(_x select 0)==typeName[])then{(_x select 0)select([blufor,opfor,independent]find playerSide);}else{(_x select 0);});_0ii=_0ii+getNumber(configFile>>"CfgMagazines">>_0ec>>"mass");}else{_0li=true;};};}forEach _0ki;};};}forEach[[kg14aj,database_loadout_primaryWeapons],[kg1pnr,database_loadout_secondaryWeapons],[kgatq5,database_loadout_handgunWeapons]];{for "_i" from 1 to(_x select 1)do{_0ii=_0ii+getNumber(configFile>>"CfgWeapons">>(_x select 0)>>"ItemInfo">>"mass");};}forEach(call database_loadout_itemsLoadout);{for "_i" from 1 to(_x select 1)do{_0ii=_0ii+getNumber(configFile>>"CfgMagazines">>(_x select 0)>>"mass");};}forEach(call database_loadout_magazinesLoadout);_0ii};kgozi8={call kgv7w3;if({if((database_loadout_primaryWeapons select _x select 0)==kg14aj)exitWith{1}}count(database_loadout_primaryWeapons call kgpalf)==0)then{call kg3n2s;};_0mi=kg14aj call kgq6oo;if!(kgmtb2 in _0mi)then{kgmtb2="";};if({if((database_loadout_secondaryWeapons select _x select 0)==kg1pnr)exitWith{1}}count(database_loadout_secondaryWeapons call kgpalf)==0)then{call kgci92;};if({if((database_loadout_handgunWeapons select _x select 0)==kgatq5)exitWith{1}}count(database_loadout_handgunWeapons call kgpalf)==0)then{call kgx9qn;};};kg8ymg={call kg3n2s;call kgci92;call kgx9qn;};kg3n2s={kg14aj=[kgvlym,database_loadout_primaryWeapons]call kg85ew;if(kg14aj=="")then{private["_0ni"];_0ni=database_loadout_primaryWeapons call kgpalf;if(count(_0ni)==0)then{_0ni=[0]};kg14aj=database_loadout_primaryWeapons select(_0ni select 0)select 0;};private["_0mi"];_0mi=kg14aj call kghqst;kgmtb2="";};kgci92={kg1pnr="";};kgx9qn={kgatq5="";};kg85ew={private["_0oi","_09h","_0ni"];_0oi=_this select 0;_09h=_this select 1;_0ni=[];{if((_09h select _x select 0)in _0oi)then{_0ni set[count _0ni,_x];};}forEach(_09h call kgpalf);(if(count(_0ni)==0)then{""}else{(_09h select(_0ni select 0)select 0)})};kgpalf={private["_0ba"];_0ba=[];for "_i" from 0 to count(_this)-1 do{if({if(_x==(_this select _i select 0))exitWith{1}}count kg26ki==0)then{if(call(_this select _i select 4))then{if(({if(kgge9y find _x==-1)exitWith{_x}}forEach((_this select _i select 3)+[-1]))==-1)then{if(kgsoxm>=call(_this select _i select 2))then{_0ba set[count _0ba,_i];};};};};};_0ba};kghqst={private["_0c"];_0c=[kg14aj,database_loadout_primaryWeapons]call kgyf1p;if(_0c==-1)exitWith{[]};private["_0xh","_0pi","_0ri","_0qi","_0oi"];_0xh=database_loadout_primaryWeapons select _0c;_0pi=[];_0qi=_this call kgfwl4;_0oi=(if(_0qi==-1)then{[]}else{kgtt65 select _0qi select 1});{_0ri=_x;if(call(_0ri select 3))then{private["_0g","_0pe"];_0g=(call(_0xh select 2))call(_0ri select 1);_0pe={if(kgge9y find _x==-1)exitWith{_x}}forEach((_0ri select 2)+[-1]);if((_0pe==-1)&&(kgsoxm>=_0g))then{if({if(_x==(_0ri select 0))exitWith{1}}count _0oi==1)then{_0pi=_0pi+[_0ri select 0];};};};}forEach(_0xh select 9);_0pi};kgq6oo={private["_0c"];_0c=[kg14aj,database_loadout_primaryWeapons]call kgyf1p;if(_0c==-1)exitWith{[]};private["_0xh","_0pi","_0ri"];_0xh=database_loadout_primaryWeapons select _0c;_0pi=[];{_0ri=_x;if(call(_0ri select 3))then{private["_0g","_0pe"];_0g=(call(_0xh select 2))call(_0ri select 1);_0pe={if(kgge9y find _x==-1)exitWith{_x}}forEach((_0ri select 2)+[-1]);if((_0pe==-1)&&(kgsoxm>=_0g))then{_0pi=_0pi+[_0ri select 0];};};}forEach(_0xh select 9);_0pi};kg1alr={_0c=[kg14aj,database_loadout_primaryWeapons]call kgyf1p;if(_0c==-1)exitWith{""};call(database_loadout_primaryWeapons select _0c select 1);};kgd64g={_0c=[kg1pnr,database_loadout_secondaryWeapons]call kgyf1p;if(_0c==-1)exitWith{""};call(database_loadout_secondaryWeapons select _0c select 1);};kghv5l={_0c=[kgatq5,database_loadout_handgunWeapons]call kgyf1p;if(_0c==-1)exitWith{""};call(database_loadout_handgunWeapons select _0c select 1);};kgorjn={private["_0c"];_0c=-1;for "_i" from 0 to count(_this select 1)-1 do{if((_this select 1)select _i==(_this select 0))exitWith{_0c=_i;};};_0c};kgwj6n={[_this,database_loadout_primaryWeapons]call kgyf1p;};kgyf1p={private["_0c"];_0c=-1;for "_i" from 0 to count(_this select 1)-1 do{if((_this select 1)select _i select 0==(_this select 0))exitWith{_0c=_i;};};_0c};kg799q={private["_0c"];_0c=-1;for "_i" from 0 to count(_this select 1)-1 do{if((_this select 0)==(_this select 1 select _i select 0))exitWith{_0c=_i;};};_0c};kgfwl4={private["_0c"];_0c=-1;for "_i" from 0 to count(kgtt65)-1 do{if(kgtt65 select _i select 0==_this)exitWith{_0c=_i;};};_0c};kg4mad={private["_0si","_0xh","_0ti","_0qi","_0oi"];_0si=(_this call kgwj6n);_0xh=database_loadout_primaryWeapons select _0si;_0ti=(database_loadout_primaryWeapons select _0si select 9);_0qi=_this call kgfwl4;_0oi=(if(_0qi==-1)then{[]}else{kgtt65 select _0qi select 1});private["_0ui","_0ni","_0vi"];_0ui=0;_0ni=0;_0vi=0;{private["_0ri"];_0ri=_x;if(call(_0ri select 3))then{private["_0g","_0pe"];_0g=(call(_0xh select 2))call(_0ri select 1);_0pe={if(kgge9y find _x==-1)exitWith{_x}}forEach((_0ri select 2)+[-1]);if((_0pe==-1)&&(kgsoxm>=_0g))then{if({if(_x==(_0ri select 0))exitWith{1}}count _0oi==1)then{_0vi=_0vi+1;};_0ni=_0ni+1;};_0ui=_0ui+1;};}forEach _0ti;[_0ui,_0ni,_0vi]};
#define kg4pz4		0
#define kg28ns		1
#define kgxqda	2
#define kgle13			3
#define kgqjqj		4
kgywkd=[kgx8fd,kgl6cx,kgwqiv,kgvdl3,kg6kfq,kgz6ev,kg36h7,kgzlru,kgbn8a,kg8wdu,kgsajt,kg83lj,kgnhb5,kgbfpu];kgmdm6=[kgt1a4,kg5sk7,kg653w,kg6b8x,kg94ps,kg2z2s,kgbmfm,kgdid8];kgb7gr={disableSerialization;private["_0a"];_0a=_this;[_0a,""]call bis_fnc_guiEffectTiles;(_0a displayCtrl kgwhz6)ctrlShow false;(_0a displayCtrl kgx5th)ctrlShow false;(_0a displayCtrl kgz8xe)ctrlSetText kgfmtd;(_0a displayCtrl kgz8xe)ctrlShow!isStreamFriendlyUIEnabled;kg2tin=[];for "_i" from 0 to count(kgywkd)-1 do{kg2tin set[_i,ctrlPosition(_0a displayCtrl(kgywkd select _i))];};kgrxu2=[];for "_i" from 0 to count(kgmdm6)-1 do{kgrxu2 set[_i,ctrlPosition(_0a displayCtrl(kgmdm6 select _i))];};kga2rz=[(profilenamespace getvariable["GUI_BCG_RGB_R",0.3843]),(profilenamespace getvariable["GUI_BCG_RGB_G",0.7019]),(profilenamespace getvariable["GUI_BCG_RGB_B",0.8862]),1];kgq953=false;kgnvb7=call kg3g1m;0 call kg49is;call kgoqb8;};kgrqp1={call kgozi8;if(kgq953)then{call kgttgb;switch(call kg3g1m)do{case(kgnvb7):{};default{call kg2nt4;call kgdqcx;};};call kgfx6i;};};kg49is={kgk7wp=_this;disableSerialization;private["_0a"];_0a=uiNamespace getVariable "KingOfHill_Loadout";(_0a displayCtrl kgwhz6)ctrlShow false;(_0a displayCtrl kgx5th)ctrlShow false;switch(_this)do{case 0:{private["_0wi"];_0wi=[];for "_i" from 0 to count(database_loadout_primaryWeapons)-1 do{if(call(database_loadout_primaryWeapons select _i select 4))then{private["_04c"];_04c=[(database_loadout_primaryWeapons select _i),kgvlym,kg14aj]call kg29nh;_0wi set[count _0wi,[_i,_04c]];};};kggjnq=_0wi;(_0a displayCtrl kgwhz6)ctrlShow true;call kgvf72;};case 1:{private["_0wi","_06h","_0xi","_0ti","_0oi","_0yi"];_0wi=[];_06h=kg14aj call kgwj6n;_0xi=kg14aj call kgfwl4;if(_06h==-1)exitWith{systemChat "Illegal weapon";};_0ti=database_loadout_primaryWeapons select _06h select 9;_0oi=(if(_0xi==-1)then{[]}else{kgtt65 select _0xi select 1});_0yi=call(database_loadout_primaryWeapons select _06h select 2);_0wi set[count _0wi,[-1,call kgjfuh]];for "_i" from 0 to count(_0ti)-1 do{if(call(_0ti select _i select 3))then{private["_04c"];_04c=[_0ti select _i,_0oi,_0yi,kgmtb2]call kghzti;_0wi set[count _0wi,[_i,_04c]];};};kgr7uh=_0wi;(_0a displayCtrl kgx5th)ctrlShow true;call kgbm94;};case 2:{private["_0wi"];_0wi=[];for "_i" from 0 to count(database_loadout_secondaryWeapons)-1 do{if(call(database_loadout_secondaryWeapons select _i select 4))then{private["_04c"];_04c=[(database_loadout_secondaryWeapons select _i),kgyepb,kg1pnr]call kg29nh;_0wi set[count _0wi,[_i,_04c]];};};kggjnq=_0wi;(_0a displayCtrl kgwhz6)ctrlShow true;call kgvf72;};case 3:{private["_0wi"];_0wi=[];for "_i" from 0 to count(database_loadout_handgunWeapons)-1 do{if(call(database_loadout_handgunWeapons select _i select 4))then{private["_04c"];_04c=[(database_loadout_handgunWeapons select _i),kgoewf,kgatq5]call kg29nh;_0wi set[count _0wi,[_i,_04c]];};};kggjnq=_0wi;(_0a displayCtrl kgwhz6)ctrlShow true;call kgvf72;};};};kg6uxj={format["<t color='#aaffaa'>%1 $</t>",_this];};kg29nh={private["_04c","_0oi","_0zi","_02c","_0ve","_0pe","_01i","_0g","_displaymagazine","_03i","_04i","_05i","_06i","_07i"];_04c=_this select 0;_0oi=_this select 1;_0zi=_this select 2;_01i=call(_04c select 1);_0g=call(_04c select 2);_02i=call(_04c select 7);_03i=getText(configFile>>"CfgWeapons">>_01i>>"displayname");_02c=-1;_0ve="";_0pe={if(kgge9y find _x==-1)exitWith{_x}}forEach((_04c select 3)+[-1]);switch(true)do{case({if(_x==(_04c select 0))exitWith{1}}count kg26ki>0):{_02c=kg4pz4;_0ve="<br/>DISABLED";};case(_0pe!=-1):{_02c=kg4pz4;_0ve=(format["<br/>需要""%1""技能",database_loadout_perksList select(database_loadout_perksIndexes find _0pe)select 4]);};case(kgsoxm<_0g):{_02c=kg4pz4;_0ve=(format["<br/>需要达到 %1 级",_0g]);};default{_02c=(if([(_04c select 0),_0oi]call kgorjn!=-1)then{if((_04c select 0)==_0zi)then{kgqjqj}else{kgle13};}else{if((_04c select 0)==_0zi)then{kgxqda}else{kg28ns};});};};_04i=(configFile>>"CfgWeapons">>_01i>>"LinkedItems");_05i=[];for "_i" from 0 to count(_04i)-1 do{_05i set[count _05i,getText(configFile>>"CfgWeapons">>getText((_04i select _i)>>"item")>>"displayname")];};if(count(_05i)>0)then{_03i=format["%1, %2",_03i,_05i select 0];};_06i=[];_07i="";if(kgk7wp==0)then{_06i=(_04c select 0)call kg4mad;_08i=[];if((_06i select 1)>0)then{_08i set[count _08i,format["%1 可用",(_06i select 1)]];};if((_06i select 2)>0)then{_08i set[count _08i,format["%1 已拥有",(_06i select 2)]];};for "_i" from 0 to(count(_08i)-1)do{_07i=_07i+format["%1%2",(switch(true)do{case(_i==0):{""};default{", "};}),_08i select _i];};_07i=(if(_07i=="")then{"该武器无可用瞄具"}else{format["瞄具: %1",_07i]});};[_02c,_0ve,getText(configFile>>"CfgWeapons">>_01i>>"picture"),getText(configFile>>"CfgMagazines">>(_02i select 0)>>"picture"),_03i,format["%1x %2",(_02i select 1),getText(configFile>>"CfgMagazines">>(_02i select 0)>>"displayname")],call(_04c select 5),call(_04c select 6),_06i,_07i]};kgvf72={disableSerialization;private["_0a","_09i"];_0a=uiNamespace getVariable "KingOfHill_Loadout";_09i=((kg2tin select(kgywkd find kgbn8a))select 3)-(SafeZoneH/(getResolution select 3))*2;for "_i" from 0 to 99 do{private["_0aj","_0bj","_0cj","_0dj","_0ej","_0fj","_0gj","_0hj","_0ve","_0ij","_0jj","_0kj","_0lj","_0mj","_0we"];_0aj=_0a displayCtrl kgx8fd+_i;_0bj=_0a displayCtrl kgl6cx+_i;_0cj=_0a displayCtrl kgwqiv+_i;_0dj=_0a displayCtrl kgvdl3+_i;_0ej=_0a displayCtrl kg6kfq+_i;_0fj=_0a displayCtrl kgz6ev+_i;_0gj=_0a displayCtrl kg36h7+_i;_0hj=_0a displayCtrl kgzlru+_i;_0ve=_0a displayCtrl kgbn8a+_i;_0ij=_0a displayCtrl kg8wdu+_i;_0jj=_0a displayCtrl kgsajt+_i;_0kj=_0a displayCtrl kg83lj+_i;_0lj=_0a displayCtrl kgnhb5+_i;_0mj=_0a displayCtrl kgbfpu+_i;_0we=[_0aj,_0bj,_0cj,_0dj,_0ej,_0fj,_0gj,_0hj,_0ve,_0ij,_0jj,_0kj,_0lj,_0mj];if(_i<count(kggjnq))then{for "_j" from 0 to count(_0we)-1 do{_pos=+(kg2tin select _j);_pos set[1,(_09i*_i)+(_pos select 1)];(_0we select _j)ctrlSetPosition _pos;(_0we select _j)ctrlCommit 0;};private["_04c"];_04c=(kggjnq select _i)select 1;_0aj ctrlSetText(_04c select 2);_0bj ctrlSetText(_04c select 3);_0cj ctrlSetText(_04c select 4);_0dj ctrlSetText(_04c select 5);_0gj ctrlSetBackgroundColor[0,0,0,0];_0hj ctrlSetBackgroundColor[0,0,0,0];switch(_04c select 0)do{case kg28ns:{_0ej ctrlShow true;_0ej ctrlSetText "单次购买";_0gj ctrlSetStructuredText parseText((_04c select 6)call kg6uxj);_0fj ctrlSetText "永久购买";_0hj ctrlSetStructuredText parseText((_04c select 7)call kg6uxj);};case kgxqda:{_0ej ctrlShow false;_0gj ctrlSetStructuredText parseText "已装备";_0gj ctrlSetBackgroundColor kga2rz;_0gj ctrlSetPosition(ctrlPosition _0ej);_0gj ctrlCommit 0;_0fj ctrlSetText "永久购买";_0hj ctrlSetStructuredText parseText((_04c select 7)call kg6uxj);};case kgle13:{_0ej ctrlShow true;_0ej ctrlSetText "装备";_0gj ctrlSetStructuredText parseText "";_0fj ctrlShow false;_0hj ctrlSetStructuredText parseText "已拥有";_0hj ctrlSetTextColor[0,0,0,1];_0hj ctrlSetBackgroundColor[1,1,1,1];_0hj ctrlSetPosition(ctrlPosition _0fj);_0hj ctrlCommit 0;};case kgqjqj:{_0ej ctrlShow false;_0gj ctrlSetStructuredText parseText "已装备";_0gj ctrlSetBackgroundColor kga2rz;_0gj ctrlSetPosition(ctrlPosition _0ej);_0gj ctrlCommit 0;_0fj ctrlShow false;_0hj ctrlSetStructuredText parseText "已拥有";_0hj ctrlSetTextColor[0,0,0,1];_0hj ctrlSetBackgroundColor[1,1,1,1];_0hj ctrlSetPosition(ctrlPosition _0fj);_0hj ctrlCommit 0;};};if((_04c select 0)==kg4pz4||kgk7wp!=0)then{_0ij ctrlShow false;_0jj ctrlShow false;_0kj ctrlShow false;_0lj ctrlShow false;_0mj ctrlShow false;}else{private["_06i","_07i"];_06i=(_04c select 8);_07i=(_04c select 9);_0kj progressSetPosition(if((_06i select 0)>0)then{((_06i select 2)/(_06i select 0))}else{0});_0mj ctrlSetStructuredText parseText _07i;};if((_04c select 0)!=kg4pz4)then{_0ve ctrlShow false;}else{_0ve ctrlSetStructuredText parseText(_04c select 1);_0ej ctrlShow false;_0fj ctrlShow false;_0gj ctrlShow false;_0hj ctrlShow false;};}else{{_x ctrlShow false;_x ctrlSetPosition[0,0,-0.1,-0.1];_x ctrlCommit 0;}forEach _0we;};};};kguk5f={private["_0c","_0te","_0nj","_0ae","_0hk","_0oj","_0pj","_0qj","_0rj","_0uj","_0sj"];_0c=_this select 0;_0te=_this select 1;if!(kgk7wp in[0,2,3])exitWith{};_0nj=(switch(kgk7wp)do{case 0:{database_loadout_primaryWeapons};case 2:{database_loadout_secondaryWeapons};case 3:{database_loadout_handgunWeapons};});_0oj=(kggjnq select _0c select 0);_0ae=_0nj select _0oj;_0pj=false;_0qj=false;_0rj=[];_0sj=-1;_0tj=(switch(kgk7wp)do{case 0:{kg14aj};case 2:{kg1pnr};case 3:{kgatq5};});if(_0tj!="")then{_0sj=[_0tj,_0nj]call kgyf1p;if(_0sj!=-1)then{_0pj=true;_0qj=(_0tj in(switch(kgk7wp)do{case 0:{kgvlym};case 2:{kgyepb};case 3:{kgoewf};}));_0rj=(_0nj select _0sj);};};_0uj=(if(_0pj&&!_0qj)then{call(_0rj select 5)}else{0});if(_0tj in kgpxsd)then{kgpxsd=kgpxsd-[_0tj];_0uj=_0uj*database_loadout_discountPerkMultiplier;};private["_0vj","_0wj","_0xj","_0yj"];_0vj=kggjnq select _0c select 1 select 0;_0wj="";_0xj=false;_0yj=false;switch(true)do{case(_0vj in[kg28ns]&&_0te==0):{private["_0zj"];_0zj=call(_0ae select 5);if(kg4re9>=(_0zj-_0uj))then{kg4re9=kg4re9-_0zj+_0uj;call kgm9k5;playSound "KOH_Cash";_0yj=true;_0wj=_0ae select 0;}else{false call kgbz2a;};};case(_0vj in[kg28ns,kgxqda]&&_0te==1):{private["_0zj"];_0zj=call(_0ae select 6);if(kg4re9>=(_0zj-_0uj))then{kg4re9=kg4re9-_0zj+_0uj;call kgm9k5;playSound "KOH_Cash";_0yj=true;_0wj=_0ae select 0;_0xj=true;}else{false call kgbz2a;};};case(_0vj in[kgle13]&&_0te==0):{if(_0uj>0)then{kg4re9=kg4re9+_0uj;call kgm9k5;playSound "KOH_Cash";_0yj=true;};_0wj=_0ae select 0;};};if(_0wj!="")then{switch(kgk7wp)do{case 0:{if(kgmtb2!="")then{private["_0qi","_01j"];_0qi=(kg14aj call kgfwl4);_01j=(if(_0qi==-1)then{[]}else{kgtt65 select _0qi select 1});if({kgmtb2==_x}count _01j==0)then{private["_0ti","_0xi","_0zj"];_0ti=_0rj select 9;_0xi=[kgmtb2,_0ti]call kg799q;_0zj=call(_0ti select _0xi select 4);if(kgh3tb in kgge9y)then{if(kgmtb2 in kgpxsd)then{kgpxsd=kgpxsd-[kgmtb2];_0zj=_0zj*database_loadout_discountPerkMultiplier;};};kg4re9=kg4re9+_0zj;call kgm9k5;if(!_0yj)then{playSound "KOH_Cash";_0yj=true;};};};kg14aj=_0wj;kgmtb2="";};case 2:{kg1pnr=_0wj};case 3:{kgatq5=_0wj};};if(_0xj)then{switch(kgk7wp)do{case 0:{kgvlym set[count kgvlym,_0wj];};case 2:{kgyepb set[count kgyepb,_0wj];};case 3:{kgoewf set[count kgoewf,_0wj];};};};private["_02j"];_02j=(switch(kgk7wp)do{case 0:{kgvlym};case 2:{kgyepb};case 3:{kgoewf};});kggjnq set[_0c,[_0oj,[_0ae,_02j,_0wj]call kg29nh]];if(_0oj!=_0sj)then{private["_03j"];_03j=-1;for "_i" from 0 to count(kggjnq)-1 do{if(kggjnq select _i select 0==_0sj)exitWith{_03j=_i;};};if(_03j!=-1)then{kggjnq set[_03j,[_0sj,[_0rj,_02j,_0wj]call kg29nh]];};};kgq953=true;call kgozi8;call kgvf72;call kgoqb8;};};kghzti={private["_04j","_0oi","_0yi","_0ke","_0ae","_02c","_0ve","_0pe","_0g","_05j","_06j","_07j"];_04j=_this select 0;_0oi=_this select 1;_0yi=_this select 2;_0ke=_this select 3;_0ae=configFile>>"CfgWeapons">>(_04j select 0);_02c=-1;_0ve="";_0g=_0yi call(_04j select 1);_0pe={if(kgge9y find _x==-1)exitWith{_x}}forEach((_04j select 2)+[-1]);switch(true)do{case(_0pe!=-1):{_02c=kg4pz4;_0ve=(format["<br/>""%1"" REQUIRED",database_loadout_perksList select(database_loadout_perksIndexes find _0pe)select 4]);};case(kgsoxm<_0g):{_02c=kg4pz4;_0ve=(format["<br/>需要达到 %1 级",_0g]);};default{_02c=(if(({(_04j select 0)==_x}count _0oi)>0)then{if((_04j select 0)==_0ke)then{kgqjqj}else{kgle13};}else{if((_04j select 0)==_0ke)then{kgxqda}else{kg28ns};});};};_05j=getText(_0ae>>"picture");_06j=getText(_0ae>>"displayname");_07j=getText(_0ae>>"descriptionshort");[_02c,_0ve,_05j,_06j,_07j,call(_04j select 4),call(_04j select 5)]};kgjfuh={[(if(kgmtb2=="")then{kgqjqj}else{kgle13}),"","","机瞄","未加装瞄具","",""]};
#define kg4pz4		0
#define kg28ns		1
#define kgxqda	2
#define kgle13			3
#define kgqjqj		4
kgbm94={disableSerialization;private["_0a","_08j","_09i","_09j","_0ak","_0bk"];_0a=uiNamespace getVariable "KingOfHill_Loadout";_08j=((kgrxu2 select(kgmdm6 find kgdid8))select 2);_09i=((kgrxu2 select(kgmdm6 find kgdid8))select 3);_09j=_0a displayCtrl kgksfm;_0ak=_0a displayCtrl kgafql;_09j ctrlEnable false;_09j ctrlShow!kgeu6g;_0ak ctrlShow!kgeu6g;_0bk=(if(kgeu6g)then{0}else{((ctrlPosition _09j)select 1)+((ctrlPosition _09j)select 3)});for "_i" from 0 to 99 do{private["_05j","_06j","_07j","_0ck","_0dk","_0ek","_0fk","_0gk","_0we"];_05j=_0a displayCtrl(kgt1a4+_i);_06j=_0a displayCtrl(kg5sk7+_i);_0ck=_0a displayCtrl(kg653w+_i);_0dk=_0a displayCtrl(kg6b8x+_i);_0ek=_0a displayCtrl(kg94ps+_i);_0fk=_0a displayCtrl(kg2z2s+_i);_07j=_0a displayCtrl(kgbmfm+_i);_0gk=_0a displayCtrl(kgdid8+_i);_0we=[_05j,_06j,_0ck,_0dk,_0ek,_0fk,_07j,_0gk];if(_i<count(kgr7uh))then{for "_j" from 0 to count(_0we)-1 do{_pos=+(kgrxu2 select _j);_pos set[0,(_08j*(_i%2))+(_pos select 0)];_pos set[1,_0bk+(_09i*floor(_i/2))+(_pos select 1)];(_0we select _j)ctrlSetPosition _pos;(_0we select _j)ctrlCommit 0;};private["_04c"];_04c=(kgr7uh select _i)select 1;_05j ctrlSetText(_04c select 2);_06j ctrlSetText(_04c select 3);_07j ctrlSetStructuredText parseText(_04c select 4);_0ek ctrlSetBackgroundColor[0,0,0,0];_0fk ctrlSetBackgroundColor[0,0,0,0];switch(_04c select 0)do{case kg28ns:{_0ck ctrlShow true;_0ck ctrlSetText "单次购买";_0ek ctrlSetStructuredText parseText((_04c select 5)call kg6uxj);_0dk ctrlSetText "永久购买";_0fk ctrlSetStructuredText parseText((_04c select 6)call kg6uxj);};case kgxqda:{_0ck ctrlShow false;_0ek ctrlSetStructuredText parseText "已装备";_0ek ctrlSetBackgroundColor kga2rz;_0ek ctrlSetPosition(ctrlPosition _0ck);_0ek ctrlCommit 0;_0dk ctrlSetText "永久购买";_0fk ctrlSetStructuredText parseText((_04c select 6)call kg6uxj);};case kgle13:{_0ck ctrlShow true;_0ck ctrlSetText "装备";_0ek ctrlSetStructuredText parseText "";_0dk ctrlShow false;_0fk ctrlSetStructuredText parseText "已拥有";_0fk ctrlSetTextColor[0,0,0,1];_0fk ctrlSetBackgroundColor[1,1,1,1];_0fk ctrlSetPosition(ctrlPosition _0dk);_0fk ctrlCommit 0;};case kgqjqj:{_0ck ctrlShow false;_0ek ctrlSetStructuredText parseText "已装备";_0ek ctrlSetBackgroundColor kga2rz;_0ek ctrlSetPosition(ctrlPosition _0ck);_0ek ctrlCommit 0;_0dk ctrlShow false;_0fk ctrlSetStructuredText parseText "已拥有";_0fk ctrlSetTextColor[0,0,0,1];_0fk ctrlSetBackgroundColor[1,1,1,1];_0fk ctrlSetPosition(ctrlPosition _0dk);_0fk ctrlCommit 0;};};if((_04c select 0)!=kg4pz4)then{_0gk ctrlShow false;}else{_0gk ctrlSetStructuredText parseText(_04c select 1);_0ck ctrlShow false;_0dk ctrlShow false;_0ek ctrlShow false;_0fk ctrlShow false;};}else{{_x ctrlShow false;_x ctrlSetPosition[0,0,-0.1,-0.1];_x ctrlCommit 0;}forEach _0we;};};};kgsgav={kgeu6g=true;call kgbm94;};kgt1pu={private["_0c","_0te","_0ti","_0vj","_0qi","_0hk","_0ik","_0jk","_0kk","_0lk","_0qk","_0rk","_0mk"];_0c=_this select 0;_0te=_this select 1;if!(kgk7wp in[1])exitWith{};_0ti=database_loadout_primaryWeapons select(kg14aj call kgwj6n)select 9;_0hk=(kgr7uh select _0c select 0);_0ik=[kgmtb2,_0ti]call kg799q;_0qi=kg14aj call kgfwl4;if(_0ik!=-1)then{_0jk=(if(_0qi==-1)then{false}else{({_0ti select _0ik select 0==_x}count(kgtt65 select _0qi select 1)>0)});_0kk=call(_0ti select _0ik select 4);if(kgh3tb in kgge9y)then{_0kk=_0kk*database_loadout_discountPerkMultiplier;};}else{_0jk=false;_0kk=0;};_0lk=(if(_0jk)then{0}else{_0kk});_0mk=false;if(_0hk==-1)then{if(_0lk>0)then{kg4re9=kg4re9+_0lk;call kgm9k5;playSound "KOH_Cash";};kgmtb2="";_0mk=true;private["_0nk","_0ok","_0pk"];_0nk=-1;for "_i" from 0 to count(kgr7uh)-1 do{if(kgr7uh select _i select 0==_0ik)exitWith{_0nk=_i;};};_0ok=call(database_loadout_primaryWeapons select(kg14aj call kgwj6n)select 2);_0pk=(if(_0qi==-1)then{[]}else{kgtt65 select _0qi select 1});kgr7uh set[_0c,[_0hk,call kgjfuh]];if(_0nk!=-1)then{kgr7uh set[_0nk,[_0ik,[_0ti select _0ik,_0pk,_0ok,kgmtb2]call kghzti]];};}else{_0vj=(kgr7uh select _0c select 1 select 0);_0qk="";_0rk=false;switch(true)do{case(_0vj in[kg28ns]&&_0te==0):{private["_0zj"];_0zj=call(_0ti select _0hk select 4);if(kg4re9>=_0zj-_0lk)then{kg4re9=kg4re9-_0zj+_0lk;call kgm9k5;playSound "KOH_Cash";_0qk=_0ti select _0hk select 0;}else{false call kgbz2a;};};case(_0vj in[kg28ns,kgxqda]&&_0te==1):{private["_0zj"];_0zj=call(_0ti select _0hk select 5);if(kg4re9>=_0zj-_0lk)then{kg4re9=kg4re9-_0zj+_0lk;call kgm9k5;playSound "KOH_Cash";_0qk=_0ti select _0hk select 0;_0rk=true;}else{false call kgbz2a;};};case(_0vj in[kgle13]&&_0te==0):{if(_0lk>0)then{kg4re9=kg4re9+_0lk;call kgm9k5;playSound "KOH_Cash";};_0qk=_0ti select _0hk select 0;};};if(_0qk!="")then{kgmtb2=_0qk;_0mk=true;if(_0rk)then{if(_0qi==-1)then{_0qi=count kgtt65;kgtt65 set[_0qi,[kg14aj,[]]];};(kgtt65 select _0qi select 1)set[count(kgtt65 select _0qi select 1),_0qk];};private["_0ok","_0pk"];_0ok=call(database_loadout_primaryWeapons select(kg14aj call kgwj6n)select 2);_0pk=(if(_0qi==-1)then{[]}else{kgtt65 select _0qi select 1});kgr7uh set[_0c,[_0hk,[_0ti select _0hk,_0pk,_0ok,kgmtb2]call kghzti]];if(_0hk!=_0ik)then{private["_0nk"];_0nk=-1;for "_i" from 0 to count(kgr7uh)-1 do{if(kgr7uh select _i select 0==_0ik)exitWith{_0nk=_i;};};if(_0nk!=-1)then{if(_0ik==-1)then{kgr7uh set[_0nk,[_0ik,call kgjfuh]];}else{kgr7uh set[_0nk,[_0ik,[_0ti select _0ik,_0pk,_0ok,kgmtb2]call kghzti]];};};};};};if(_0mk)then{kgq953=true;call kgozi8;call kgbm94;call kgoqb8;};};kgoqb8={disableSerialization;private["_0a","_0sk","_0s"];_0a=uiNamespace getVariable "KingOfHill_Loadout";(_0a displayCtrl kgno3n)ctrlSetText getText(configFile>>"CfgWeapons">>(call kg1alr)>>"picture");(_0a displayCtrl kgr4r4)ctrlSetText getText(configFile>>"CfgWeapons">>kgmtb2>>"picture");(_0a displayCtrl kgtuk5)ctrlSetText getText(configFile>>"CfgWeapons">>(call kgd64g)>>"picture");(_0a displayCtrl kgqvir)ctrlSetText getText(configFile>>"CfgWeapons">>(call kghv5l)>>"picture");_0sk=[];{_0sk set[count _0sk,[getText(configFile>>"CfgMagazines">>(_x select 0)>>"picture"),(_x select 1)]];}forEach(call database_loadout_magazinesLoadout);{_0sk set[count _0sk,[getText(configFile>>"CfgWeapons">>(_x select 0)>>"picture"),(_x select 1)]];}forEach(call database_loadout_itemsLoadout);_0s="";{_0s=_0s+format["<img image='%1'/><t size='0.3'>x%2</t>",(_x select 0),(_x select 1)];}forEach _0sk;(_0a displayCtrl kg2e57)ctrlSetStructuredText parseText _0s;};kg5ki5={uiNamespace setVariable["KingOfHill_BuyAgain",_this];private["_0a","_0tk","_0uk","_0vk","_0wk","_04e","_02k","_0xk","_03k"];_0a=_this;_0tk=_0a displayCtrl kg91md;_0uk=_0a displayCtrl kggmsm;_0vk=_0a displayCtrl kgeoir;_0wk=_0a displayCtrl kgh61z;(_0a displayCtrl kgskax)ctrlSetText kgfmtd;(_0a displayCtrl kgskax)ctrlShow!isStreamFriendlyUIEnabled;_04e=0;_0tk lnbSetColumnsPos[0,0.84];kgmy1b=nil;_0xk=kgh3tb in kgge9y;if(kg14aj!="")then{private["_0c","_0ae","_0zj","_0ec","_0vi","_0qg"];_0c=[kg14aj,database_loadout_primaryWeapons]call kgyf1p;if(_0c!=-1)then{_0ae=(database_loadout_primaryWeapons select _0c);_0ec=call(_0ae select 1);_0zj=call(_0ae select 5);_0vi=kg14aj in kgvlym;_0qg=_0tk lnbAddRow[getText(configFile>>"CfgWeapons">>_0ec>>"displayname"),(if(_0vi)then{"已拥有"}else{format["%1 $",_0zj]})];_0tk lnbSetPicture[[_0qg,0],getText(configFile>>"CfgWeapons">>_0ec>>"picture")];_04e=_04e+1;if(kgmtb2!="")then{private["_0qi","_0yk","_0zk","_01k"];_0qi=kg14aj call kgfwl4;_0yk=({kgmtb2==_x}count(if(_0qi<0)then{[]}else{kgtt65 select _0qi select 1})>0);_0zk=_0ae select 9;_01k=call(_0zk select([kgmtb2,_0zk]call kg799q)select 4);_0qg=_0tk lnbAddRow[getText(configFile>>"CfgWeapons">>kgmtb2>>"displayname"),(if(_0yk)then{"已拥有"}else{format["%1 $",_01k]})];_0tk lnbSetPicture[[_0qg,0],getText(configFile>>"CfgWeapons">>kgmtb2>>"picture")];_04e=_04e+1;};};};{private["_0xh","_09h","_0oi"];_0xh=_x select 0;_09h=_x select 1;_0oi=_x select 2;if(_0xh!="")then{private["_0c","_0ae","_0zj","_0ec","_0vi","_0qg"];_0c=[_0xh,_09h]call kgyf1p;if(_0c!=-1)then{_0ae=(_09h select _0c);_0ec=call(_0ae select 1);_0zj=call(_0ae select 5);_0vi=_0xh in _0oi;_0qg=_0tk lnbAddRow[getText(configFile>>"CfgWeapons">>_0ec>>"displayname"),(if(_0vi)then{"已拥有"}else{format["%1 $",_0zj]})];_0tk lnbSetPicture[[_0qg,0],getText(configFile>>"CfgWeapons">>_0ec>>"picture")];_04e=_04e+1;};};}forEach[[kg1pnr,database_loadout_secondaryWeapons,kgyepb],[kgatq5,database_loadout_handgunWeapons,kgoewf]];for "_i" from _04e to 2 do{_0tk lnbAddRow["-","-"];};_02k=(call kgt4zo);_0uk ctrlSetStructuredText parseText format["装备价格: <t color='#aaffaa'>%1</t>%2",if(_02k>0)then{format["%1 $",_02k]}else{"免费"},if(_02k<=0||_0xk)then{"*"}else{""}];_0vk ctrlSetStructuredText parseText(switch(true)do{case(_02k<=0):{"* 你已拥有当前所有装备"};case(_0xk):{format["* %1%2 off with ""DISCOUNT"" perk",floor((1-database_loadout_discountPerkMultiplier)*100),"%"]};default{""};});_03k=(call kg2ag7)call kgew1m;_0wk ctrlSetText(database_loadout_costumesList select _03k select 6);call kgdpv1;};kgdpv1={private _0a=uiNamespace getVariable["KingOfHill_BuyAgain",displayNull];if(isNull _0a)exitWith{};private _05=call kg3cem;private _04k=_0a displayCtrl kgnusl;_04k ctrlShow(selectMax _05>0);_05 params["_05k","_06k"];private _0lb=format["<t size='1.2'>%1:</t><br/>",localize "STR_KOH_Dlg_PotentialBonusText"];if(_05k>0)then{_0lb=_0lb+format["<t color='#%1'>%2 xp</t>",kgvsvh,_05k]+"<br/>";};if(_06k>0)then{_0lb=_0lb+format["<t color='#aaffaa'>%1 $</t>",_06k]+"<br/>";};_04k ctrlSetStructuredText parseText _0lb;};kgjpp8={call kg8h4z;call kguq6u;};kg8h4z={if(isNil{kgmy1b})then{kgmy1b=false;};if(kgmy1b)then{private["_02k"];_02k=(call kgt4zo);if(_02k>0)then{kg4re9=kg4re9-_02k;call kgm9k5;playSound "KOH_Cash";if(kgh3tb in kgge9y)then{kgpxsd=[];{if(_x!="")then{kgpxsd set[count kgpxsd,_x];};}forEach[kg14aj,kg1pnr,kgatq5,kgmtb2];};};call kgdqcx;call kgfx6i;}else{call kg8ymg;call kgdqcx;call kgfx6i;};call kgttgb;};kgr3kq={private["_02k"];_02k=(call kgt4zo);if(kg4re9<_02k&&_this)exitWith{false call kgbz2a;};kgmy1b=_this;closeDialog 0;};kgt4zo={private["_0zj"];_0zj=0;{_0zj=_0zj+(if(_x select 1)then{0}else{_x select 0});}forEach(call kgx4pu);if(kgh3tb in kgge9y)then{_0zj=_0zj*database_loadout_discountPerkMultiplier;};_0zj};kgx4pu={private["_07k"];_07k=[];{private["_0xh","_09h","_0oi"];_0xh=_x select 0;_09h=_x select 1;_0oi=_x select 2;if(_0xh!="")then{private["_0c","_0ae","_0zj","_0vi"];_0c=[_0xh,_09h]call kgyf1p;if(_0c!=-1)then{_0ae=(_09h select _0c);_0zj=call(_0ae select 5);_0vi=_0xh in _0oi;_07k set[count _07k,[_0zj,_0vi]];};};}forEach[[kg14aj,database_loadout_primaryWeapons,kgvlym],[kg1pnr,database_loadout_secondaryWeapons,kgyepb],[kgatq5,database_loadout_handgunWeapons,kgoewf]];if(kg14aj!=""&&kgmtb2!="")then{private["_0zk","_0qi","_0yk","_01k"];_0zk=(database_loadout_primaryWeapons select([kg14aj,database_loadout_primaryWeapons]call kgyf1p))select 9;_0qi=kg14aj call kgfwl4;_0yk=({kgmtb2==_x}count(if(_0qi<0)then{[]}else{kgtt65 select _0qi select 1})>0);_01k=call(_0zk select([kgmtb2,_0zk]call kg799q)select 4);_07k set[count _07k,[_01k,_0yk]];};_07k};