/*
	ArmA 3 King of Hill
	Code written by Sa-Matra
	Using this code without Sa-Matra's direct permission is forbidden
	
	Special build for Gamed.de
	
	Build ETYKMBSIGDHGNALL
*/
class KingOfHill_Teambalance{idd=-1;duration=1e+011;name="KingOfHill_Teambalance";movingEnable=0;enableSimulation=1;onLoad="uiNamespace setVariable ['KingOfHill_Teambalance', _this select 0]; (_this select 0) call kglhkj;";onUnload="(_this select 0) call kgita7";class controlsBackground{class Title:RscText{idc=-1;style=2;x=0.1;y=0.3;w=0.8;h=A3_SIZE(2);sizeEx=A3_SIZE(2);text=$STR_KOH_TeamBalance_Title;};};class Controls{class Text:RscStructuredText{idc=kgo48e;x=0;y=0.3+A3_SIZE(2);w=1;h=A3_SIZE(4);text="";size=A3_SIZE(1);class Attributes{align="center";};};class ButtonClose:RscButtonMenu{idc=-1;text=$STR_KOH_TeamBalance_Lobby;x=0.5-(6.25/40)/2;y=0.3+A3_SIZE(2)+A3_SIZE(4);w=(6.25/40);h=A3_SIZE(1);action="closeDialog 0";class Attributes{align="center";};};};};