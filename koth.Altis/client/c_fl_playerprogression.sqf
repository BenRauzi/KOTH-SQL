
#include "hpp\defines.hpp"
kgio3v={500+(_this*500)+((_this-5)max 0)*500+((_this-10)max 0)*250+((_this-20)max 0)*250+((_this-30)max 0)*500};kgvv95={private["_0il"];_0il=0;for "_i" from 1 to _this do{_0il=_0il+(_i call kgio3v);};_0il};kg7ebj={_0r=toString[13,10];_0s="";_0il=0;for "_i" from 1 to 100 do{_0ca=_i call kgio3v;_0s=_0s+str(_i)+": "+str(_0ca)+_0r;_0il=_0il+_0ca;};copyToClipboard _0s;systemChat format["kgwyyr done. Sum = %1",_0il call kgkzn8];};kgtess={private "_0jl";kg9ig1=(kg9ig1+_this)max 0;_0jl=false;while{call kgwaik}do{_0jl=true;};if(_0jl)then{player setVariable["koh_level",kgsoxm,true];playSound "KOH_LevelUp";true call kgebu8;};call kgsii2;};kgwaik={private["_0kl"];_0kl=kgsoxm call kgio3v;if(kg9ig1>=_0kl)exitWith{kg9ig1=kg9ig1-_0kl;kgsoxm=kgsoxm+1;kg7bkn=kgsoxm call kgio3v;true;};false;};kgrspz={kg4re9=(kg4re9+_this)max 0;call kgm9k5;};kgvleo={private "_0ba";{{if(_this isKindOf(_x select 10))then{_0ba=call(_x select 6);};}forEach _x;}forEach[database_vehicles_groundList,database_vehicles_aircraftList,database_vehicles_planesList,database_vehicles_boatsList];_0ba;};kge5hb={ceil((_this/2.5)/10)*10;};kgpys7={ceil(_this/10)*10};
#define kga3iy	30
#define kg8t1z	120
kgvsms={private["_0ll","_0ml","_04c"];if(typeName _this!=typeName[])then{_0ll=_this;_0ml=[];}else{_0ll=_this select 0;_0ml=_this select 1;};_04c=(switch(_0ll)do{
case kg4qaz:{["击杀敌军",350,300,kga3iy]};
case kgsy29:{["击杀协助",200,100,kga3iy]};
case kg1k2k:{["团队协助",200,100,kga3iy]};
case kgkm4i:{["载具摧毁",500,200,kga3iy]};
case kgzwg4:{["载具协助摧毁",500,10,kga3iy]};
case kgp6dd:{["基地车摧毁",600,200,kga3iy]};
case kg21lu:{["基地车协助摧毁",600,100,kga3iy]};
case kg1z6z:{["武装载具摧毁",1600,800,kga3iy]};
case kg7nwa:{["武装载具协助摧毁",1200,400,kga3iy]};
case kghe92:{["坦克摧毁",3000,2400,kga3iy]};
case kg8v62:{["坦克协助摧毁",2500,1200,kga3iy]};
case kgdr7g:{["直升机摧毁",800,400,kga3iy]};
case kgk52i:{["直升机协助摧毁",800,200,kga3iy]};
case kg3fg6:{["武装直升机摧毁",1200,800,kga3iy]};
case kgrjq4:{["武装直升机协助摧毁",1200,400,kga3iy]};
case kgnzzt:{["目的控制",1500,1500,kga3iy]};      
case kgti9v:{["目的进攻",1300,1300,kga3iy]};
case kggnsf:{["优先位置控制",1500,1500,kga3iy]};
case kgids1:{["复活玩家",200,200,kga3iy]};
case kgpv7v:{["战术插入",(50 max _0ml*10)min 300,300,kga3iy]};
case kg5ykm:{["轻型载具摧毁",200,10,kga3iy]};
case kg56o8:{["轻型载具协助摧毁",200,40,kga3iy]};
case kg5pin:{["战术空投",100,100,kga3iy]};
case kgj2t2:{["滴滴快车",(30+_0ml*5)min 200,50,kga3iy]};
case kg94c4:{["起死回生",100,100,kga3iy]};
case kg6fni:{["游戏结束奖金",60000,60000,kga3iy]};
case kg5fey:{["固定翼摧毁",3000,2400,kga3iy]};
case kg3d1b:{["固定翼协助摧毁",2500,1200,kga3iy]};
case kgkm55:{["进攻奖金",0,100,kga3iy]};
case kg6irv:{["医生奖金",((_0ml*5)max 50)min 300,((_0ml*5)max 50)min 300,kga3iy]};
case kggcif:{["腐竹的祝福",0,_0ml,kg8t1z]};
case kggwa7:{["双杀",0,0,kga3iy]};
case kgg6il:{["三杀",0,0,kga3iy]};
case kgrgr3:{["暴走",0,500,kga3iy]};
case kg8gwl:{["超神!",0,0,kga3iy]};
case kgub4d:{["载具退还",0,_0ml,kga3iy]};
case kg72og:{["腐竹的薪帖",20000,20000,kga3iy]};
case kg6hsl:{["胜利奖励",(_0ml select 0),(_0ml select 1),kga3iy]};
case kgotel:{["治愈队友",50,50,kga3iy]};
case kgnufj:{["You were blessed by Inch",0,_0ml,kg8t1z]};
case kgwsdn:{["游戏结束奖金",(_0ml select 0),(_0ml select 1),kga3iy]};
case kgxvv8:{private["_06","_05k","_06k"];_06=_0ml call kgvleo;_06k=_06/4;_06k=(if(_06k>2000)then{ceil(_06k/500)*500}else{ceil(_06k/100)*100})max 200;_05k=ceil((_06/6 max 100)/100)*100;[format["%1 摧毁奖励",getText(configFile>>"CfgVehicles">>_0ml>>"displayname")],_05k,_06k,kga3iy]};
case kgnpv9:{private["_06","_05k","_06k"];_06=_0ml call kgvleo;_06k=_06/4;_06k=(if(_06k>2000)then{ceil(_06k/500)*500}else{ceil(_06k/100)*100})max 200;_05k=ceil((_06/8 max 100)/100)*100;[format["%1 摧毁奖励",getText(configFile>>"CfgVehicles">>_0ml>>"displayname")],_05k,_06k,kga3iy]};
case kgiv12:{["团队平衡补偿",(_0ml select 0),(_0ml select 1),kga3iy]};
case kg7ibj:{[format["%1 杀奖励",_0ml],_0ml*50,0,kga3iy]};
case kgbwz5:{[format["%1 米击杀奖金",_0ml],_0ml call kge5hb,0,kga3iy]};
case kgmd15:{[format["%1 米爆头奖金",_0ml],_0ml call kge5hb,_0ml call kgpys7,kga3iy]};
case kg7v6a:{[format["%1 米击杀",_0ml],0,0,kga3iy]};
case kgh24d:{[format["%1 米爆头",_0ml],0,0,kga3iy]};default{[format["未知的奖励: %1",_0ll],0,0,kga3iy]};});_04c};kgt98j={private["_0nl"];_0nl=player getVariable["koh_owner",0];
#define kgba5w	false
#define kgddir	false
{if((_x select 0)==_0nl||(_x select 0)==-1)then{private["_0ll","_05k","_06k","_0ol","_0pl"];_0ll=[_x select 1,if(isNil{_x select 2})then{[]}else{_x select 2}]call kgvsms;_05k=_0ll select 1;_06k=_0ll select 2;_0ol=false;_0pl=false;if(isNil{_05k})then{_05k=0;};if(isNil{_06k})then{_06k=0;};if!((_x select 1)in kgrm8t)then{if(kgba5w)then{_05k=_05k*2;_0ol=true;};if(kgddir)then{_06k=_06k*2;_0pl=true;};};if!((_x select 1)in kgfp3x)then{[_05k,_06k]call kgb5h8;};[_0ll select 0,_05k,_06k,diag_tickTime+(_0ll select 3),_0ol,_0pl,(!kg352g||{(_x select 1)in[kg4qaz,kgkm4i,kgp6dd,kg1z6z,kghe92,kgdr7g,kg3fg6,kg5fey,kgxvv8]})]call kgxsto;if(_05k>0)then{_05k=round(_05k);kg8jf4=kg8jf4+_05k;_05k call kgtess;};if(_06k>0)then{_06k=round(_06k);if!((_x select 1)in[kgub4d])then{kgeu96=kgeu96+_06k;};_06k call kgrspz;};};}forEach _this;};kggcc2={private "_0ql";_0ql=profileNamespace getVariable "kothv";if(!isNil{_0ql})then{if(kgfezz!=_0ql)then{profileNamespace setVariable[_0ql,nil];};if(!isNil{profileNamespace getVariable _0ql})then{private "_05";_05=profileNamespace getVariable _0ql;if(typeName _05==typeName[])then{if({if(typeName _x!=typeName[])exitWith{1};if(count _x!=2)exitWith{1};if(typeName(_x select 0)!=typeName 0)exitWith{1};if(typeName(_x select 1)!=typeName 0)exitWith{1};}count _05==0)then{kgxsdy=+_05;};};};};profileNamespace setVariable["kothv",kgfezz];profileNamespace setVariable[kgfezz,kgxsdy];saveProfileNamespace;};kgb5h8={private "_05";_05=(kgxsdy select(kgubgt find playerSide));_05 set[0,(_05 select 0)+(_this select 0)];_05 set[1,(_05 select 1)+(_this select 1)];profileNamespace setVariable[kgfezz,kgxsdy];call kgdpv1;};kg3cem={+(kgxsdy select(kgubgt find playerSide));};kgrl7m={profileNamespace setVariable[kgfezz,nil];kgxsdy=[[0,0],[0,0],[0,0]];};kgywjw={private "_05";_05=kgxsdy select(kgubgt find(side group player));if(_05 select 0>0||_05 select 1>0)then{[[-1,kgiv12,_05]]call kgt98j;_05 set[0,0];_05 set[1,0];};profileNamespace setVariable[kgfezz,kgxsdy];call kgttgb;};
kgbbnd={"KOTH2"};
kg5lz9={if(isNil{_this}||typeName(_this)!=typeName "")then{_this=call kgbbnd;};switch(_this)do{
case "KOTH1":{[kgsoxm,kg9ig1,kg7bkn,kg9ril,+kgge9y,kg4re9,+kgvlym,+kgtt65,+kgyepb,+kgoewf,kg8jf4,kgeu96,kg14aj,kgmtb2,kg1pnr,kgatq5,+kglhhp]};
case "KOTH2":{[kgsoxm,kg9ig1,kg7bkn,kg9ril,+kgge9y,kg4re9,+kgvlym,+kgtt65,+kgyepb,+kgoewf,kg8jf4,kgeu96,kgv82e,kg14aj,kgmtb2,kg1pnr,kgatq5,+kglhhp]};
default{systemChat "PROFILE SAVING ERROR";};};};kgjhez={private["_0rl"];_0rl=toArray kguvm4;for "_i" from 1 to 10 do{_0rl set[count _0rl,48+floor(random(9))];};format["koth%1",toString _0rl]};kgk7mx={if(call kgluw1)then{kgs5yy=call kgjwrw;}else{kgs5yy=true;call kgttgb;};if(kgs5yy)then{false call kgebu8;};player setVariable["koh_level",kgsoxm,true];kg7bkn=kgsoxm call kgio3v;};kgebu8={if(!kgs5yy)exitWith{};kgizxt=[player,_this,call kgbbnd,call kg5lz9];publicVariableServer "kgizxt";};
#define kgultk		0
#define kgzfge		1
#define kgqtl7		2
#define kghlog		3
#define kgul5v		4
#define kgtp1u		5
#define kgo6es	6
#define kg8pcj		7
#define kg817t		8
kgdrhm={private["_0tl","_0sl","_0ul","_0le"];_0sl=_this select 0;_0tl=_this select 1;_0ul=_this select 2;_0le=switch(_0tl)do{case kgultk:{if(isNil{_0sl})exitWith{false};true;};case kgzfge:{if(isNil{_0sl})exitWith{false};if(typeName _0sl!=typeName 0)then{_0sl=1};if(_0sl<1)then{_0sl=1};true;};case kgqtl7:{if(isNil{_0sl})exitWith{false};if(typeName _0sl!=typeName 0)then{_0sl=0};if(_0sl<0)then{_0sl=0};true;};case kghlog:{if(isNil{_0sl})exitWith{false};if(typeName _0sl!=typeName 0)then{_0sl=1};if!(_0sl in[1,2,3])then{_0sl=1};true;};case kgul5v:{if(isNil{_0sl})exitWith{false};if(typeName _0sl!=typeName[])then{_0sl=[]};if({typeName _x!=typeName 0}count _0sl>0)then{_0sl=[]};if!((count _0sl)in[0,1,2,3])then{_0sl=[]};true;};case kgtp1u:{if(isNil{_0sl})exitWith{false};if(typeName _0sl!=typeName[])then{_0sl=[]};true;};case kgo6es:{if(isNil{_0sl})exitWith{false};if(typeName _0sl!=typeName[])then{_0sl=[]};true;};case kg8pcj:{if(isNil{_0sl})exitWith{false};if(typeName _0sl!=typeName "")then{_0sl="";};true;};case kg817t:{if(isNil{_0sl})exitWith{false};if(typeName _0sl!=typeName[])then{_0sl=[];};true;};default{false};};if(_0le)then{_0sl call _0ul;};_0le};kg9n8x={private["_0q","_0vl","_0xa"];_0q=_this select 0;_0vl=_this select 1;_0xa=switch(_0q)do{case "KOTH1":{private["_0wl"];_0wl=({}forEach[[_0vl select 0,kgzfge,{kgsoxm=floor(_this)}],[_0vl select 1,kgqtl7,{kg9ig1=floor(_this)}],[_0vl select 2,kgultk,{kg7bkn=floor(_this);}],[_0vl select 3,kghlog,{kg9ril=_this;}],[_0vl select 4,kgul5v,{kgge9y=_this;}],[_0vl select 5,kgqtl7,{kg4re9=_this;}],[_0vl select 6,kgtp1u,{kgvlym=_this;}],[_0vl select 7,kgo6es,{kgtt65=_this;}],[_0vl select 8,kgtp1u,{kgyepb=_this;}],[_0vl select 9,kgtp1u,{kgoewf=_this;}],[_0vl select 10,kgqtl7,{kg8jf4=_this;}],[_0vl select 11,kgqtl7,{kgeu96=_this;}],[_0vl select 12,kg8pcj,{kg14aj=_this;}],[_0vl select 13,kg8pcj,{kgmtb2=_this;}],[_0vl select 14,kg8pcj,{kg1pnr=_this;}],[_0vl select 15,kg8pcj,{kgatq5=_this;}],[_0vl select 16,kg817t,{kglhhp=_this;}]]);if(isNil{_0wl})then{_0wl=true;};call kgozi8;call kg2nt4;if(!_0wl)exitWith{false};true};case "KOTH2":{private["_0wl"];_0wl=({if!(_x call kgdrhm)exitWith{false};}forEach[[_0vl select 0,kgzfge,{kgsoxm=floor(_this)}],[_0vl select 1,kgqtl7,{kg9ig1=floor(_this)}],[_0vl select 2,kgultk,{kg7bkn=floor(_this);}],[_0vl select 3,kghlog,{kg9ril=_this;}],[_0vl select 4,kgul5v,{kgge9y=_this;}],[_0vl select 5,kgqtl7,{kg4re9=_this;}],[_0vl select 6,kgtp1u,{kgvlym=_this;}],[_0vl select 7,kgo6es,{kgtt65=_this;}],[_0vl select 8,kgtp1u,{kgyepb=_this;}],[_0vl select 9,kgtp1u,{kgoewf=_this;}],[_0vl select 10,kgqtl7,{kg8jf4=_this;}],[_0vl select 11,kgqtl7,{kgeu96=_this;}],[_0vl select 12,kgqtl7,{kgv82e=_this;}],[_0vl select 13,kg8pcj,{kg14aj=_this;}],[_0vl select 14,kg8pcj,{kgmtb2=_this;}],[_0vl select 15,kg8pcj,{kg1pnr=_this;}],[_0vl select 16,kg8pcj,{kgatq5=_this;}],[_0vl select 17,kg817t,{kglhhp=_this;}]]);if(isNil{_0wl})then{_0wl=true;};call kgozi8;call kg2nt4;if(!_0wl)exitWith{false};true};default{endMission "BadProfile";false};};if(!_0xa)then{systemChat "PROFILE LOADING ERROR";};_0xa};kg6a1a={if([call kgbbnd,_this]call kg9n8x)then{player setVariable["koh_level",kgsoxm,true];call kgttgb;call kgxqcw;call kg2nt4;call kgdqcx;call kgfx6i;profileNamespace setVariable["koh_reset",true];saveProfileNamespace;};};