/*
	ArmA 3 King of Hill
	Code written by Sa-Matra
	Using this code without Sa-Matra's direct permission is forbidden
	
	Special build for Gamed.de
	
	Build ETYKMBSIGDHGNALL
*/
class KingOfHill_Vehicles{idd=-1;duration=1e+011;name="KingOfHill_Vehicles";movingEnable=0;enableSimulation=1;onLoad="uiNamespace setVariable ['KingOfHill_Vehicles', _this select 0]; (_this select 0) call kg2sjx;";class controlsBackground{
#include "tiles.hpp"
#define TAB_WIDTH (8 / 40)
#define TABS_COUNT 3
class RscTitleBackground:RscText{colorBackground[]={"(profilenamespace getvariable ['GUI_BCG_RGB_R',0.3843])","(profilenamespace getvariable ['GUI_BCG_RGB_G',0.7019])","(profilenamespace getvariable ['GUI_BCG_RGB_B',0.8862])","(profilenamespace getvariable ['GUI_BCG_RGB_A',0.7])"};idc=-1;x=0;y=0.1;w=1;h=A3_SIZE(1);};class TabsBackgroundLeft:RscText{idc=-1;x=0;y=0.1+A3_SIZE(1)+_SPY(1);w=TAB_WIDTH*TABS_COUNT;h=A3_SIZE(1);colorBackground[]={0,0,0,1};};class TabsBackgroundRight:TabsBackgroundLeft{idc=-1;x=0+TAB_WIDTH*TABS_COUNT+_SPX(1);w=1-TAB_WIDTH*TABS_COUNT-_SPX(1);};class MainBackground:RscText{idc=-1;x=0;y=0.1+A3_SIZE(1)+_SPY(1)+A3_SIZE(1)-0.001;w=1;h=0.8-(A3_SIZE(1)+_SPY(1)+A3_SIZE(1))-(A3_SIZE(1)+_SPY(1))+0.001;colorBackground[]={0,0,0,0.7};};};class Controls{class Title:RscTitle{idc=-1;text="购买载具";x=0;y=0.1;w=1;h=(1/25);};class PlayersName:Title{idc=kg2dgh;style=1;text="Sa-Matra";};class TabGroundButton:RscButtonMenu{idc=-1;text="地面载具";x=0+TAB_WIDTH*0;y=0.1+A3_SIZE(1)+_SPY(1);w=TAB_WIDTH;h=A3_SIZE(1);action="0 call kg4iad";};class TabHelicoptersButton:TabGroundButton{idc=-1;text="直升机";x=0+TAB_WIDTH*1;action="1 call kg4iad";};class TabPlanesButton:TabGroundButton{idc=-1;text="固定翼";x=0+TAB_WIDTH*2;action="2 call kg4iad";};
#define PICTURE_SIZE		0.2
class VehiclesList:RscControlsGroup{idc=kgms9b;x=0;y=0.1+A3_SIZE(1)+_SPY(1)+A3_SIZE(1)-0.001;w=1;h=0.8-(A3_SIZE(1)+_SPY(1)+A3_SIZE(1))-(A3_SIZE(1)+_SPY(1))+0.001;class Controls{class VehiclePicture:RscPictureKeepAspect{idc=kgcd1f+0;x=0+0.01;y=0+0.01;w=PICTURE_SIZE*((getResolution select 3)/(getResolution select 2))-0.02;h=PICTURE_SIZE-0.02;text="";};class VehicleTitle:RscText{idc=kgeus2+0;x=0+PICTURE_SIZE*((getResolution select 3)/(getResolution select 2))+_SPX(1);y=0;w=0.5-(PICTURE_SIZE*((getResolution select 3)/(getResolution select 2))+_SPX(1));h=A3_SIZE(1);text="";};class VehicleBuyButton:RscButtonMenu{idc=kg8bb7+0;x=0+PICTURE_SIZE*((getResolution select 3)/(getResolution select 2))+_SPX(1);y=0+A3_SIZE(1)+_SPY(1);w=0.18;h=A3_SIZE(0.8);size=A3_SIZE(0.8);text="购买";action="0 call kgsiku";};class VehicleBuyPrice:RscStructuredText{idc=kghs7s+0;x=0+PICTURE_SIZE*((getResolution select 3)/(getResolution select 2))+_SPX(1)+0.18+_SPX(1);y=0+A3_SIZE(1)+_SPY(1);w=0.5-(PICTURE_SIZE*((getResolution select 3)/(getResolution select 2))+_SPX(1)+0.18+_SPX(1));h=A3_SIZE(0.8);text="";};class VehicleDescription:RscStructuredText{idc=kgvc2n+0;x=0+PICTURE_SIZE*((getResolution select 3)/(getResolution select 2))+_SPX(1);y=0+A3_SIZE(1)+_SPY(1)+A3_SIZE(0.8)+_SPY(1);w=0.5-(PICTURE_SIZE*((getResolution select 3)/(getResolution select 2))+_SPX(1));h=A3_SIZE(0.8)*4;text="";};class VehicleOverlay:RscStructuredText{idc=kg8rg5+0;x=0;y=0;w=0.5;h=PICTURE_SIZE+_SPY(3);colorBackground[]={0,0,0,0.6};text="";size=PICTURE_SIZE/3;shadow=2;class Attributes{font="PuristaLight";align="center";};};class VehiclePicture1:VehiclePicture{idc=kgcd1f+1;};class VehicleTitle1:VehicleTitle{idc=kgeus2+1;};class VehicleBuyButton1:VehicleBuyButton{idc=kg8bb7+1;action="1 call kgsiku";};class VehicleBuyPrice1:VehicleBuyPrice{idc=kghs7s+1;};class VehicleDescription1:VehicleDescription{idc=kgvc2n+1;};class VehicleOverlay1:VehicleOverlay{idc=kg8rg5+1;};class VehiclePicture2:VehiclePicture{idc=kgcd1f+2;};class VehicleTitle2:VehicleTitle{idc=kgeus2+2;};class VehicleBuyButton2:VehicleBuyButton{idc=kg8bb7+2;action="2 call kgsiku";};class VehicleBuyPrice2:VehicleBuyPrice{idc=kghs7s+2;};class VehicleDescription2:VehicleDescription{idc=kgvc2n+2;};class VehicleOverlay2:VehicleOverlay{idc=kg8rg5+2;};class VehiclePicture3:VehiclePicture{idc=kgcd1f+3;};class VehicleTitle3:VehicleTitle{idc=kgeus2+3;};class VehicleBuyButton3:VehicleBuyButton{idc=kg8bb7+3;action="3 call kgsiku";};class VehicleBuyPrice3:VehicleBuyPrice{idc=kghs7s+3;};class VehicleDescription3:VehicleDescription{idc=kgvc2n+3;};class VehicleOverlay3:VehicleOverlay{idc=kg8rg5+3;};class VehiclePicture4:VehiclePicture{idc=kgcd1f+4;};class VehicleTitle4:VehicleTitle{idc=kgeus2+4;};class VehicleBuyButton4:VehicleBuyButton{idc=kg8bb7+4;action="4 call kgsiku";};class VehicleBuyPrice4:VehicleBuyPrice{idc=kghs7s+4;};class VehicleDescription4:VehicleDescription{idc=kgvc2n+4;};class VehicleOverlay4:VehicleOverlay{idc=kg8rg5+4;};class VehiclePicture5:VehiclePicture{idc=kgcd1f+5;};class VehicleTitle5:VehicleTitle{idc=kgeus2+5;};class VehicleBuyButton5:VehicleBuyButton{idc=kg8bb7+5;action="5 call kgsiku";};class VehicleBuyPrice5:VehicleBuyPrice{idc=kghs7s+5;};class VehicleDescription5:VehicleDescription{idc=kgvc2n+5;};class VehicleOverlay5:VehicleOverlay{idc=kg8rg5+5;};class VehiclePicture6:VehiclePicture{idc=kgcd1f+6;};class VehicleTitle6:VehicleTitle{idc=kgeus2+6;};class VehicleBuyButton6:VehicleBuyButton{idc=kg8bb7+6;action="6 call kgsiku";};class VehicleBuyPrice6:VehicleBuyPrice{idc=kghs7s+6;};class VehicleDescription6:VehicleDescription{idc=kgvc2n+6;};class VehicleOverlay6:VehicleOverlay{idc=kg8rg5+6;};class VehiclePicture7:VehiclePicture{idc=kgcd1f+7;};class VehicleTitle7:VehicleTitle{idc=kgeus2+7;};class VehicleBuyButton7:VehicleBuyButton{idc=kg8bb7+7;action="7 call kgsiku";};class VehicleBuyPrice7:VehicleBuyPrice{idc=kghs7s+7;};class VehicleDescription7:VehicleDescription{idc=kgvc2n+7;};class VehicleOverlay7:VehicleOverlay{idc=kg8rg5+7;};class VehiclePicture8:VehiclePicture{idc=kgcd1f+8;};class VehicleTitle8:VehicleTitle{idc=kgeus2+8;};class VehicleBuyButton8:VehicleBuyButton{idc=kg8bb7+8;action="8 call kgsiku";};class VehicleBuyPrice8:VehicleBuyPrice{idc=kghs7s+8;};class VehicleDescription8:VehicleDescription{idc=kgvc2n+8;};class VehicleOverlay8:VehicleOverlay{idc=kg8rg5+8;};class VehiclePicture9:VehiclePicture{idc=kgcd1f+9;};class VehicleTitle9:VehicleTitle{idc=kgeus2+9;};class VehicleBuyButton9:VehicleBuyButton{idc=kg8bb7+9;action="9 call kgsiku";};class VehicleBuyPrice9:VehicleBuyPrice{idc=kghs7s+9;};class VehicleDescription9:VehicleDescription{idc=kgvc2n+9;};class VehicleOverlay9:VehicleOverlay{idc=kg8rg5+9;};class VehiclePicture10:VehiclePicture{idc=kgcd1f+10;};class VehicleTitle10:VehicleTitle{idc=kgeus2+10;};class VehicleBuyButton10:VehicleBuyButton{idc=kg8bb7+10;action="10 call kgsiku";};class VehicleBuyPrice10:VehicleBuyPrice{idc=kghs7s+10;};class VehicleDescription10:VehicleDescription{idc=kgvc2n+10;};class VehicleOverlay10:VehicleOverlay{idc=kg8rg5+10;};class VehiclePicture11:VehiclePicture{idc=kgcd1f+11;};class VehicleTitle11:VehicleTitle{idc=kgeus2+11;};class VehicleBuyButton11:VehicleBuyButton{idc=kg8bb7+11;action="11 call kgsiku";};class VehicleBuyPrice11:VehicleBuyPrice{idc=kghs7s+11;};class VehicleDescription11:VehicleDescription{idc=kgvc2n+11;};class VehicleOverlay11:VehicleOverlay{idc=kg8rg5+11;};class VehiclePicture12:VehiclePicture{idc=kgcd1f+12;};class VehicleTitle12:VehicleTitle{idc=kgeus2+12;};class VehicleBuyButton12:VehicleBuyButton{idc=kg8bb7+12;action="12 call kgsiku";};class VehicleBuyPrice12:VehicleBuyPrice{idc=kghs7s+12;};class VehicleDescription12:VehicleDescription{idc=kgvc2n+12;};class VehicleOverlay12:VehicleOverlay{idc=kg8rg5+12;};class VehiclePicture13:VehiclePicture{idc=kgcd1f+13;};class VehicleTitle13:VehicleTitle{idc=kgeus2+13;};class VehicleBuyButton13:VehicleBuyButton{idc=kg8bb7+13;action="13 call kgsiku";};class VehicleBuyPrice13:VehicleBuyPrice{idc=kghs7s+13;};class VehicleDescription13:VehicleDescription{idc=kgvc2n+13;};class VehicleOverlay13:VehicleOverlay{idc=kg8rg5+13;};class VehiclePicture14:VehiclePicture{idc=kgcd1f+14;};class VehicleTitle14:VehicleTitle{idc=kgeus2+14;};class VehicleBuyButton14:VehicleBuyButton{idc=kg8bb7+14;action="14 call kgsiku";};class VehicleBuyPrice14:VehicleBuyPrice{idc=kghs7s+14;};class VehicleDescription14:VehicleDescription{idc=kgvc2n+14;};class VehicleOverlay14:VehicleOverlay{idc=kg8rg5+14;};class VehiclePicture15:VehiclePicture{idc=kgcd1f+15;};class VehicleTitle15:VehicleTitle{idc=kgeus2+15;};class VehicleBuyButton15:VehicleBuyButton{idc=kg8bb7+15;action="15 call kgsiku";};class VehicleBuyPrice15:VehicleBuyPrice{idc=kghs7s+15;};class VehicleDescription15:VehicleDescription{idc=kgvc2n+15;};class VehicleOverlay15:VehicleOverlay{idc=kg8rg5+15;};class VehiclePicture16:VehiclePicture{idc=kgcd1f+16;};class VehicleTitle16:VehicleTitle{idc=kgeus2+16;};class VehicleBuyButton16:VehicleBuyButton{idc=kg8bb7+16;action="16 call kgsiku";};class VehicleBuyPrice16:VehicleBuyPrice{idc=kghs7s+16;};class VehicleDescription16:VehicleDescription{idc=kgvc2n+16;};class VehicleOverlay16:VehicleOverlay{idc=kg8rg5+16;};class VehiclePicture17:VehiclePicture{idc=kgcd1f+17;};class VehicleTitle17:VehicleTitle{idc=kgeus2+17;};class VehicleBuyButton17:VehicleBuyButton{idc=kg8bb7+17;action="17 call kgsiku";};class VehicleBuyPrice17:VehicleBuyPrice{idc=kghs7s+17;};class VehicleDescription17:VehicleDescription{idc=kgvc2n+17;};class VehicleOverlay17:VehicleOverlay{idc=kg8rg5+17;};class VehiclePicture18:VehiclePicture{idc=kgcd1f+18;};class VehicleTitle18:VehicleTitle{idc=kgeus2+18;};class VehicleBuyButton18:VehicleBuyButton{idc=kg8bb7+18;action="18 call kgsiku";};class VehicleBuyPrice18:VehicleBuyPrice{idc=kghs7s+18;};class VehicleDescription18:VehicleDescription{idc=kgvc2n+18;};class VehicleOverlay18:VehicleOverlay{idc=kg8rg5+18;};class VehiclePicture19:VehiclePicture{idc=kgcd1f+19;};class VehicleTitle19:VehicleTitle{idc=kgeus2+19;};class VehicleBuyButton19:VehicleBuyButton{idc=kg8bb7+19;action="19 call kgsiku";};class VehicleBuyPrice19:VehicleBuyPrice{idc=kghs7s+19;};class VehicleDescription19:VehicleDescription{idc=kgvc2n+19;};class VehicleOverlay19:VehicleOverlay{idc=kg8rg5+19;};class VehiclePicture20:VehiclePicture{idc=kgcd1f+20;};class VehicleTitle20:VehicleTitle{idc=kgeus2+20;};class VehicleBuyButton20:VehicleBuyButton{idc=kg8bb7+20;action="20 call kgsiku";};class VehicleBuyPrice20:VehicleBuyPrice{idc=kghs7s+20;};class VehicleDescription20:VehicleDescription{idc=kgvc2n+20;};class VehicleOverlay20:VehicleOverlay{idc=kg8rg5+20;};class VehiclePicture21:VehiclePicture{idc=kgcd1f+21;};class VehicleTitle21:VehicleTitle{idc=kgeus2+21;};class VehicleBuyButton21:VehicleBuyButton{idc=kg8bb7+21;action="21 call kgsiku";};class VehicleBuyPrice21:VehicleBuyPrice{idc=kghs7s+21;};class VehicleDescription21:VehicleDescription{idc=kgvc2n+21;};class VehicleOverlay21:VehicleOverlay{idc=kg8rg5+21;};class VehiclePicture22:VehiclePicture{idc=kgcd1f+22;};class VehicleTitle22:VehicleTitle{idc=kgeus2+22;};class VehicleBuyButton22:VehicleBuyButton{idc=kg8bb7+22;action="22 call kgsiku";};class VehicleBuyPrice22:VehicleBuyPrice{idc=kghs7s+22;};class VehicleDescription22:VehicleDescription{idc=kgvc2n+22;};class VehicleOverlay22:VehicleOverlay{idc=kg8rg5+22;};class VehiclePicture23:VehiclePicture{idc=kgcd1f+23;};class VehicleTitle23:VehicleTitle{idc=kgeus2+23;};class VehicleBuyButton23:VehicleBuyButton{idc=kg8bb7+23;action="23 call kgsiku";};class VehicleBuyPrice23:VehicleBuyPrice{idc=kghs7s+23;};class VehicleDescription23:VehicleDescription{idc=kgvc2n+23;};class VehicleOverlay23:VehicleOverlay{idc=kg8rg5+23;};class VehiclePicture24:VehiclePicture{idc=kgcd1f+24;};class VehicleTitle24:VehicleTitle{idc=kgeus2+24;};class VehicleBuyButton24:VehicleBuyButton{idc=kg8bb7+24;action="24 call kgsiku";};class VehicleBuyPrice24:VehicleBuyPrice{idc=kghs7s+24;};class VehicleDescription24:VehicleDescription{idc=kgvc2n+24;};class VehicleOverlay24:VehicleOverlay{idc=kg8rg5+24;};class VehiclePicture25:VehiclePicture{idc=kgcd1f+25;};class VehicleTitle25:VehicleTitle{idc=kgeus2+25;};class VehicleBuyButton25:VehicleBuyButton{idc=kg8bb7+25;action="25 call kgsiku";};class VehicleBuyPrice25:VehicleBuyPrice{idc=kghs7s+25;};class VehicleDescription25:VehicleDescription{idc=kgvc2n+25;};class VehicleOverlay25:VehicleOverlay{idc=kg8rg5+25;};class VehiclePicture26:VehiclePicture{idc=kgcd1f+26;};class VehicleTitle26:VehicleTitle{idc=kgeus2+26;};class VehicleBuyButton26:VehicleBuyButton{idc=kg8bb7+26;action="26 call kgsiku";};class VehicleBuyPrice26:VehicleBuyPrice{idc=kghs7s+26;};class VehicleDescription26:VehicleDescription{idc=kgvc2n+26;};class VehicleOverlay26:VehicleOverlay{idc=kg8rg5+26;};class VehiclePicture27:VehiclePicture{idc=kgcd1f+27;};class VehicleTitle27:VehicleTitle{idc=kgeus2+27;};class VehicleBuyButton27:VehicleBuyButton{idc=kg8bb7+27;action="27 call kgsiku";};class VehicleBuyPrice27:VehicleBuyPrice{idc=kghs7s+27;};class VehicleDescription27:VehicleDescription{idc=kgvc2n+27;};class VehicleOverlay27:VehicleOverlay{idc=kg8rg5+27;};class VehiclePicture28:VehiclePicture{idc=kgcd1f+28;};class VehicleTitle28:VehicleTitle{idc=kgeus2+28;};class VehicleBuyButton28:VehicleBuyButton{idc=kg8bb7+28;action="28 call kgsiku";};class VehicleBuyPrice28:VehicleBuyPrice{idc=kghs7s+28;};class VehicleDescription28:VehicleDescription{idc=kgvc2n+28;};class VehicleOverlay28:VehicleOverlay{idc=kg8rg5+28;};class VehiclePicture29:VehiclePicture{idc=kgcd1f+29;};class VehicleTitle29:VehicleTitle{idc=kgeus2+29;};class VehicleBuyButton29:VehicleBuyButton{idc=kg8bb7+29;action="29 call kgsiku";};class VehicleBuyPrice29:VehicleBuyPrice{idc=kghs7s+29;};class VehicleDescription29:VehicleDescription{idc=kgvc2n+29;};class VehicleOverlay29:VehicleOverlay{idc=kg8rg5+29;};class VehiclePicture30:VehiclePicture{idc=kgcd1f+30;};class VehicleTitle30:VehicleTitle{idc=kgeus2+30;};class VehicleBuyButton30:VehicleBuyButton{idc=kg8bb7+30;action="30 call kgsiku";};class VehicleBuyPrice30:VehicleBuyPrice{idc=kghs7s+30;};class VehicleDescription30:VehicleDescription{idc=kgvc2n+30;};class VehicleOverlay30:VehicleOverlay{idc=kg8rg5+30;};class VehiclePicture31:VehiclePicture{idc=kgcd1f+31;};class VehicleTitle31:VehicleTitle{idc=kgeus2+31;};class VehicleBuyButton31:VehicleBuyButton{idc=kg8bb7+31;action="31 call kgsiku";};class VehicleBuyPrice31:VehicleBuyPrice{idc=kghs7s+31;};class VehicleDescription31:VehicleDescription{idc=kgvc2n+31;};class VehicleOverlay31:VehicleOverlay{idc=kg8rg5+31;};class VehiclePicture32:VehiclePicture{idc=kgcd1f+32;};class VehicleTitle32:VehicleTitle{idc=kgeus2+32;};class VehicleBuyButton32:VehicleBuyButton{idc=kg8bb7+32;action="32 call kgsiku";};class VehicleBuyPrice32:VehicleBuyPrice{idc=kghs7s+32;};class VehicleDescription32:VehicleDescription{idc=kgvc2n+32;};class VehicleOverlay32:VehicleOverlay{idc=kg8rg5+32;};class VehiclePicture33:VehiclePicture{idc=kgcd1f+33;};class VehicleTitle33:VehicleTitle{idc=kgeus2+33;};class VehicleBuyButton33:VehicleBuyButton{idc=kg8bb7+33;action="33 call kgsiku";};class VehicleBuyPrice33:VehicleBuyPrice{idc=kghs7s+33;};class VehicleDescription33:VehicleDescription{idc=kgvc2n+33;};class VehicleOverlay33:VehicleOverlay{idc=kg8rg5+33;};class VehiclePicture34:VehiclePicture{idc=kgcd1f+34;};class VehicleTitle34:VehicleTitle{idc=kgeus2+34;};class VehicleBuyButton34:VehicleBuyButton{idc=kg8bb7+34;action="34 call kgsiku";};class VehicleBuyPrice34:VehicleBuyPrice{idc=kghs7s+34;};class VehicleDescription34:VehicleDescription{idc=kgvc2n+34;};class VehicleOverlay34:VehicleOverlay{idc=kg8rg5+34;};class VehiclePicture35:VehiclePicture{idc=kgcd1f+35;};class VehicleTitle35:VehicleTitle{idc=kgeus2+35;};class VehicleBuyButton35:VehicleBuyButton{idc=kg8bb7+35;action="35 call kgsiku";};class VehicleBuyPrice35:VehicleBuyPrice{idc=kghs7s+35;};class VehicleDescription35:VehicleDescription{idc=kgvc2n+35;};class VehicleOverlay35:VehicleOverlay{idc=kg8rg5+35;};class VehiclePicture36:VehiclePicture{idc=kgcd1f+36;};class VehicleTitle36:VehicleTitle{idc=kgeus2+36;};class VehicleBuyButton36:VehicleBuyButton{idc=kg8bb7+36;action="36 call kgsiku";};class VehicleBuyPrice36:VehicleBuyPrice{idc=kghs7s+36;};class VehicleDescription36:VehicleDescription{idc=kgvc2n+36;};class VehicleOverlay36:VehicleOverlay{idc=kg8rg5+36;};class VehiclePicture37:VehiclePicture{idc=kgcd1f+37;};class VehicleTitle37:VehicleTitle{idc=kgeus2+37;};class VehicleBuyButton37:VehicleBuyButton{idc=kg8bb7+37;action="37 call kgsiku";};class VehicleBuyPrice37:VehicleBuyPrice{idc=kghs7s+37;};class VehicleDescription37:VehicleDescription{idc=kgvc2n+37;};class VehicleOverlay37:VehicleOverlay{idc=kg8rg5+37;};class VehiclePicture38:VehiclePicture{idc=kgcd1f+38;};class VehicleTitle38:VehicleTitle{idc=kgeus2+38;};class VehicleBuyButton38:VehicleBuyButton{idc=kg8bb7+38;action="38 call kgsiku";};class VehicleBuyPrice38:VehicleBuyPrice{idc=kghs7s+38;};class VehicleDescription38:VehicleDescription{idc=kgvc2n+38;};class VehicleOverlay38:VehicleOverlay{idc=kg8rg5+38;};class VehiclePicture39:VehiclePicture{idc=kgcd1f+39;};class VehicleTitle39:VehicleTitle{idc=kgeus2+39;};class VehicleBuyButton39:VehicleBuyButton{idc=kg8bb7+39;action="39 call kgsiku";};class VehicleBuyPrice39:VehicleBuyPrice{idc=kghs7s+39;};class VehicleDescription39:VehicleDescription{idc=kgvc2n+39;};class VehicleOverlay39:VehicleOverlay{idc=kg8rg5+39;};class VehiclePicture40:VehiclePicture{idc=kgcd1f+40;};class VehicleTitle40:VehicleTitle{idc=kgeus2+40;};class VehicleBuyButton40:VehicleBuyButton{idc=kg8bb7+40;action="40 call kgsiku";};class VehicleBuyPrice40:VehicleBuyPrice{idc=kghs7s+40;};class VehicleDescription40:VehicleDescription{idc=kgvc2n+40;};class VehicleOverlay40:VehicleOverlay{idc=kg8rg5+40;};class VehiclePicture41:VehiclePicture{idc=kgcd1f+41;};class VehicleTitle41:VehicleTitle{idc=kgeus2+41;};class VehicleBuyButton41:VehicleBuyButton{idc=kg8bb7+41;action="41 call kgsiku";};class VehicleBuyPrice41:VehicleBuyPrice{idc=kghs7s+41;};class VehicleDescription41:VehicleDescription{idc=kgvc2n+41;};class VehicleOverlay41:VehicleOverlay{idc=kg8rg5+41;};class VehiclePicture42:VehiclePicture{idc=kgcd1f+42;};class VehicleTitle42:VehicleTitle{idc=kgeus2+42;};class VehicleBuyButton42:VehicleBuyButton{idc=kg8bb7+42;action="42 call kgsiku";};class VehicleBuyPrice42:VehicleBuyPrice{idc=kghs7s+42;};class VehicleDescription42:VehicleDescription{idc=kgvc2n+42;};class VehicleOverlay42:VehicleOverlay{idc=kg8rg5+42;};class VehiclePicture43:VehiclePicture{idc=kgcd1f+43;};class VehicleTitle43:VehicleTitle{idc=kgeus2+43;};class VehicleBuyButton43:VehicleBuyButton{idc=kg8bb7+43;action="43 call kgsiku";};class VehicleBuyPrice43:VehicleBuyPrice{idc=kghs7s+43;};class VehicleDescription43:VehicleDescription{idc=kgvc2n+43;};class VehicleOverlay43:VehicleOverlay{idc=kg8rg5+43;};class VehiclePicture44:VehiclePicture{idc=kgcd1f+44;};class VehicleTitle44:VehicleTitle{idc=kgeus2+44;};class VehicleBuyButton44:VehicleBuyButton{idc=kg8bb7+44;action="44 call kgsiku";};class VehicleBuyPrice44:VehicleBuyPrice{idc=kghs7s+44;};class VehicleDescription44:VehicleDescription{idc=kgvc2n+44;};class VehicleOverlay44:VehicleOverlay{idc=kg8rg5+44;};class VehiclePicture45:VehiclePicture{idc=kgcd1f+45;};class VehicleTitle45:VehicleTitle{idc=kgeus2+45;};class VehicleBuyButton45:VehicleBuyButton{idc=kg8bb7+45;action="45 call kgsiku";};class VehicleBuyPrice45:VehicleBuyPrice{idc=kghs7s+45;};class VehicleDescription45:VehicleDescription{idc=kgvc2n+45;};class VehicleOverlay45:VehicleOverlay{idc=kg8rg5+45;};class VehiclePicture46:VehiclePicture{idc=kgcd1f+46;};class VehicleTitle46:VehicleTitle{idc=kgeus2+46;};class VehicleBuyButton46:VehicleBuyButton{idc=kg8bb7+46;action="46 call kgsiku";};class VehicleBuyPrice46:VehicleBuyPrice{idc=kghs7s+46;};class VehicleDescription46:VehicleDescription{idc=kgvc2n+46;};class VehicleOverlay46:VehicleOverlay{idc=kg8rg5+46;};class VehiclePicture47:VehiclePicture{idc=kgcd1f+47;};class VehicleTitle47:VehicleTitle{idc=kgeus2+47;};class VehicleBuyButton47:VehicleBuyButton{idc=kg8bb7+47;action="47 call kgsiku";};class VehicleBuyPrice47:VehicleBuyPrice{idc=kghs7s+47;};class VehicleDescription47:VehicleDescription{idc=kgvc2n+47;};class VehicleOverlay47:VehicleOverlay{idc=kg8rg5+47;};class VehiclePicture48:VehiclePicture{idc=kgcd1f+48;};class VehicleTitle48:VehicleTitle{idc=kgeus2+48;};class VehicleBuyButton48:VehicleBuyButton{idc=kg8bb7+48;action="48 call kgsiku";};class VehicleBuyPrice48:VehicleBuyPrice{idc=kghs7s+48;};class VehicleDescription48:VehicleDescription{idc=kgvc2n+48;};class VehicleOverlay48:VehicleOverlay{idc=kg8rg5+48;};class VehiclePicture49:VehiclePicture{idc=kgcd1f+49;};class VehicleTitle49:VehicleTitle{idc=kgeus2+49;};class VehicleBuyButton49:VehicleBuyButton{idc=kg8bb7+49;action="49 call kgsiku";};class VehicleBuyPrice49:VehicleBuyPrice{idc=kghs7s+49;};class VehicleDescription49:VehicleDescription{idc=kgvc2n+49;};class VehicleOverlay49:VehicleOverlay{idc=kg8rg5+49;};class VehiclePicture50:VehiclePicture{idc=kgcd1f+50;};class VehicleTitle50:VehicleTitle{idc=kgeus2+50;};class VehicleBuyButton50:VehicleBuyButton{idc=kg8bb7+50;action="50 call kgsiku";};class VehicleBuyPrice50:VehicleBuyPrice{idc=kghs7s+50;};class VehicleDescription50:VehicleDescription{idc=kgvc2n+50;};class VehicleOverlay50:VehicleOverlay{idc=kg8rg5+50;};class VehiclePicture51:VehiclePicture{idc=kgcd1f+51;};class VehicleTitle51:VehicleTitle{idc=kgeus2+51;};class VehicleBuyButton51:VehicleBuyButton{idc=kg8bb7+51;action="51 call kgsiku";};class VehicleBuyPrice51:VehicleBuyPrice{idc=kghs7s+51;};class VehicleDescription51:VehicleDescription{idc=kgvc2n+51;};class VehicleOverlay51:VehicleOverlay{idc=kg8rg5+51;};class VehiclePicture52:VehiclePicture{idc=kgcd1f+52;};class VehicleTitle52:VehicleTitle{idc=kgeus2+52;};class VehicleBuyButton52:VehicleBuyButton{idc=kg8bb7+52;action="52 call kgsiku";};class VehicleBuyPrice52:VehicleBuyPrice{idc=kghs7s+52;};class VehicleDescription52:VehicleDescription{idc=kgvc2n+52;};class VehicleOverlay52:VehicleOverlay{idc=kg8rg5+52;};class VehiclePicture53:VehiclePicture{idc=kgcd1f+53;};class VehicleTitle53:VehicleTitle{idc=kgeus2+53;};class VehicleBuyButton53:VehicleBuyButton{idc=kg8bb7+53;action="53 call kgsiku";};class VehicleBuyPrice53:VehicleBuyPrice{idc=kghs7s+53;};class VehicleDescription53:VehicleDescription{idc=kgvc2n+53;};class VehicleOverlay53:VehicleOverlay{idc=kg8rg5+53;};class VehiclePicture54:VehiclePicture{idc=kgcd1f+54;};class VehicleTitle54:VehicleTitle{idc=kgeus2+54;};class VehicleBuyButton54:VehicleBuyButton{idc=kg8bb7+54;action="54 call kgsiku";};class VehicleBuyPrice54:VehicleBuyPrice{idc=kghs7s+54;};class VehicleDescription54:VehicleDescription{idc=kgvc2n+54;};class VehicleOverlay54:VehicleOverlay{idc=kg8rg5+54;};class VehiclePicture55:VehiclePicture{idc=kgcd1f+55;};class VehicleTitle55:VehicleTitle{idc=kgeus2+55;};class VehicleBuyButton55:VehicleBuyButton{idc=kg8bb7+55;action="55 call kgsiku";};class VehicleBuyPrice55:VehicleBuyPrice{idc=kghs7s+55;};class VehicleDescription55:VehicleDescription{idc=kgvc2n+55;};class VehicleOverlay55:VehicleOverlay{idc=kg8rg5+55;};class VehiclePicture56:VehiclePicture{idc=kgcd1f+56;};class VehicleTitle56:VehicleTitle{idc=kgeus2+56;};class VehicleBuyButton56:VehicleBuyButton{idc=kg8bb7+56;action="56 call kgsiku";};class VehicleBuyPrice56:VehicleBuyPrice{idc=kghs7s+56;};class VehicleDescription56:VehicleDescription{idc=kgvc2n+56;};class VehicleOverlay56:VehicleOverlay{idc=kg8rg5+56;};class VehiclePicture57:VehiclePicture{idc=kgcd1f+57;};class VehicleTitle57:VehicleTitle{idc=kgeus2+57;};class VehicleBuyButton57:VehicleBuyButton{idc=kg8bb7+57;action="57 call kgsiku";};class VehicleBuyPrice57:VehicleBuyPrice{idc=kghs7s+57;};class VehicleDescription57:VehicleDescription{idc=kgvc2n+57;};class VehicleOverlay57:VehicleOverlay{idc=kg8rg5+57;};class VehiclePicture58:VehiclePicture{idc=kgcd1f+58;};class VehicleTitle58:VehicleTitle{idc=kgeus2+58;};class VehicleBuyButton58:VehicleBuyButton{idc=kg8bb7+58;action="58 call kgsiku";};class VehicleBuyPrice58:VehicleBuyPrice{idc=kghs7s+58;};class VehicleDescription58:VehicleDescription{idc=kgvc2n+58;};class VehicleOverlay58:VehicleOverlay{idc=kg8rg5+58;};class VehiclePicture59:VehiclePicture{idc=kgcd1f+59;};class VehicleTitle59:VehicleTitle{idc=kgeus2+59;};class VehicleBuyButton59:VehicleBuyButton{idc=kg8bb7+59;action="59 call kgsiku";};class VehicleBuyPrice59:VehicleBuyPrice{idc=kghs7s+59;};class VehicleDescription59:VehicleDescription{idc=kgvc2n+59;};class VehicleOverlay59:VehicleOverlay{idc=kg8rg5+59;};class VehiclePicture60:VehiclePicture{idc=kgcd1f+60;};class VehicleTitle60:VehicleTitle{idc=kgeus2+60;};class VehicleBuyButton60:VehicleBuyButton{idc=kg8bb7+60;action="60 call kgsiku";};class VehicleBuyPrice60:VehicleBuyPrice{idc=kghs7s+60;};class VehicleDescription60:VehicleDescription{idc=kgvc2n+60;};class VehicleOverlay60:VehicleOverlay{idc=kg8rg5+60;};class VehiclePicture61:VehiclePicture{idc=kgcd1f+61;};class VehicleTitle61:VehicleTitle{idc=kgeus2+61;};class VehicleBuyButton61:VehicleBuyButton{idc=kg8bb7+61;action="61 call kgsiku";};class VehicleBuyPrice61:VehicleBuyPrice{idc=kghs7s+61;};class VehicleDescription61:VehicleDescription{idc=kgvc2n+61;};class VehicleOverlay61:VehicleOverlay{idc=kg8rg5+61;};class VehiclePicture62:VehiclePicture{idc=kgcd1f+62;};class VehicleTitle62:VehicleTitle{idc=kgeus2+62;};class VehicleBuyButton62:VehicleBuyButton{idc=kg8bb7+62;action="62 call kgsiku";};class VehicleBuyPrice62:VehicleBuyPrice{idc=kghs7s+62;};class VehicleDescription62:VehicleDescription{idc=kgvc2n+62;};class VehicleOverlay62:VehicleOverlay{idc=kg8rg5+62;};class VehiclePicture63:VehiclePicture{idc=kgcd1f+63;};class VehicleTitle63:VehicleTitle{idc=kgeus2+63;};class VehicleBuyButton63:VehicleBuyButton{idc=kg8bb7+63;action="63 call kgsiku";};class VehicleBuyPrice63:VehicleBuyPrice{idc=kghs7s+63;};class VehicleDescription63:VehicleDescription{idc=kgvc2n+63;};class VehicleOverlay63:VehicleOverlay{idc=kg8rg5+63;};class VehiclePicture64:VehiclePicture{idc=kgcd1f+64;};class VehicleTitle64:VehicleTitle{idc=kgeus2+64;};class VehicleBuyButton64:VehicleBuyButton{idc=kg8bb7+64;action="64 call kgsiku";};class VehicleBuyPrice64:VehicleBuyPrice{idc=kghs7s+64;};class VehicleDescription64:VehicleDescription{idc=kgvc2n+64;};class VehicleOverlay64:VehicleOverlay{idc=kg8rg5+64;};class VehiclePicture65:VehiclePicture{idc=kgcd1f+65;};class VehicleTitle65:VehicleTitle{idc=kgeus2+65;};class VehicleBuyButton65:VehicleBuyButton{idc=kg8bb7+65;action="65 call kgsiku";};class VehicleBuyPrice65:VehicleBuyPrice{idc=kghs7s+65;};class VehicleDescription65:VehicleDescription{idc=kgvc2n+65;};class VehicleOverlay65:VehicleOverlay{idc=kg8rg5+65;};class VehiclePicture66:VehiclePicture{idc=kgcd1f+66;};class VehicleTitle66:VehicleTitle{idc=kgeus2+66;};class VehicleBuyButton66:VehicleBuyButton{idc=kg8bb7+66;action="66 call kgsiku";};class VehicleBuyPrice66:VehicleBuyPrice{idc=kghs7s+66;};class VehicleDescription66:VehicleDescription{idc=kgvc2n+66;};class VehicleOverlay66:VehicleOverlay{idc=kg8rg5+66;};class VehiclePicture67:VehiclePicture{idc=kgcd1f+67;};class VehicleTitle67:VehicleTitle{idc=kgeus2+67;};class VehicleBuyButton67:VehicleBuyButton{idc=kg8bb7+67;action="67 call kgsiku";};class VehicleBuyPrice67:VehicleBuyPrice{idc=kghs7s+67;};class VehicleDescription67:VehicleDescription{idc=kgvc2n+67;};class VehicleOverlay67:VehicleOverlay{idc=kg8rg5+67;};class VehiclePicture68:VehiclePicture{idc=kgcd1f+68;};class VehicleTitle68:VehicleTitle{idc=kgeus2+68;};class VehicleBuyButton68:VehicleBuyButton{idc=kg8bb7+68;action="68 call kgsiku";};class VehicleBuyPrice68:VehicleBuyPrice{idc=kghs7s+68;};class VehicleDescription68:VehicleDescription{idc=kgvc2n+68;};class VehicleOverlay68:VehicleOverlay{idc=kg8rg5+68;};class VehiclePicture69:VehiclePicture{idc=kgcd1f+69;};class VehicleTitle69:VehicleTitle{idc=kgeus2+69;};class VehicleBuyButton69:VehicleBuyButton{idc=kg8bb7+69;action="69 call kgsiku";};class VehicleBuyPrice69:VehicleBuyPrice{idc=kghs7s+69;};class VehicleDescription69:VehicleDescription{idc=kgvc2n+69;};class VehicleOverlay69:VehicleOverlay{idc=kg8rg5+69;};class VehiclePicture70:VehiclePicture{idc=kgcd1f+70;};class VehicleTitle70:VehicleTitle{idc=kgeus2+70;};class VehicleBuyButton70:VehicleBuyButton{idc=kg8bb7+70;action="70 call kgsiku";};class VehicleBuyPrice70:VehicleBuyPrice{idc=kghs7s+70;};class VehicleDescription70:VehicleDescription{idc=kgvc2n+70;};class VehicleOverlay70:VehicleOverlay{idc=kg8rg5+70;};class VehiclePicture71:VehiclePicture{idc=kgcd1f+71;};class VehicleTitle71:VehicleTitle{idc=kgeus2+71;};class VehicleBuyButton71:VehicleBuyButton{idc=kg8bb7+71;action="71 call kgsiku";};class VehicleBuyPrice71:VehicleBuyPrice{idc=kghs7s+71;};class VehicleDescription71:VehicleDescription{idc=kgvc2n+71;};class VehicleOverlay71:VehicleOverlay{idc=kg8rg5+71;};class VehiclePicture72:VehiclePicture{idc=kgcd1f+72;};class VehicleTitle72:VehicleTitle{idc=kgeus2+72;};class VehicleBuyButton72:VehicleBuyButton{idc=kg8bb7+72;action="72 call kgsiku";};class VehicleBuyPrice72:VehicleBuyPrice{idc=kghs7s+72;};class VehicleDescription72:VehicleDescription{idc=kgvc2n+72;};class VehicleOverlay72:VehicleOverlay{idc=kg8rg5+72;};class VehiclePicture73:VehiclePicture{idc=kgcd1f+73;};class VehicleTitle73:VehicleTitle{idc=kgeus2+73;};class VehicleBuyButton73:VehicleBuyButton{idc=kg8bb7+73;action="73 call kgsiku";};class VehicleBuyPrice73:VehicleBuyPrice{idc=kghs7s+73;};class VehicleDescription73:VehicleDescription{idc=kgvc2n+73;};class VehicleOverlay73:VehicleOverlay{idc=kg8rg5+73;};class VehiclePicture74:VehiclePicture{idc=kgcd1f+74;};class VehicleTitle74:VehicleTitle{idc=kgeus2+74;};class VehicleBuyButton74:VehicleBuyButton{idc=kg8bb7+74;action="74 call kgsiku";};class VehicleBuyPrice74:VehicleBuyPrice{idc=kghs7s+74;};class VehicleDescription74:VehicleDescription{idc=kgvc2n+74;};class VehicleOverlay74:VehicleOverlay{idc=kg8rg5+74;};class VehiclePicture75:VehiclePicture{idc=kgcd1f+75;};class VehicleTitle75:VehicleTitle{idc=kgeus2+75;};class VehicleBuyButton75:VehicleBuyButton{idc=kg8bb7+75;action="75 call kgsiku";};class VehicleBuyPrice75:VehicleBuyPrice{idc=kghs7s+75;};class VehicleDescription75:VehicleDescription{idc=kgvc2n+75;};class VehicleOverlay75:VehicleOverlay{idc=kg8rg5+75;};class VehiclePicture76:VehiclePicture{idc=kgcd1f+76;};class VehicleTitle76:VehicleTitle{idc=kgeus2+76;};class VehicleBuyButton76:VehicleBuyButton{idc=kg8bb7+76;action="76 call kgsiku";};class VehicleBuyPrice76:VehicleBuyPrice{idc=kghs7s+76;};class VehicleDescription76:VehicleDescription{idc=kgvc2n+76;};class VehicleOverlay76:VehicleOverlay{idc=kg8rg5+76;};class VehiclePicture77:VehiclePicture{idc=kgcd1f+77;};class VehicleTitle77:VehicleTitle{idc=kgeus2+77;};class VehicleBuyButton77:VehicleBuyButton{idc=kg8bb7+77;action="77 call kgsiku";};class VehicleBuyPrice77:VehicleBuyPrice{idc=kghs7s+77;};class VehicleDescription77:VehicleDescription{idc=kgvc2n+77;};class VehicleOverlay77:VehicleOverlay{idc=kg8rg5+77;};class VehiclePicture78:VehiclePicture{idc=kgcd1f+78;};class VehicleTitle78:VehicleTitle{idc=kgeus2+78;};class VehicleBuyButton78:VehicleBuyButton{idc=kg8bb7+78;action="78 call kgsiku";};class VehicleBuyPrice78:VehicleBuyPrice{idc=kghs7s+78;};class VehicleDescription78:VehicleDescription{idc=kgvc2n+78;};class VehicleOverlay78:VehicleOverlay{idc=kg8rg5+78;};class VehiclePicture79:VehiclePicture{idc=kgcd1f+79;};class VehicleTitle79:VehicleTitle{idc=kgeus2+79;};class VehicleBuyButton79:VehicleBuyButton{idc=kg8bb7+79;action="79 call kgsiku";};class VehicleBuyPrice79:VehicleBuyPrice{idc=kghs7s+79;};class VehicleDescription79:VehicleDescription{idc=kgvc2n+79;};class VehicleOverlay79:VehicleOverlay{idc=kg8rg5+79;};class VehiclePicture80:VehiclePicture{idc=kgcd1f+80;};class VehicleTitle80:VehicleTitle{idc=kgeus2+80;};class VehicleBuyButton80:VehicleBuyButton{idc=kg8bb7+80;action="80 call kgsiku";};class VehicleBuyPrice80:VehicleBuyPrice{idc=kghs7s+80;};class VehicleDescription80:VehicleDescription{idc=kgvc2n+80;};class VehicleOverlay80:VehicleOverlay{idc=kg8rg5+80;};class VehiclePicture81:VehiclePicture{idc=kgcd1f+81;};class VehicleTitle81:VehicleTitle{idc=kgeus2+81;};class VehicleBuyButton81:VehicleBuyButton{idc=kg8bb7+81;action="81 call kgsiku";};class VehicleBuyPrice81:VehicleBuyPrice{idc=kghs7s+81;};class VehicleDescription81:VehicleDescription{idc=kgvc2n+81;};class VehicleOverlay81:VehicleOverlay{idc=kg8rg5+81;};class VehiclePicture82:VehiclePicture{idc=kgcd1f+82;};class VehicleTitle82:VehicleTitle{idc=kgeus2+82;};class VehicleBuyButton82:VehicleBuyButton{idc=kg8bb7+82;action="82 call kgsiku";};class VehicleBuyPrice82:VehicleBuyPrice{idc=kghs7s+82;};class VehicleDescription82:VehicleDescription{idc=kgvc2n+82;};class VehicleOverlay82:VehicleOverlay{idc=kg8rg5+82;};class VehiclePicture83:VehiclePicture{idc=kgcd1f+83;};class VehicleTitle83:VehicleTitle{idc=kgeus2+83;};class VehicleBuyButton83:VehicleBuyButton{idc=kg8bb7+83;action="83 call kgsiku";};class VehicleBuyPrice83:VehicleBuyPrice{idc=kghs7s+83;};class VehicleDescription83:VehicleDescription{idc=kgvc2n+83;};class VehicleOverlay83:VehicleOverlay{idc=kg8rg5+83;};class VehiclePicture84:VehiclePicture{idc=kgcd1f+84;};class VehicleTitle84:VehicleTitle{idc=kgeus2+84;};class VehicleBuyButton84:VehicleBuyButton{idc=kg8bb7+84;action="84 call kgsiku";};class VehicleBuyPrice84:VehicleBuyPrice{idc=kghs7s+84;};class VehicleDescription84:VehicleDescription{idc=kgvc2n+84;};class VehicleOverlay84:VehicleOverlay{idc=kg8rg5+84;};class VehiclePicture85:VehiclePicture{idc=kgcd1f+85;};class VehicleTitle85:VehicleTitle{idc=kgeus2+85;};class VehicleBuyButton85:VehicleBuyButton{idc=kg8bb7+85;action="85 call kgsiku";};class VehicleBuyPrice85:VehicleBuyPrice{idc=kghs7s+85;};class VehicleDescription85:VehicleDescription{idc=kgvc2n+85;};class VehicleOverlay85:VehicleOverlay{idc=kg8rg5+85;};class VehiclePicture86:VehiclePicture{idc=kgcd1f+86;};class VehicleTitle86:VehicleTitle{idc=kgeus2+86;};class VehicleBuyButton86:VehicleBuyButton{idc=kg8bb7+86;action="86 call kgsiku";};class VehicleBuyPrice86:VehicleBuyPrice{idc=kghs7s+86;};class VehicleDescription86:VehicleDescription{idc=kgvc2n+86;};class VehicleOverlay86:VehicleOverlay{idc=kg8rg5+86;};class VehiclePicture87:VehiclePicture{idc=kgcd1f+87;};class VehicleTitle87:VehicleTitle{idc=kgeus2+87;};class VehicleBuyButton87:VehicleBuyButton{idc=kg8bb7+87;action="87 call kgsiku";};class VehicleBuyPrice87:VehicleBuyPrice{idc=kghs7s+87;};class VehicleDescription87:VehicleDescription{idc=kgvc2n+87;};class VehicleOverlay87:VehicleOverlay{idc=kg8rg5+87;};class VehiclePicture88:VehiclePicture{idc=kgcd1f+88;};class VehicleTitle88:VehicleTitle{idc=kgeus2+88;};class VehicleBuyButton88:VehicleBuyButton{idc=kg8bb7+88;action="88 call kgsiku";};class VehicleBuyPrice88:VehicleBuyPrice{idc=kghs7s+88;};class VehicleDescription88:VehicleDescription{idc=kgvc2n+88;};class VehicleOverlay88:VehicleOverlay{idc=kg8rg5+88;};class VehiclePicture89:VehiclePicture{idc=kgcd1f+89;};class VehicleTitle89:VehicleTitle{idc=kgeus2+89;};class VehicleBuyButton89:VehicleBuyButton{idc=kg8bb7+89;action="89 call kgsiku";};class VehicleBuyPrice89:VehicleBuyPrice{idc=kghs7s+89;};class VehicleDescription89:VehicleDescription{idc=kgvc2n+89;};class VehicleOverlay89:VehicleOverlay{idc=kg8rg5+89;};class VehiclePicture90:VehiclePicture{idc=kgcd1f+90;};class VehicleTitle90:VehicleTitle{idc=kgeus2+90;};class VehicleBuyButton90:VehicleBuyButton{idc=kg8bb7+90;action="90 call kgsiku";};class VehicleBuyPrice90:VehicleBuyPrice{idc=kghs7s+90;};class VehicleDescription90:VehicleDescription{idc=kgvc2n+90;};class VehicleOverlay90:VehicleOverlay{idc=kg8rg5+90;};class VehiclePicture91:VehiclePicture{idc=kgcd1f+91;};class VehicleTitle91:VehicleTitle{idc=kgeus2+91;};class VehicleBuyButton91:VehicleBuyButton{idc=kg8bb7+91;action="91 call kgsiku";};class VehicleBuyPrice91:VehicleBuyPrice{idc=kghs7s+91;};class VehicleDescription91:VehicleDescription{idc=kgvc2n+91;};class VehicleOverlay91:VehicleOverlay{idc=kg8rg5+91;};class VehiclePicture92:VehiclePicture{idc=kgcd1f+92;};class VehicleTitle92:VehicleTitle{idc=kgeus2+92;};class VehicleBuyButton92:VehicleBuyButton{idc=kg8bb7+92;action="92 call kgsiku";};class VehicleBuyPrice92:VehicleBuyPrice{idc=kghs7s+92;};class VehicleDescription92:VehicleDescription{idc=kgvc2n+92;};class VehicleOverlay92:VehicleOverlay{idc=kg8rg5+92;};class VehiclePicture93:VehiclePicture{idc=kgcd1f+93;};class VehicleTitle93:VehicleTitle{idc=kgeus2+93;};class VehicleBuyButton93:VehicleBuyButton{idc=kg8bb7+93;action="93 call kgsiku";};class VehicleBuyPrice93:VehicleBuyPrice{idc=kghs7s+93;};class VehicleDescription93:VehicleDescription{idc=kgvc2n+93;};class VehicleOverlay93:VehicleOverlay{idc=kg8rg5+93;};class VehiclePicture94:VehiclePicture{idc=kgcd1f+94;};class VehicleTitle94:VehicleTitle{idc=kgeus2+94;};class VehicleBuyButton94:VehicleBuyButton{idc=kg8bb7+94;action="94 call kgsiku";};class VehicleBuyPrice94:VehicleBuyPrice{idc=kghs7s+94;};class VehicleDescription94:VehicleDescription{idc=kgvc2n+94;};class VehicleOverlay94:VehicleOverlay{idc=kg8rg5+94;};class VehiclePicture95:VehiclePicture{idc=kgcd1f+95;};class VehicleTitle95:VehicleTitle{idc=kgeus2+95;};class VehicleBuyButton95:VehicleBuyButton{idc=kg8bb7+95;action="95 call kgsiku";};class VehicleBuyPrice95:VehicleBuyPrice{idc=kghs7s+95;};class VehicleDescription95:VehicleDescription{idc=kgvc2n+95;};class VehicleOverlay95:VehicleOverlay{idc=kg8rg5+95;};class VehiclePicture96:VehiclePicture{idc=kgcd1f+96;};class VehicleTitle96:VehicleTitle{idc=kgeus2+96;};class VehicleBuyButton96:VehicleBuyButton{idc=kg8bb7+96;action="96 call kgsiku";};class VehicleBuyPrice96:VehicleBuyPrice{idc=kghs7s+96;};class VehicleDescription96:VehicleDescription{idc=kgvc2n+96;};class VehicleOverlay96:VehicleOverlay{idc=kg8rg5+96;};class VehiclePicture97:VehiclePicture{idc=kgcd1f+97;};class VehicleTitle97:VehicleTitle{idc=kgeus2+97;};class VehicleBuyButton97:VehicleBuyButton{idc=kg8bb7+97;action="97 call kgsiku";};class VehicleBuyPrice97:VehicleBuyPrice{idc=kghs7s+97;};class VehicleDescription97:VehicleDescription{idc=kgvc2n+97;};class VehicleOverlay97:VehicleOverlay{idc=kg8rg5+97;};class VehiclePicture98:VehiclePicture{idc=kgcd1f+98;};class VehicleTitle98:VehicleTitle{idc=kgeus2+98;};class VehicleBuyButton98:VehicleBuyButton{idc=kg8bb7+98;action="98 call kgsiku";};class VehicleBuyPrice98:VehicleBuyPrice{idc=kghs7s+98;};class VehicleDescription98:VehicleDescription{idc=kgvc2n+98;};class VehicleOverlay98:VehicleOverlay{idc=kg8rg5+98;};class VehiclePicture99:VehiclePicture{idc=kgcd1f+99;};class VehicleTitle99:VehicleTitle{idc=kgeus2+99;};class VehicleBuyButton99:VehicleBuyButton{idc=kg8bb7+99;action="99 call kgsiku";};class VehicleBuyPrice99:VehicleBuyPrice{idc=kghs7s+99;};class VehicleDescription99:VehicleDescription{idc=kgvc2n+99;};class VehicleOverlay99:VehicleOverlay{idc=kg8rg5+99;};};};class ButtonClose:RscButtonMenu{idc=-1;text=$STR_KOH_Dlg_Close;x=0;y=0.9-A3_SIZE(1);w=(6.25/40);h=A3_SIZE(1);action="closeDialog 0";};};};