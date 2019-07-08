/*
	ArmA 3 King of Hill
	Code written by Sa-Matra
	Using this code without Sa-Matra's direct permission is forbidden
	
	Special build for Gamed.de
	
	Build ETYKMBSIGDHGNALL
*/
class KingOfHill_Rules{idd=-1;duration=1e+011;name="KingOfHill_Rules";movingEnable=0;enableSimulation=1;onLoad="uiNamespace setVariable ['KingOfHill_Rules', _this select 0]; (_this select 0) call kgg11k;";onUnload="call kgdijb;";class controlsBackground{
#include "tiles.hpp"
class RscTitleBackground:RscText{colorBackground[]={"(profilenamespace getvariable ['GUI_BCG_RGB_R',0.3843])","(profilenamespace getvariable ['GUI_BCG_RGB_G',0.7019])","(profilenamespace getvariable ['GUI_BCG_RGB_B',0.8862])","(profilenamespace getvariable ['GUI_BCG_RGB_A',0.7])"};idc=-1;x=0.1;y=0;w=0.8;h=A3_SIZE(1);};class MainBackground:RscText{idc=-1;x=0.1;y=0+A3_SIZE(1)+_SPY(1);w=0.8;h=1-(A3_SIZE(1)+_SPY(1))-(A3_SIZE(1)+_SPY(1))+0.001;colorBackground[]={0,0,0,0.7};};};class Controls{class Title:RscTitle{idc=-1;text="【服务器规则】";x=0.1;y=0;w=0.8;h=(1/25);};class PlayersName:Title{idc=kgogpe;style=1;text="McJohn";};class ContentsGroup:RscControlsGroup{idc=-1;x=0.1;y=0+A3_SIZE(1)+_SPY(1);w=0.8;h=1-(A3_SIZE(1)+_SPY(1))-(A3_SIZE(1)+_SPY(1));class Controls{class RulesText:RscStructuredText{idc=kg51tp;x=0;y=0;w=0.8;h=(1-(A3_SIZE(1)+_SPY(1))-(A3_SIZE(1)+_SPY(1)))*2;text="";};};};class ButtonClose:RscButtonMenu{idc=-1;text=$STR_KOH_Dlg_Close;x=0.1;y=1-A3_SIZE(1);w=(6.25/40);h=A3_SIZE(1);action="closeDialog 0";};};};