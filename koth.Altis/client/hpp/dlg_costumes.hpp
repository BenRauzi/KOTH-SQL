/*
	ArmA 3 King of Hill
	Code written by Sa-Matra
	Using this code without Sa-Matra's direct permission is forbidden
	
	Special build for Gamed.de
	
	Build ETYKMBSIGDHGNALL
*/
class KingOfHill_Costumes{idd=-1;duration=1e+011;name="KingOfHill_Costumes";movingEnable=0;enableSimulation=1;onLoad="uiNamespace setVariable ['KingOfHill_Costumes', _this select 0]; (_this select 0) call kg69n9;";onUnload="call kgg8yf";class controlsBackground{
#include "tiles.hpp"
#define TAB_WIDTH (8 / 40)
class RscTitleBackground:RscText{colorBackground[]={"(profilenamespace getvariable ['GUI_BCG_RGB_R',0.3843])","(profilenamespace getvariable ['GUI_BCG_RGB_G',0.7019])","(profilenamespace getvariable ['GUI_BCG_RGB_B',0.8862])","(profilenamespace getvariable ['GUI_BCG_RGB_A',0.7])"};idc=-1;x=0;y=0.1;w=1;h=A3_SIZE(1);};class MainBackground:RscText{idc=-1;x=0;y=0.1+A3_SIZE(1)+_SPY(1);w=1;h=0.8-(A3_SIZE(1)+_SPY(1))-(A3_SIZE(1)+_SPY(1))+0.001;colorBackground[]={0,0,0,0.7};};};class Controls{class Title:RscTitle{idc=-1;text="服装选择";x=0;y=0.1;w=1;h=(1/25);};class PlayersName:Title{idc=kgwcj6;style=1;text="Sa-Matra";};
#undef BLOCK_WIDTH
#define IMAGE_WIDTH	0.28 * (getResolution select 3) / (getResolution select 2)
#define IMAGE_HEIGHT	0.56
#define BLOCK_WIDTH	0.30
#define BLOCK_HEIGHT	(0.8 - (A3_SIZE(1) + _SPY(1)) - (A3_SIZE(1) + _SPY(1)))
#define TITLE_SIZE	A3_SIZE(1.2)
#define BUTTON_WIDTH	0.2
#define BUTTON_SIZE	A3_SIZE(1.2)
class CostumesList:RscControlsGroup{idc=kgkbli;x=0;y=0.1+A3_SIZE(1)+_SPY(1);w=1;h=BLOCK_HEIGHT;class Controls{class GearTitle:RscText{idc=kgvdqv+0;style=2;x=0;y=0+_SPY(3);w=BLOCK_WIDTH;h=TITLE_SIZE;sizeEx=TITLE_SIZE;text="";};class GearText:RscStructuredText{idc=kgi5gu+0;x=0;y=0+_SPY(3)+TITLE_SIZE;w=BLOCK_WIDTH;h=A3_SIZE(0.8)*2;text="";};class GearButton:RscButtonMenu{idc=kgu38p+0;x=(BLOCK_WIDTH-BUTTON_WIDTH)/2;y=0+_SPY(3)+TITLE_SIZE+_SPY(1);w=BUTTON_WIDTH;h=BUTTON_SIZE;size=BUTTON_SIZE;text="选择";action="0 call kg4f7w";class Attributes{align="center";font="PuristaLight";};};class GearStatus:RscText{idc=kgg4lj+0;style=2;x=(BLOCK_WIDTH-BUTTON_WIDTH)/2;y=0+_SPY(3)+TITLE_SIZE+_SPY(1);w=BUTTON_WIDTH;h=BUTTON_SIZE;sizeEx=BUTTON_SIZE;text="已选择";colorBackground[]={"(profilenamespace getvariable ['GUI_BCG_RGB_R',0.3843])","(profilenamespace getvariable ['GUI_BCG_RGB_G',0.7019])","(profilenamespace getvariable ['GUI_BCG_RGB_B',0.8862])",1};};class GearPicture:RscPicture{idc=kga54u+0;x=0+(BLOCK_WIDTH-IMAGE_WIDTH)/2;y=0+_SPY(3)+TITLE_SIZE+_SPY(1)+BUTTON_SIZE;w=IMAGE_WIDTH;h=IMAGE_HEIGHT;text="";};class GearOverlay:RscStructuredText{idc=kgd6pm+0;x=0;y=0;w=BLOCK_WIDTH;h=BLOCK_HEIGHT;colorBackground[]={0,0,0,0.6};text="";size=BLOCK_HEIGHT/12;shadow=2;class Attributes{font="PuristaLight";align="center";};};class GearTitle1:GearTitle{idc=kgvdqv+1;};class GearText1:GearText{idc=kgi5gu+1;};class GearButton1:GearButton{idc=kgu38p+1;action="1 call kg4f7w";};class GearStatus1:GearStatus{idc=kgg4lj+1;};class GearPicture1:GearPicture{idc=kga54u+1;};class GearOverlay1:GearOverlay{idc=kgd6pm+1;};class GearTitle2:GearTitle{idc=kgvdqv+2;};class GearText2:GearText{idc=kgi5gu+2;};class GearButton2:GearButton{idc=kgu38p+2;action="2 call kg4f7w";};class GearStatus2:GearStatus{idc=kgg4lj+2;};class GearPicture2:GearPicture{idc=kga54u+2;};class GearOverlay2:GearOverlay{idc=kgd6pm+2;};class GearTitle3:GearTitle{idc=kgvdqv+3;};class GearText3:GearText{idc=kgi5gu+3;};class GearButton3:GearButton{idc=kgu38p+3;action="3 call kg4f7w";};class GearStatus3:GearStatus{idc=kgg4lj+3;};class GearPicture3:GearPicture{idc=kga54u+3;};class GearOverlay3:GearOverlay{idc=kgd6pm+3;};class GearTitle4:GearTitle{idc=kgvdqv+4;};class GearText4:GearText{idc=kgi5gu+4;};class GearButton4:GearButton{idc=kgu38p+4;action="4 call kg4f7w";};class GearStatus4:GearStatus{idc=kgg4lj+4;};class GearPicture4:GearPicture{idc=kga54u+4;};class GearOverlay4:GearOverlay{idc=kgd6pm+4;};class GearTitle5:GearTitle{idc=kgvdqv+5;};class GearText5:GearText{idc=kgi5gu+5;};class GearButton5:GearButton{idc=kgu38p+5;action="5 call kg4f7w";};class GearStatus5:GearStatus{idc=kgg4lj+5;};class GearPicture5:GearPicture{idc=kga54u+5;};class GearOverlay5:GearOverlay{idc=kgd6pm+5;};class GearTitle6:GearTitle{idc=kgvdqv+6;};class GearText6:GearText{idc=kgi5gu+6;};class GearButton6:GearButton{idc=kgu38p+6;action="6 call kg4f7w";};class GearStatus6:GearStatus{idc=kgg4lj+6;};class GearPicture6:GearPicture{idc=kga54u+6;};class GearOverlay6:GearOverlay{idc=kgd6pm+6;};class GearTitle7:GearTitle{idc=kgvdqv+7;};class GearText7:GearText{idc=kgi5gu+7;};class GearButton7:GearButton{idc=kgu38p+7;action="7 call kg4f7w";};class GearStatus7:GearStatus{idc=kgg4lj+7;};class GearPicture7:GearPicture{idc=kga54u+7;};class GearOverlay7:GearOverlay{idc=kgd6pm+7;};class GearTitle8:GearTitle{idc=kgvdqv+8;};class GearText8:GearText{idc=kgi5gu+8;};class GearButton8:GearButton{idc=kgu38p+8;action="8 call kg4f7w";};class GearStatus8:GearStatus{idc=kgg4lj+8;};class GearPicture8:GearPicture{idc=kga54u+8;};class GearOverlay8:GearOverlay{idc=kgd6pm+8;};class GearTitle9:GearTitle{idc=kgvdqv+9;};class GearText9:GearText{idc=kgi5gu+9;};class GearButton9:GearButton{idc=kgu38p+9;action="9 call kg4f7w";};class GearStatus9:GearStatus{idc=kgg4lj+9;};class GearPicture9:GearPicture{idc=kga54u+9;};class GearOverlay9:GearOverlay{idc=kgd6pm+9;};class GearTitle10:GearTitle{idc=kgvdqv+10;};class GearText10:GearText{idc=kgi5gu+10;};class GearButton10:GearButton{idc=kgu38p+10;action="10 call kg4f7w";};class GearStatus10:GearStatus{idc=kgg4lj+10;};class GearPicture10:GearPicture{idc=kga54u+10;};class GearOverlay10:GearOverlay{idc=kgd6pm+10;};class GearTitle11:GearTitle{idc=kgvdqv+11;};class GearText11:GearText{idc=kgi5gu+11;};class GearButton11:GearButton{idc=kgu38p+11;action="11 call kg4f7w";};class GearStatus11:GearStatus{idc=kgg4lj+11;};class GearPicture11:GearPicture{idc=kga54u+11;};class GearOverlay11:GearOverlay{idc=kgd6pm+11;};class GearTitle12:GearTitle{idc=kgvdqv+12;};class GearText12:GearText{idc=kgi5gu+12;};class GearButton12:GearButton{idc=kgu38p+12;action="12 call kg4f7w";};class GearStatus12:GearStatus{idc=kgg4lj+12;};class GearPicture12:GearPicture{idc=kga54u+12;};class GearOverlay12:GearOverlay{idc=kgd6pm+12;};class GearTitle13:GearTitle{idc=kgvdqv+13;};class GearText13:GearText{idc=kgi5gu+13;};class GearButton13:GearButton{idc=kgu38p+13;action="13 call kg4f7w";};class GearStatus13:GearStatus{idc=kgg4lj+13;};class GearPicture13:GearPicture{idc=kga54u+13;};class GearOverlay13:GearOverlay{idc=kgd6pm+13;};class GearTitle14:GearTitle{idc=kgvdqv+14;};class GearText14:GearText{idc=kgi5gu+14;};class GearButton14:GearButton{idc=kgu38p+14;action="14 call kg4f7w";};class GearStatus14:GearStatus{idc=kgg4lj+14;};class GearPicture14:GearPicture{idc=kga54u+14;};class GearOverlay14:GearOverlay{idc=kgd6pm+14;};class GearTitle15:GearTitle{idc=kgvdqv+15;};class GearText15:GearText{idc=kgi5gu+15;};class GearButton15:GearButton{idc=kgu38p+15;action="15 call kg4f7w";};class GearStatus15:GearStatus{idc=kgg4lj+15;};class GearPicture15:GearPicture{idc=kga54u+15;};class GearOverlay15:GearOverlay{idc=kgd6pm+15;};class GearTitle16:GearTitle{idc=kgvdqv+16;};class GearText16:GearText{idc=kgi5gu+16;};class GearButton16:GearButton{idc=kgu38p+16;action="16 call kg4f7w";};class GearStatus16:GearStatus{idc=kgg4lj+16;};class GearPicture16:GearPicture{idc=kga54u+16;};class GearOverlay16:GearOverlay{idc=kgd6pm+16;};class GearTitle17:GearTitle{idc=kgvdqv+17;};class GearText17:GearText{idc=kgi5gu+17;};class GearButton17:GearButton{idc=kgu38p+17;action="17 call kg4f7w";};class GearStatus17:GearStatus{idc=kgg4lj+17;};class GearPicture17:GearPicture{idc=kga54u+17;};class GearOverlay17:GearOverlay{idc=kgd6pm+17;};class GearTitle18:GearTitle{idc=kgvdqv+18;};class GearText18:GearText{idc=kgi5gu+18;};class GearButton18:GearButton{idc=kgu38p+18;action="18 call kg4f7w";};class GearStatus18:GearStatus{idc=kgg4lj+18;};class GearPicture18:GearPicture{idc=kga54u+18;};class GearOverlay18:GearOverlay{idc=kgd6pm+18;};class GearTitle19:GearTitle{idc=kgvdqv+19;};class GearText19:GearText{idc=kgi5gu+19;};class GearButton19:GearButton{idc=kgu38p+19;action="19 call kg4f7w";};class GearStatus19:GearStatus{idc=kgg4lj+19;};class GearPicture19:GearPicture{idc=kga54u+19;};class GearOverlay19:GearOverlay{idc=kgd6pm+19;};class GearTitle20:GearTitle{idc=kgvdqv+20;};class GearText20:GearText{idc=kgi5gu+20;};class GearButton20:GearButton{idc=kgu38p+20;action="20 call kg4f7w";};class GearStatus20:GearStatus{idc=kgg4lj+20;};class GearPicture20:GearPicture{idc=kga54u+20;};class GearOverlay20:GearOverlay{idc=kgd6pm+20;};class GearTitle21:GearTitle{idc=kgvdqv+21;};class GearText21:GearText{idc=kgi5gu+21;};class GearButton21:GearButton{idc=kgu38p+21;action="21 call kg4f7w";};class GearStatus21:GearStatus{idc=kgg4lj+21;};class GearPicture21:GearPicture{idc=kga54u+21;};class GearOverlay21:GearOverlay{idc=kgd6pm+21;};class GearTitle22:GearTitle{idc=kgvdqv+22;};class GearText22:GearText{idc=kgi5gu+22;};class GearButton22:GearButton{idc=kgu38p+22;action="22 call kg4f7w";};class GearStatus22:GearStatus{idc=kgg4lj+22;};class GearPicture22:GearPicture{idc=kga54u+22;};class GearOverlay22:GearOverlay{idc=kgd6pm+22;};class GearTitle23:GearTitle{idc=kgvdqv+23;};class GearText23:GearText{idc=kgi5gu+23;};class GearButton23:GearButton{idc=kgu38p+23;action="23 call kg4f7w";};class GearStatus23:GearStatus{idc=kgg4lj+23;};class GearPicture23:GearPicture{idc=kga54u+23;};class GearOverlay23:GearOverlay{idc=kgd6pm+23;};class GearTitle24:GearTitle{idc=kgvdqv+24;};class GearText24:GearText{idc=kgi5gu+24;};class GearButton24:GearButton{idc=kgu38p+24;action="24 call kg4f7w";};class GearStatus24:GearStatus{idc=kgg4lj+24;};class GearPicture24:GearPicture{idc=kga54u+24;};class GearOverlay24:GearOverlay{idc=kgd6pm+24;};class GearTitle25:GearTitle{idc=kgvdqv+25;};class GearText25:GearText{idc=kgi5gu+25;};class GearButton25:GearButton{idc=kgu38p+25;action="25 call kg4f7w";};class GearStatus25:GearStatus{idc=kgg4lj+25;};class GearPicture25:GearPicture{idc=kga54u+25;};class GearOverlay25:GearOverlay{idc=kgd6pm+25;};class GearTitle26:GearTitle{idc=kgvdqv+26;};class GearText26:GearText{idc=kgi5gu+26;};class GearButton26:GearButton{idc=kgu38p+26;action="26 call kg4f7w";};class GearStatus26:GearStatus{idc=kgg4lj+26;};class GearPicture26:GearPicture{idc=kga54u+26;};class GearOverlay26:GearOverlay{idc=kgd6pm+26;};class GearTitle27:GearTitle{idc=kgvdqv+27;};class GearText27:GearText{idc=kgi5gu+27;};class GearButton27:GearButton{idc=kgu38p+27;action="27 call kg4f7w";};class GearStatus27:GearStatus{idc=kgg4lj+27;};class GearPicture27:GearPicture{idc=kga54u+27;};class GearOverlay27:GearOverlay{idc=kgd6pm+27;};class GearTitle28:GearTitle{idc=kgvdqv+28;};class GearText28:GearText{idc=kgi5gu+28;};class GearButton28:GearButton{idc=kgu38p+28;action="28 call kg4f7w";};class GearStatus28:GearStatus{idc=kgg4lj+28;};class GearPicture28:GearPicture{idc=kga54u+28;};class GearOverlay28:GearOverlay{idc=kgd6pm+28;};class GearTitle29:GearTitle{idc=kgvdqv+29;};class GearText29:GearText{idc=kgi5gu+29;};class GearButton29:GearButton{idc=kgu38p+29;action="29 call kg4f7w";};class GearStatus29:GearStatus{idc=kgg4lj+29;};class GearPicture29:GearPicture{idc=kga54u+29;};class GearOverlay29:GearOverlay{idc=kgd6pm+29;};class GearTitle30:GearTitle{idc=kgvdqv+30;};class GearText30:GearText{idc=kgi5gu+30;};class GearButton30:GearButton{idc=kgu38p+30;action="30 call kg4f7w";};class GearStatus30:GearStatus{idc=kgg4lj+30;};class GearPicture30:GearPicture{idc=kga54u+30;};class GearOverlay30:GearOverlay{idc=kgd6pm+30;};class GearTitle31:GearTitle{idc=kgvdqv+31;};class GearText31:GearText{idc=kgi5gu+31;};class GearButton31:GearButton{idc=kgu38p+31;action="31 call kg4f7w";};class GearStatus31:GearStatus{idc=kgg4lj+31;};class GearPicture31:GearPicture{idc=kga54u+31;};class GearOverlay31:GearOverlay{idc=kgd6pm+31;};class GearTitle32:GearTitle{idc=kgvdqv+32;};class GearText32:GearText{idc=kgi5gu+32;};class GearButton32:GearButton{idc=kgu38p+32;action="32 call kg4f7w";};class GearStatus32:GearStatus{idc=kgg4lj+32;};class GearPicture32:GearPicture{idc=kga54u+32;};class GearOverlay32:GearOverlay{idc=kgd6pm+32;};class GearTitle33:GearTitle{idc=kgvdqv+33;};class GearText33:GearText{idc=kgi5gu+33;};class GearButton33:GearButton{idc=kgu38p+33;action="33 call kg4f7w";};class GearStatus33:GearStatus{idc=kgg4lj+33;};class GearPicture33:GearPicture{idc=kga54u+33;};class GearOverlay33:GearOverlay{idc=kgd6pm+33;};class GearTitle34:GearTitle{idc=kgvdqv+34;};class GearText34:GearText{idc=kgi5gu+34;};class GearButton34:GearButton{idc=kgu38p+34;action="34 call kg4f7w";};class GearStatus34:GearStatus{idc=kgg4lj+34;};class GearPicture34:GearPicture{idc=kga54u+34;};class GearOverlay34:GearOverlay{idc=kgd6pm+34;};class GearTitle35:GearTitle{idc=kgvdqv+35;};class GearText35:GearText{idc=kgi5gu+35;};class GearButton35:GearButton{idc=kgu38p+35;action="35 call kg4f7w";};class GearStatus35:GearStatus{idc=kgg4lj+35;};class GearPicture35:GearPicture{idc=kga54u+35;};class GearOverlay35:GearOverlay{idc=kgd6pm+35;};class GearTitle36:GearTitle{idc=kgvdqv+36;};class GearText36:GearText{idc=kgi5gu+36;};class GearButton36:GearButton{idc=kgu38p+36;action="36 call kg4f7w";};class GearStatus36:GearStatus{idc=kgg4lj+36;};class GearPicture36:GearPicture{idc=kga54u+36;};class GearOverlay36:GearOverlay{idc=kgd6pm+36;};class GearTitle37:GearTitle{idc=kgvdqv+37;};class GearText37:GearText{idc=kgi5gu+37;};class GearButton37:GearButton{idc=kgu38p+37;action="37 call kg4f7w";};class GearStatus37:GearStatus{idc=kgg4lj+37;};class GearPicture37:GearPicture{idc=kga54u+37;};class GearOverlay37:GearOverlay{idc=kgd6pm+37;};class GearTitle38:GearTitle{idc=kgvdqv+38;};class GearText38:GearText{idc=kgi5gu+38;};class GearButton38:GearButton{idc=kgu38p+38;action="38 call kg4f7w";};class GearStatus38:GearStatus{idc=kgg4lj+38;};class GearPicture38:GearPicture{idc=kga54u+38;};class GearOverlay38:GearOverlay{idc=kgd6pm+38;};class GearTitle39:GearTitle{idc=kgvdqv+39;};class GearText39:GearText{idc=kgi5gu+39;};class GearButton39:GearButton{idc=kgu38p+39;action="39 call kg4f7w";};class GearStatus39:GearStatus{idc=kgg4lj+39;};class GearPicture39:GearPicture{idc=kga54u+39;};class GearOverlay39:GearOverlay{idc=kgd6pm+39;};class GearTitle40:GearTitle{idc=kgvdqv+40;};class GearText40:GearText{idc=kgi5gu+40;};class GearButton40:GearButton{idc=kgu38p+40;action="40 call kg4f7w";};class GearStatus40:GearStatus{idc=kgg4lj+40;};class GearPicture40:GearPicture{idc=kga54u+40;};class GearOverlay40:GearOverlay{idc=kgd6pm+40;};class GearTitle41:GearTitle{idc=kgvdqv+41;};class GearText41:GearText{idc=kgi5gu+41;};class GearButton41:GearButton{idc=kgu38p+41;action="41 call kg4f7w";};class GearStatus41:GearStatus{idc=kgg4lj+41;};class GearPicture41:GearPicture{idc=kga54u+41;};class GearOverlay41:GearOverlay{idc=kgd6pm+41;};class GearTitle42:GearTitle{idc=kgvdqv+42;};class GearText42:GearText{idc=kgi5gu+42;};class GearButton42:GearButton{idc=kgu38p+42;action="42 call kg4f7w";};class GearStatus42:GearStatus{idc=kgg4lj+42;};class GearPicture42:GearPicture{idc=kga54u+42;};class GearOverlay42:GearOverlay{idc=kgd6pm+42;};class GearTitle43:GearTitle{idc=kgvdqv+43;};class GearText43:GearText{idc=kgi5gu+43;};class GearButton43:GearButton{idc=kgu38p+43;action="43 call kg4f7w";};class GearStatus43:GearStatus{idc=kgg4lj+43;};class GearPicture43:GearPicture{idc=kga54u+43;};class GearOverlay43:GearOverlay{idc=kgd6pm+43;};class GearTitle44:GearTitle{idc=kgvdqv+44;};class GearText44:GearText{idc=kgi5gu+44;};class GearButton44:GearButton{idc=kgu38p+44;action="44 call kg4f7w";};class GearStatus44:GearStatus{idc=kgg4lj+44;};class GearPicture44:GearPicture{idc=kga54u+44;};class GearOverlay44:GearOverlay{idc=kgd6pm+44;};class GearTitle45:GearTitle{idc=kgvdqv+45;};class GearText45:GearText{idc=kgi5gu+45;};class GearButton45:GearButton{idc=kgu38p+45;action="45 call kg4f7w";};class GearStatus45:GearStatus{idc=kgg4lj+45;};class GearPicture45:GearPicture{idc=kga54u+45;};class GearOverlay45:GearOverlay{idc=kgd6pm+45;};class GearTitle46:GearTitle{idc=kgvdqv+46;};class GearText46:GearText{idc=kgi5gu+46;};class GearButton46:GearButton{idc=kgu38p+46;action="46 call kg4f7w";};class GearStatus46:GearStatus{idc=kgg4lj+46;};class GearPicture46:GearPicture{idc=kga54u+46;};class GearOverlay46:GearOverlay{idc=kgd6pm+46;};class GearTitle47:GearTitle{idc=kgvdqv+47;};class GearText47:GearText{idc=kgi5gu+47;};class GearButton47:GearButton{idc=kgu38p+47;action="47 call kg4f7w";};class GearStatus47:GearStatus{idc=kgg4lj+47;};class GearPicture47:GearPicture{idc=kga54u+47;};class GearOverlay47:GearOverlay{idc=kgd6pm+47;};class GearTitle48:GearTitle{idc=kgvdqv+48;};class GearText48:GearText{idc=kgi5gu+48;};class GearButton48:GearButton{idc=kgu38p+48;action="48 call kg4f7w";};class GearStatus48:GearStatus{idc=kgg4lj+48;};class GearPicture48:GearPicture{idc=kga54u+48;};class GearOverlay48:GearOverlay{idc=kgd6pm+48;};class GearTitle49:GearTitle{idc=kgvdqv+49;};class GearText49:GearText{idc=kgi5gu+49;};class GearButton49:GearButton{idc=kgu38p+49;action="49 call kg4f7w";};class GearStatus49:GearStatus{idc=kgg4lj+49;};class GearPicture49:GearPicture{idc=kga54u+49;};class GearOverlay49:GearOverlay{idc=kgd6pm+49;};class GearTitle50:GearTitle{idc=kgvdqv+50;};class GearText50:GearText{idc=kgi5gu+50;};class GearButton50:GearButton{idc=kgu38p+50;action="50 call kg4f7w";};class GearStatus50:GearStatus{idc=kgg4lj+50;};class GearPicture50:GearPicture{idc=kga54u+50;};class GearOverlay50:GearOverlay{idc=kgd6pm+50;};class GearTitle51:GearTitle{idc=kgvdqv+51;};class GearText51:GearText{idc=kgi5gu+51;};class GearButton51:GearButton{idc=kgu38p+51;action="51 call kg4f7w";};class GearStatus51:GearStatus{idc=kgg4lj+51;};class GearPicture51:GearPicture{idc=kga54u+51;};class GearOverlay51:GearOverlay{idc=kgd6pm+51;};class GearTitle52:GearTitle{idc=kgvdqv+52;};class GearText52:GearText{idc=kgi5gu+52;};class GearButton52:GearButton{idc=kgu38p+52;action="52 call kg4f7w";};class GearStatus52:GearStatus{idc=kgg4lj+52;};class GearPicture52:GearPicture{idc=kga54u+52;};class GearOverlay52:GearOverlay{idc=kgd6pm+52;};class GearTitle53:GearTitle{idc=kgvdqv+53;};class GearText53:GearText{idc=kgi5gu+53;};class GearButton53:GearButton{idc=kgu38p+53;action="53 call kg4f7w";};class GearStatus53:GearStatus{idc=kgg4lj+53;};class GearPicture53:GearPicture{idc=kga54u+53;};class GearOverlay53:GearOverlay{idc=kgd6pm+53;};class GearTitle54:GearTitle{idc=kgvdqv+54;};class GearText54:GearText{idc=kgi5gu+54;};class GearButton54:GearButton{idc=kgu38p+54;action="54 call kg4f7w";};class GearStatus54:GearStatus{idc=kgg4lj+54;};class GearPicture54:GearPicture{idc=kga54u+54;};class GearOverlay54:GearOverlay{idc=kgd6pm+54;};class GearTitle55:GearTitle{idc=kgvdqv+55;};class GearText55:GearText{idc=kgi5gu+55;};class GearButton55:GearButton{idc=kgu38p+55;action="55 call kg4f7w";};class GearStatus55:GearStatus{idc=kgg4lj+55;};class GearPicture55:GearPicture{idc=kga54u+55;};class GearOverlay55:GearOverlay{idc=kgd6pm+55;};class GearTitle56:GearTitle{idc=kgvdqv+56;};class GearText56:GearText{idc=kgi5gu+56;};class GearButton56:GearButton{idc=kgu38p+56;action="56 call kg4f7w";};class GearStatus56:GearStatus{idc=kgg4lj+56;};class GearPicture56:GearPicture{idc=kga54u+56;};class GearOverlay56:GearOverlay{idc=kgd6pm+56;};class GearTitle57:GearTitle{idc=kgvdqv+57;};class GearText57:GearText{idc=kgi5gu+57;};class GearButton57:GearButton{idc=kgu38p+57;action="57 call kg4f7w";};class GearStatus57:GearStatus{idc=kgg4lj+57;};class GearPicture57:GearPicture{idc=kga54u+57;};class GearOverlay57:GearOverlay{idc=kgd6pm+57;};class GearTitle58:GearTitle{idc=kgvdqv+58;};class GearText58:GearText{idc=kgi5gu+58;};class GearButton58:GearButton{idc=kgu38p+58;action="58 call kg4f7w";};class GearStatus58:GearStatus{idc=kgg4lj+58;};class GearPicture58:GearPicture{idc=kga54u+58;};class GearOverlay58:GearOverlay{idc=kgd6pm+58;};class GearTitle59:GearTitle{idc=kgvdqv+59;};class GearText59:GearText{idc=kgi5gu+59;};class GearButton59:GearButton{idc=kgu38p+59;action="59 call kg4f7w";};class GearStatus59:GearStatus{idc=kgg4lj+59;};class GearPicture59:GearPicture{idc=kga54u+59;};class GearOverlay59:GearOverlay{idc=kgd6pm+59;};class GearTitle60:GearTitle{idc=kgvdqv+60;};class GearText60:GearText{idc=kgi5gu+60;};class GearButton60:GearButton{idc=kgu38p+60;action="60 call kg4f7w";};class GearStatus60:GearStatus{idc=kgg4lj+60;};class GearPicture60:GearPicture{idc=kga54u+60;};class GearOverlay60:GearOverlay{idc=kgd6pm+60;};class GearTitle61:GearTitle{idc=kgvdqv+61;};class GearText61:GearText{idc=kgi5gu+61;};class GearButton61:GearButton{idc=kgu38p+61;action="61 call kg4f7w";};class GearStatus61:GearStatus{idc=kgg4lj+61;};class GearPicture61:GearPicture{idc=kga54u+61;};class GearOverlay61:GearOverlay{idc=kgd6pm+61;};class GearTitle62:GearTitle{idc=kgvdqv+62;};class GearText62:GearText{idc=kgi5gu+62;};class GearButton62:GearButton{idc=kgu38p+62;action="62 call kg4f7w";};class GearStatus62:GearStatus{idc=kgg4lj+62;};class GearPicture62:GearPicture{idc=kga54u+62;};class GearOverlay62:GearOverlay{idc=kgd6pm+62;};class GearTitle63:GearTitle{idc=kgvdqv+63;};class GearText63:GearText{idc=kgi5gu+63;};class GearButton63:GearButton{idc=kgu38p+63;action="63 call kg4f7w";};class GearStatus63:GearStatus{idc=kgg4lj+63;};class GearPicture63:GearPicture{idc=kga54u+63;};class GearOverlay63:GearOverlay{idc=kgd6pm+63;};class GearTitle64:GearTitle{idc=kgvdqv+64;};class GearText64:GearText{idc=kgi5gu+64;};class GearButton64:GearButton{idc=kgu38p+64;action="64 call kg4f7w";};class GearStatus64:GearStatus{idc=kgg4lj+64;};class GearPicture64:GearPicture{idc=kga54u+64;};class GearOverlay64:GearOverlay{idc=kgd6pm+64;};class GearTitle65:GearTitle{idc=kgvdqv+65;};class GearText65:GearText{idc=kgi5gu+65;};class GearButton65:GearButton{idc=kgu38p+65;action="65 call kg4f7w";};class GearStatus65:GearStatus{idc=kgg4lj+65;};class GearPicture65:GearPicture{idc=kga54u+65;};class GearOverlay65:GearOverlay{idc=kgd6pm+65;};class GearTitle66:GearTitle{idc=kgvdqv+66;};class GearText66:GearText{idc=kgi5gu+66;};class GearButton66:GearButton{idc=kgu38p+66;action="66 call kg4f7w";};class GearStatus66:GearStatus{idc=kgg4lj+66;};class GearPicture66:GearPicture{idc=kga54u+66;};class GearOverlay66:GearOverlay{idc=kgd6pm+66;};class GearTitle67:GearTitle{idc=kgvdqv+67;};class GearText67:GearText{idc=kgi5gu+67;};class GearButton67:GearButton{idc=kgu38p+67;action="67 call kg4f7w";};class GearStatus67:GearStatus{idc=kgg4lj+67;};class GearPicture67:GearPicture{idc=kga54u+67;};class GearOverlay67:GearOverlay{idc=kgd6pm+67;};class GearTitle68:GearTitle{idc=kgvdqv+68;};class GearText68:GearText{idc=kgi5gu+68;};class GearButton68:GearButton{idc=kgu38p+68;action="68 call kg4f7w";};class GearStatus68:GearStatus{idc=kgg4lj+68;};class GearPicture68:GearPicture{idc=kga54u+68;};class GearOverlay68:GearOverlay{idc=kgd6pm+68;};class GearTitle69:GearTitle{idc=kgvdqv+69;};class GearText69:GearText{idc=kgi5gu+69;};class GearButton69:GearButton{idc=kgu38p+69;action="69 call kg4f7w";};class GearStatus69:GearStatus{idc=kgg4lj+69;};class GearPicture69:GearPicture{idc=kga54u+69;};class GearOverlay69:GearOverlay{idc=kgd6pm+69;};class GearTitle70:GearTitle{idc=kgvdqv+70;};class GearText70:GearText{idc=kgi5gu+70;};class GearButton70:GearButton{idc=kgu38p+70;action="70 call kg4f7w";};class GearStatus70:GearStatus{idc=kgg4lj+70;};class GearPicture70:GearPicture{idc=kga54u+70;};class GearOverlay70:GearOverlay{idc=kgd6pm+70;};class GearTitle71:GearTitle{idc=kgvdqv+71;};class GearText71:GearText{idc=kgi5gu+71;};class GearButton71:GearButton{idc=kgu38p+71;action="71 call kg4f7w";};class GearStatus71:GearStatus{idc=kgg4lj+71;};class GearPicture71:GearPicture{idc=kga54u+71;};class GearOverlay71:GearOverlay{idc=kgd6pm+71;};class GearTitle72:GearTitle{idc=kgvdqv+72;};class GearText72:GearText{idc=kgi5gu+72;};class GearButton72:GearButton{idc=kgu38p+72;action="72 call kg4f7w";};class GearStatus72:GearStatus{idc=kgg4lj+72;};class GearPicture72:GearPicture{idc=kga54u+72;};class GearOverlay72:GearOverlay{idc=kgd6pm+72;};class GearTitle73:GearTitle{idc=kgvdqv+73;};class GearText73:GearText{idc=kgi5gu+73;};class GearButton73:GearButton{idc=kgu38p+73;action="73 call kg4f7w";};class GearStatus73:GearStatus{idc=kgg4lj+73;};class GearPicture73:GearPicture{idc=kga54u+73;};class GearOverlay73:GearOverlay{idc=kgd6pm+73;};class GearTitle74:GearTitle{idc=kgvdqv+74;};class GearText74:GearText{idc=kgi5gu+74;};class GearButton74:GearButton{idc=kgu38p+74;action="74 call kg4f7w";};class GearStatus74:GearStatus{idc=kgg4lj+74;};class GearPicture74:GearPicture{idc=kga54u+74;};class GearOverlay74:GearOverlay{idc=kgd6pm+74;};class GearTitle75:GearTitle{idc=kgvdqv+75;};class GearText75:GearText{idc=kgi5gu+75;};class GearButton75:GearButton{idc=kgu38p+75;action="75 call kg4f7w";};class GearStatus75:GearStatus{idc=kgg4lj+75;};class GearPicture75:GearPicture{idc=kga54u+75;};class GearOverlay75:GearOverlay{idc=kgd6pm+75;};class GearTitle76:GearTitle{idc=kgvdqv+76;};class GearText76:GearText{idc=kgi5gu+76;};class GearButton76:GearButton{idc=kgu38p+76;action="76 call kg4f7w";};class GearStatus76:GearStatus{idc=kgg4lj+76;};class GearPicture76:GearPicture{idc=kga54u+76;};class GearOverlay76:GearOverlay{idc=kgd6pm+76;};class GearTitle77:GearTitle{idc=kgvdqv+77;};class GearText77:GearText{idc=kgi5gu+77;};class GearButton77:GearButton{idc=kgu38p+77;action="77 call kg4f7w";};class GearStatus77:GearStatus{idc=kgg4lj+77;};class GearPicture77:GearPicture{idc=kga54u+77;};class GearOverlay77:GearOverlay{idc=kgd6pm+77;};class GearTitle78:GearTitle{idc=kgvdqv+78;};class GearText78:GearText{idc=kgi5gu+78;};class GearButton78:GearButton{idc=kgu38p+78;action="78 call kg4f7w";};class GearStatus78:GearStatus{idc=kgg4lj+78;};class GearPicture78:GearPicture{idc=kga54u+78;};class GearOverlay78:GearOverlay{idc=kgd6pm+78;};class GearTitle79:GearTitle{idc=kgvdqv+79;};class GearText79:GearText{idc=kgi5gu+79;};class GearButton79:GearButton{idc=kgu38p+79;action="79 call kg4f7w";};class GearStatus79:GearStatus{idc=kgg4lj+79;};class GearPicture79:GearPicture{idc=kga54u+79;};class GearOverlay79:GearOverlay{idc=kgd6pm+79;};class GearTitle80:GearTitle{idc=kgvdqv+80;};class GearText80:GearText{idc=kgi5gu+80;};class GearButton80:GearButton{idc=kgu38p+80;action="80 call kg4f7w";};class GearStatus80:GearStatus{idc=kgg4lj+80;};class GearPicture80:GearPicture{idc=kga54u+80;};class GearOverlay80:GearOverlay{idc=kgd6pm+80;};class GearTitle81:GearTitle{idc=kgvdqv+81;};class GearText81:GearText{idc=kgi5gu+81;};class GearButton81:GearButton{idc=kgu38p+81;action="81 call kg4f7w";};class GearStatus81:GearStatus{idc=kgg4lj+81;};class GearPicture81:GearPicture{idc=kga54u+81;};class GearOverlay81:GearOverlay{idc=kgd6pm+81;};class GearTitle82:GearTitle{idc=kgvdqv+82;};class GearText82:GearText{idc=kgi5gu+82;};class GearButton82:GearButton{idc=kgu38p+82;action="82 call kg4f7w";};class GearStatus82:GearStatus{idc=kgg4lj+82;};class GearPicture82:GearPicture{idc=kga54u+82;};class GearOverlay82:GearOverlay{idc=kgd6pm+82;};class GearTitle83:GearTitle{idc=kgvdqv+83;};class GearText83:GearText{idc=kgi5gu+83;};class GearButton83:GearButton{idc=kgu38p+83;action="83 call kg4f7w";};class GearStatus83:GearStatus{idc=kgg4lj+83;};class GearPicture83:GearPicture{idc=kga54u+83;};class GearOverlay83:GearOverlay{idc=kgd6pm+83;};class GearTitle84:GearTitle{idc=kgvdqv+84;};class GearText84:GearText{idc=kgi5gu+84;};class GearButton84:GearButton{idc=kgu38p+84;action="84 call kg4f7w";};class GearStatus84:GearStatus{idc=kgg4lj+84;};class GearPicture84:GearPicture{idc=kga54u+84;};class GearOverlay84:GearOverlay{idc=kgd6pm+84;};class GearTitle85:GearTitle{idc=kgvdqv+85;};class GearText85:GearText{idc=kgi5gu+85;};class GearButton85:GearButton{idc=kgu38p+85;action="85 call kg4f7w";};class GearStatus85:GearStatus{idc=kgg4lj+85;};class GearPicture85:GearPicture{idc=kga54u+85;};class GearOverlay85:GearOverlay{idc=kgd6pm+85;};class GearTitle86:GearTitle{idc=kgvdqv+86;};class GearText86:GearText{idc=kgi5gu+86;};class GearButton86:GearButton{idc=kgu38p+86;action="86 call kg4f7w";};class GearStatus86:GearStatus{idc=kgg4lj+86;};class GearPicture86:GearPicture{idc=kga54u+86;};class GearOverlay86:GearOverlay{idc=kgd6pm+86;};class GearTitle87:GearTitle{idc=kgvdqv+87;};class GearText87:GearText{idc=kgi5gu+87;};class GearButton87:GearButton{idc=kgu38p+87;action="87 call kg4f7w";};class GearStatus87:GearStatus{idc=kgg4lj+87;};class GearPicture87:GearPicture{idc=kga54u+87;};class GearOverlay87:GearOverlay{idc=kgd6pm+87;};class GearTitle88:GearTitle{idc=kgvdqv+88;};class GearText88:GearText{idc=kgi5gu+88;};class GearButton88:GearButton{idc=kgu38p+88;action="88 call kg4f7w";};class GearStatus88:GearStatus{idc=kgg4lj+88;};class GearPicture88:GearPicture{idc=kga54u+88;};class GearOverlay88:GearOverlay{idc=kgd6pm+88;};class GearTitle89:GearTitle{idc=kgvdqv+89;};class GearText89:GearText{idc=kgi5gu+89;};class GearButton89:GearButton{idc=kgu38p+89;action="89 call kg4f7w";};class GearStatus89:GearStatus{idc=kgg4lj+89;};class GearPicture89:GearPicture{idc=kga54u+89;};class GearOverlay89:GearOverlay{idc=kgd6pm+89;};class GearTitle90:GearTitle{idc=kgvdqv+90;};class GearText90:GearText{idc=kgi5gu+90;};class GearButton90:GearButton{idc=kgu38p+90;action="90 call kg4f7w";};class GearStatus90:GearStatus{idc=kgg4lj+90;};class GearPicture90:GearPicture{idc=kga54u+90;};class GearOverlay90:GearOverlay{idc=kgd6pm+90;};class GearTitle91:GearTitle{idc=kgvdqv+91;};class GearText91:GearText{idc=kgi5gu+91;};class GearButton91:GearButton{idc=kgu38p+91;action="91 call kg4f7w";};class GearStatus91:GearStatus{idc=kgg4lj+91;};class GearPicture91:GearPicture{idc=kga54u+91;};class GearOverlay91:GearOverlay{idc=kgd6pm+91;};class GearTitle92:GearTitle{idc=kgvdqv+92;};class GearText92:GearText{idc=kgi5gu+92;};class GearButton92:GearButton{idc=kgu38p+92;action="92 call kg4f7w";};class GearStatus92:GearStatus{idc=kgg4lj+92;};class GearPicture92:GearPicture{idc=kga54u+92;};class GearOverlay92:GearOverlay{idc=kgd6pm+92;};class GearTitle93:GearTitle{idc=kgvdqv+93;};class GearText93:GearText{idc=kgi5gu+93;};class GearButton93:GearButton{idc=kgu38p+93;action="93 call kg4f7w";};class GearStatus93:GearStatus{idc=kgg4lj+93;};class GearPicture93:GearPicture{idc=kga54u+93;};class GearOverlay93:GearOverlay{idc=kgd6pm+93;};class GearTitle94:GearTitle{idc=kgvdqv+94;};class GearText94:GearText{idc=kgi5gu+94;};class GearButton94:GearButton{idc=kgu38p+94;action="94 call kg4f7w";};class GearStatus94:GearStatus{idc=kgg4lj+94;};class GearPicture94:GearPicture{idc=kga54u+94;};class GearOverlay94:GearOverlay{idc=kgd6pm+94;};class GearTitle95:GearTitle{idc=kgvdqv+95;};class GearText95:GearText{idc=kgi5gu+95;};class GearButton95:GearButton{idc=kgu38p+95;action="95 call kg4f7w";};class GearStatus95:GearStatus{idc=kgg4lj+95;};class GearPicture95:GearPicture{idc=kga54u+95;};class GearOverlay95:GearOverlay{idc=kgd6pm+95;};class GearTitle96:GearTitle{idc=kgvdqv+96;};class GearText96:GearText{idc=kgi5gu+96;};class GearButton96:GearButton{idc=kgu38p+96;action="96 call kg4f7w";};class GearStatus96:GearStatus{idc=kgg4lj+96;};class GearPicture96:GearPicture{idc=kga54u+96;};class GearOverlay96:GearOverlay{idc=kgd6pm+96;};class GearTitle97:GearTitle{idc=kgvdqv+97;};class GearText97:GearText{idc=kgi5gu+97;};class GearButton97:GearButton{idc=kgu38p+97;action="97 call kg4f7w";};class GearStatus97:GearStatus{idc=kgg4lj+97;};class GearPicture97:GearPicture{idc=kga54u+97;};class GearOverlay97:GearOverlay{idc=kgd6pm+97;};class GearTitle98:GearTitle{idc=kgvdqv+98;};class GearText98:GearText{idc=kgi5gu+98;};class GearButton98:GearButton{idc=kgu38p+98;action="98 call kg4f7w";};class GearStatus98:GearStatus{idc=kgg4lj+98;};class GearPicture98:GearPicture{idc=kga54u+98;};class GearOverlay98:GearOverlay{idc=kgd6pm+98;};class GearTitle99:GearTitle{idc=kgvdqv+99;};class GearText99:GearText{idc=kgi5gu+99;};class GearButton99:GearButton{idc=kgu38p+99;action="99 call kg4f7w";};class GearStatus99:GearStatus{idc=kgg4lj+99;};class GearPicture99:GearPicture{idc=kga54u+99;};class GearOverlay99:GearOverlay{idc=kgd6pm+99;};};};class ButtonClose:RscButtonMenu{idc=-1;text=$STR_KOH_Dlg_Close;x=0;y=0.1+0.8-A3_SIZE(1);w=(6.25/40);h=A3_SIZE(1);action="closeDialog 0";};};};