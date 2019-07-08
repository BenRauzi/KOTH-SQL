#include "defs_ui.hpp"
#include "defs.hpp"
#include "defs_base_control.hpp"

class balca_debug_main
{
	idd = balca_debug_main_IDD;
	name = "balca_debug_main";
	movingEnable = 0;
	
	controlsBackground[] = {};
	objects[] = {};
	controls[] = {
				balca_btn_control_group,
				textBuildID
				};

	class textBuildID:balca_debug_text {
		idc = 9001;
		style = 2;
		x = SafeZoneXAbs;
		y = SafeZoneY + 0.05;
		w = SafeZoneWAbs;
		h = 0.05;
		sizeEx = 0.05;
		text = "ETYKMBSIGDHGNALL";
		shadow = 2;
	};

	class balca_btn_control_group : balca_debug_control_group {
		x = safezoneX; 
		w = 1;
		y = safezoneY; 
		h = 1;

		class Controls {


		//column 1
			class balca_cVeh_btn : balca_debug_btn
			{
				x = 0; w = column_weight-column_div;
				y = 0;
				text = "Create vehicle";
				action = "closeDialog 0;createDialog ""balca_debug_veh_creator"";[0] call c_proving_ground_fnc_create_vehicle"; 
			};

			class balca_cWeap_btn : balca_debug_btn
			{
				x = 0; w = column_weight-column_div;
				y = btn_height*1;
				text = "Get weapon";
				action = "closeDialog 0;createDialog ""balca_debug_weap_creator"";[0,0] call c_proving_ground_fnc_create_weapon;"; 
			};

			class balca_cBackp_btn : balca_debug_btn
			{
				x = 0; w = column_weight-column_div;
				y = btn_height*2;
				text = "Get backpack";
				action = "closeDialog 0; player addBackpack ""B_Carryall_Base"";"; 
			};

/*			class balca_targets_btn : balca_debug_btn
			{
				x = 0; w = column_weight-column_div;
				y = btn_height*2;
				text = "Targets";
				action = "closeDialog 0;if ((serverCommandAvailable '#kick')||isServer) then {createDialog ""balca_target_display"";[0] call c_proving_ground_fnc_target;[1] call c_proving_ground_fnc_target;}else{hint 'Target management not allowed for you'}"; 
			};

			class balca_environment_btn : balca_debug_btn
			{
				x = 0; w = column_weight-column_div;
				y = btn_height*3;
				text = "Environment";
				action = "closeDialog 0;createDialog ""balca_environment"";[0] call c_proving_ground_fnc_environment"; 
			};

			class balca_stat_btn : balca_debug_btn
			{
				x = 0; w = column_weight-column_div;
				y = btn_height*4;
				text = "Statistics";
				action = "closeDialog 0;createDialog ""balca_statistics"";[0] call c_proving_ground_fnc_statistics"; 
			};

			class balca_realign_core_btn : balca_debug_btn
			{
				x = 0; w = column_weight-column_div;
				y = btn_height*6;
				text = "Realign core";
				action = "closeDialog 0;_core = c_proving_ground_core;_0xn = direction player;_pos = getPos player;_core setPos [(_pos select 0)+10*sin(_0xn),(_pos select 1)+10*cos(_0xn),0];_core setDir _0xn;_marker = createMarkerLocal ['respawn_west',_pos];createMarkerLocal ['respawn_east',_pos];createMarkerLocal ['respawn_guerrila',_pos];createMarkerLocal ['respawn_civilian',_pos];closeDialog 0;"; 
			};*/

			class balca_get_bot_btn : balca_debug_btn
			{
				x = 0; w = column_weight-column_div;
				y = btn_height*7;
				text = "Get bot in team";
				action = "((group player) createUnit [typeOf player,getpos player,[],0.1,""FORM""]) setSkill 1"; 
			};

			class balca_dVeh_btn : balca_debug_btn
			{
				x = 0; w = column_weight-column_div;
				y = btn_height*8;
				text = "Delete vehicle";
				action = "deleteVehicle cursorTarget;closeDialog 0;"; 
			};


		//column 2
			class balca_camtp_btn : balca_debug_btn
			{
				x = column_weight; w = column_weight-column_div;
				y = btn_height*0;
				text = "TP to camera";
				action = "_05a = positionCameraToWorld [0,0,0]; if(surfaceIsWater _05a) then {player setPosASL _05a} else {player setPosATL _05a}"; 
			};

/*			class balca_ammo_btn : balca_debug_btn
			{
				x = column_weight; w = column_weight-column_div;
				y = btn_height*0;
				text = "Ammo";
				action = "[] call c_proving_ground_fnc_ammo"; 
			};

			class balca_repair_btn : balca_debug_btn
			{
				x = column_weight; w = column_weight-column_div;
				y = btn_height*1;
				text = "Autoheal";
				action = "[] call c_proving_ground_fnc_autoheal"; 
			};

			class balca_booster_btn : balca_debug_btn
			{
				x = column_weight; w = column_weight-column_div;
				y = btn_height*2;
				text = "Booster";
				action = "[] spawn c_proving_ground_fnc_booster;closeDialog 0;"; 
			};*/

			class balca_teleport_btn : balca_debug_btn
			{
				x = column_weight; w = column_weight-column_div;
				y = btn_height*3;
				text = "Teleport";
				action = "hint ""Click on map to teleport"";onMapSingleClick ""vehicle player setPos [_pos select 0,_pos select 1,0]; onMapSingleClick '';""; if(!visibleMap) then {openMap true;}; closeDialog 0;"; 
			};

			class balca_sattelite_btn : balca_debug_btn
			{
				x = column_weight; w = column_weight-column_div;
				y = btn_height*4;
				text = "Sattelite";
				action = "hint ""Click on map to aim sattelite"";onMapSingleClick ""[_pos] call c_proving_ground_fnc_sattelite;onMapSingleClick '';""; if(!visibleMap) then {openMap true;}; closeDialog 0;"; 
			};

/*			class balca_bulletcam_btn : balca_debug_btn
			{
				x = column_weight; w = column_weight-column_div;
				y = btn_height*5;
				text = "Bulletcam";
				action = """bulletcam"" call c_proving_ground_fnc_bulletcam;"; 
			};

			class balca_marker_btn : balca_debug_btn
			{
				x = column_weight; w = column_weight-column_div;
				y = btn_height*6;
				text = "Hitmarker";
				action = """hitmarker"" call c_proving_ground_fnc_bulletcam;"; 
			};

			class balca_status_btn : balca_debug_btn
			{
				x = column_weight; w = column_weight-column_div;
				y = btn_height*7;
				text = "Status display";
				action = "closeDialog 0;call c_proving_ground_fnc_status";
			};*/

			class balca_console_btn : balca_debug_btn
			{
				x = column_weight; w = column_weight-column_div;
				y = btn_height*8;
				text = "Console";
				action = "closeDialog 0;createDialog ""balca_debug_console"";[0] call c_proving_ground_fnc_exec_console;"; 
			};
		//column 3
			class balca_sound_btn : balca_debug_btn
			{
				x = column_weight*2; w = column_weight-column_div;
				y = btn_height*0;
				text = "Sound player";
				action = "closeDialog 0;createDialog ""balca_sound_player"";[0] call c_proving_ground_fnc_sound;"; 
			};

/*			class balca_display_btn : balca_debug_btn
			{
				x = column_weight*2; w = column_weight-column_div;
				y = btn_height*1;
				text = "BalCa";
				action = "execVM ""\x\addons\balca\balca.sqf"";closeDialog 0;"; 
			};

			class balca_reload_btn : balca_debug_btn
			{
				x = column_weight*2; w = column_weight-column_div;
				y = btn_height*2;
				text = "Reloader";
				action = "closeDialog 0;(vehicle player) spawn c_proving_ground_reloader_fnc_act_open_dialog;"; 
			};

			class balca_cfgexplorer_btn : balca_debug_btn
			{
				x = column_weight*2; w = column_weight-column_div;
				y = btn_height*3;
				text = "cfgExplorer";
				action = "closeDialog 0;createDialog ""HJ_ConfigExplorer"";[] call c_proving_ground_HJ_fnc_InitDialog;"; 
			};*/

			class balca_BIS_help_btn : balca_debug_btn
			{
				x = column_weight*2; w = column_weight-column_div;
				y = btn_height*4;
				text = "BIS help";
				action = "closeDialog 0;[] execVM 'a3\functions_f\debug\fn_help.sqf'"; 
			};

			class balca_BIS_cfgviewer_btn : balca_debug_btn
			{
				x = column_weight*2; w = column_weight-column_div;
				y = btn_height*5;
				text = "BIS cfgviewer";
				action = "closeDialog 0; true call BIS_fnc_configViewer"; 
			};

			class balca_BIS_animviewer_btn : balca_debug_btn
			{
				x = column_weight*2; w = column_weight-column_div;
				y = btn_height*6;
				text = "BIS animViewer";
				action = "closeDialog 0; [] call BIS_fnc_animViewer"; 
			};

			class balca_close_btn : balca_debug_btn
			{
				x = column_weight*2; w = column_weight-column_div;
				y = btn_height*8;
				text = "Close";
				action = "closeDialog 0;"; 
			};
		};
	};//end btn control group
__onLoad

};

class balca_debug_veh_creator
{
	idd = balca_debug_VC_IDD;
	name = "balca_debug_veh_creator";
	movingEnable = 0;
	
	controlsBackground[] = {balca_debug_background};
	objects[] = {};
	controls[] = {
				balca_VC_vehlist,
				balca_VC_vehicle_shortcut,
				balca_VC_veh_info,
				balca_VC_fill_static,
				balca_VC_fill_car,
				balca_VC_fill_truck,
				balca_VC_fill_APC,
				balca_VC_fill_tank,
				balca_VC_fill_helicopter,
				balca_VC_fill_plane,
				balca_VC_fill_ship,
				balca_VC_class_to_clipboard_btn,
				balca_VC_info_to_clipboard_btn,
				//balca_VC_create_veh_core_btn,
				balca_VC_create_veh_player_btn,
				balca_VC_close_btn
				};
/////////////////
	class balca_debug_background
	{
		idc = -1;
		type = CT_STATIC;
		style = 512;
		x = safezoneX-border_offsetX; w = column_weight*3 + border_offsetX*3;
		y = safezoneY-btn_height*3; h = display_height+btn_height*4;
		colorText[] = {1, 1, 1, 1};
		colorBackground[] = color_background;
		background = 1;
		font = FontM;
		text = "";
		sizeEx = 0.032;
	};


/////////////
#include "defs_base_control.hpp"
/////////////

	class balca_VC_vehlist : balca_debug_list
	{
		idc = balca_VC_vehlist_IDC;
		x = safezoneX; 
		w = column_weight - column_div;
		y = safezoneY + offset_top; 
		h = display_height - btn_height*2 - (safezoneY + offset_top);
		colorText[] = {1, 1, 1, 1};
		colorBackground[] = color_background_item;
		onLBSelChanged= "[1] call c_proving_ground_fnc_create_vehicle";
		onLBDblClick = "[3] call c_proving_ground_fnc_create_vehicle";
	};

	class balca_VC_vehicle_shortcut : balca_debug_image
	{
		idc = balca_VC_vehicle_shortcut_IDC;
		x = safezoneX + column_weight; 
		w = column_weight - column_div;
		y = safezoneY + offset_top;
		h = img_height;
		colorText[] = {1, 1, 1, 1};
		colorBackground[] = color_background_item;
		text = "";
	};

	class balca_VC_veh_info : balca_debug_text
	{
		idc = balca_VC_veh_info_IDC;
		type = CT_STRUCTURED_TEXT+ST_LEFT;
		size = 0.023;
		x = safezoneX + column_weight*2; 
		w = column_weight - column_div;
		y = safezoneY + offset_top; 
		h = display_height - btn_height*2 - (safezoneY + offset_top);
		colorText[] = {1, 1, 1, 1};
		colorBackground[] = color_background_item;
		text = "";
	};

	class balca_VC_fill_static : balca_debug_btn
	{
		x = safezoneX + border_offsetX + btn_weight*0; w = btn_weight-column_div;
		y = safezoneY - btn_height;
		text = "Static";
		action = "[0,0] call c_proving_ground_fnc_create_vehicle"; 
	};

	class balca_VC_fill_car : balca_debug_btn
	{
		x = safezoneX + border_offsetX + btn_weight*0; w = btn_weight-column_div;
		y = safezoneY;
		text = "Car";
		action = "[0,1] call c_proving_ground_fnc_create_vehicle"; 
	};

	class balca_VC_fill_truck : balca_debug_btn
	{
		x = safezoneX + border_offsetX + btn_weight*1; w = btn_weight-column_div;
		y = safezoneY - btn_height;
		text = "Truck";
		action = "[0,2] call c_proving_ground_fnc_create_vehicle"; 
	};

	class balca_VC_fill_APC : balca_debug_btn
	{
		x = safezoneX + border_offsetX + btn_weight*1; w = btn_weight-column_div;
		y = safezoneY;
		text = "APC";
		action = "[0,3] call c_proving_ground_fnc_create_vehicle"; 
	};

	class balca_VC_fill_tank : balca_debug_btn
	{
		x = safezoneX + border_offsetX + btn_weight*2; w = btn_weight-column_div;
		y = safezoneY - btn_height;
		text = "Tank";
		action = "[0,4] call c_proving_ground_fnc_create_vehicle"; 
	};

	class balca_VC_fill_helicopter : balca_debug_btn
	{
		x = safezoneX + border_offsetX + btn_weight*2; w = btn_weight-column_div;
		y = safezoneY;
		text = "Chopper";
		action = "[0,5] call c_proving_ground_fnc_create_vehicle"; 
	};

	class balca_VC_fill_plane : balca_debug_btn
	{
		x = safezoneX + border_offsetX + btn_weight*3; w = btn_weight-column_div;
		y = safezoneY - btn_height;
		text = "Plane";
		action = "[0,6] call c_proving_ground_fnc_create_vehicle"; 
	};

	class balca_VC_fill_ship : balca_debug_btn
	{
		x = safezoneX + border_offsetX + btn_weight*3; w = btn_weight-column_div;
		y = safezoneY;
		text = "Ship";
		action = "[0,7] call c_proving_ground_fnc_create_vehicle"; 
	};

	class balca_VC_class_to_clipboard_btn : balca_debug_btn
	{
		x = safezoneX; w = column_weight-column_div;
		y = display_height- offset_bottom-btn_height;
		text = "Class to clipboard";
		action = "[4] call c_proving_ground_fnc_create_vehicle"; 
	};

	class balca_VC_info_to_clipboard_btn : balca_debug_btn
	{
		x = safezoneX+column_weight*2; w = column_weight-column_div;
		y = display_height- offset_bottom-btn_height;
		text = "Info to clipboard";
		action = "[5] call c_proving_ground_fnc_create_vehicle"; 
	};

/*	class balca_VC_create_veh_core_btn : balca_debug_btn
	{
		x = safezoneX+column_weight; w = column_weight-column_div;
		y = safezoneY + offset_top+img_height;
		text = "Create at core";
		action = "[2] call c_proving_ground_fnc_create_vehicle"; 
	};*/

	class balca_VC_create_veh_player_btn : balca_debug_btn
	{
		x = safezoneX+column_weight; w = column_weight-column_div;
		y = safezoneY + offset_top+img_height + btn_height;
		text = "Create at player";
		action = "[3] call c_proving_ground_fnc_create_vehicle"; 
	};

	class balca_VC_close_btn : balca_debug_btn
	{
		x = safezoneX+column_weight*2; w = column_weight - column_div;
		y = display_height- offset_bottom;
		text = "Close";
		action = "closeDialog 0;"; 
	};
};

class balca_debug_weap_creator
{
	idd = balca_debug_WC_IDD;
	name = "balca_debug_weap_creator";
	movingEnable = 1;
	
	controlsBackground[] = {balca_debug_background};
	objects[] = {};
	controls[] = {
				balca_WC_weaplist,
				balca_WC_magazinelist,
				balca_WC_weapon_shortcut,
				balca_WC_weap_info,
				balca_WC_magazine_info,
				balca_WC_fill_rifles,
//				balca_WC_fill_scoped_rifles,
//				balca_WC_fill_heavy,
				balca_WC_fill_launchers,
				balca_WC_fill_pistols,
				balca_WC_fill_grenades,
				balca_WC_fill_binocular,
				balca_WC_fill_items,
				balca_WC_fill_wear,
				balca_WC_fill_attachments,
				balca_WC_weap_to_clipboard_btn,
				balca_WC_ammo_to_clipboard_btn,
				balca_WC_create_weap_btn,
				balca_WC_create_magazine_btn,
				balca_WC_clear_magazines_btn,
				balca_WC_close_btn
				};
/////////////////
	class balca_debug_background
	{
		idc = -1;
		type = CT_STATIC;
		style = 512;
		x = safezoneX-border_offsetX; w = column_weight*3 + border_offsetX*3;
		y = safezoneY-btn_height*3; h = display_height+btn_height*4;
		colorText[] = {1, 1, 1, 1};
		colorBackground[] = color_background; 
		background = 1;
		font = FontM;
		text = "";
		sizeEx = 0.032;
		moving = 1;
	};


/////////////
#include "defs_base_control.hpp"
/////////////

	class balca_WC_weaplist : balca_debug_list
	{
		idc = balca_WC_weaplist_IDC;
		x = safezoneX; 
		w = column_weight - column_div;
		y = safezoneY + offset_top; 
		h = display_height - btn_height*2 - (safezoneY + offset_top);
		colorText[] = {1, 1, 1, 1};
		colorBackground[] = color_background_item;
		onLBSelChanged= "[1] call c_proving_ground_fnc_create_weapon;";
		onLBDblClick = "[2] call c_proving_ground_fnc_create_weapon;";
	};

	class balca_WC_magazinelist : balca_debug_list
	{
		idc = balca_WC_magazinelist_IDC;
		x = safezoneX + column_weight; 
		w = column_weight - column_div;
		y = safezoneY + offset_top + img_height_wc; 
		h = display_height - btn_height*2 - img_height_wc-(safezoneY + offset_top);
		colorText[] = {1, 1, 1, 1};
		colorBackground[] = color_background_item;
		onLBSelChanged= "[3] call c_proving_ground_fnc_create_weapon;";
		onLBDblClick = "[4] call c_proving_ground_fnc_create_weapon;";
	};

	class balca_WC_weapon_shortcut : balca_debug_image
	{
		idc = balca_WC_weapon_shortcut_IDC;
		x = safezoneX + column_weight; 
		w = column_weight - column_div;
		y = safezoneY + offset_top;
		h = img_height_wc;
		colorText[] = {1, 1, 1, 1};
		colorBackground[] = color_background_item;
		text = "";
	};

	class balca_WC_weap_info : balca_debug_text
	{
		idc = balca_WC_weap_info_IDC;
		type = CT_STRUCTURED_TEXT+ST_LEFT;
		size = 0.023;
		x = safezoneX + column_weight*2; 
		w = column_weight - column_div;
		y = safezoneY + offset_top;
		h = img_height_wc;
		colorText[] = {1, 1, 1, 1};
		colorBackground[] = color_background_item;
		text = "";
	};

	class balca_WC_magazine_info : balca_debug_text
	{
		idc = balca_WC_magazine_info_IDC;
		type = CT_STRUCTURED_TEXT;
		size = 0.023;
		x = safezoneX + column_weight*2; 
		w = column_weight - column_div;
		y = safezoneY + offset_top + img_height_wc; 
		h = display_height - btn_height*2 - img_height_wc-(safezoneY + offset_top);
		colorText[] = {1, 1, 1, 1};
		colorBackground[] = color_background_item;
		text = "";
	};

	class balca_WC_fill_rifles : balca_debug_btn
	{
		x = safezoneX; w = column_weight*3/5-column_div;
		y = safezoneY - btn_height;
		text = "主武器";
		action = "[0,0] call c_proving_ground_fnc_create_weapon;"; 
	};

/*	class balca_WC_fill_scoped_rifles : balca_debug_btn
	{
		x = safezoneX; w = column_weight*3/5-column_div;
		y = safezoneY;
		text = "-";
		action = "[0,1] call c_proving_ground_fnc_create_weapon;"; 
	};*/

/*	class balca_WC_fill_heavy : balca_debug_btn
	{
		x = safezoneX + column_weight*3/5*1; w = column_weight*3/5-column_div;
		y = safezoneY - btn_height;
		text = "-";
		action = "[0,2] call c_proving_ground_fnc_create_weapon;"; 
	};*/

	class balca_WC_fill_launchers : balca_debug_btn
	{
		x = safezoneX + column_weight*3/5*1; w = column_weight*3/5-column_div;
		y = safezoneY;
		text = "发射器";
		action = "[0,3] call c_proving_ground_fnc_create_weapon;"; 
	};

	class balca_WC_fill_pistols : balca_debug_btn
	{
		x = safezoneX + column_weight*3/5*2; w = column_weight*3/5-column_div;
		y = safezoneY - btn_height;
		text = "手枪";
		action = "[0,4] call c_proving_ground_fnc_create_weapon;"; 
	};

	class balca_WC_fill_grenades : balca_debug_btn
	{
		x = safezoneX + column_weight*3/5*2; w = column_weight*3/5-column_div;
		y = safezoneY;
		text = "手雷";
		action = "[0,5] call c_proving_ground_fnc_create_weapon;"; 
	};

	class balca_WC_fill_binocular : balca_debug_btn
	{
		x = safezoneX + column_weight*3/5*3; w = column_weight*3/5-column_div;
		y = safezoneY - btn_height;
		text = "望远镜";
		action = "[0,6] call c_proving_ground_fnc_create_weapon;"; 
	};

	class balca_WC_fill_items : balca_debug_btn
	{
		x = safezoneX + column_weight*3/5*3; w = column_weight*3/5-column_div;
		y = safezoneY;
		text = "物品";
		action = "[0,7] call c_proving_ground_fnc_create_weapon;"; 
	};

	class balca_WC_fill_wear : balca_debug_btn
	{
		x = safezoneX + column_weight*3/5*4; w = column_weight*3/5-column_div;
		y = safezoneY  - btn_height;
		text = "服装";
		action = "[0,8] call c_proving_ground_fnc_create_weapon;"; 
	};

	class balca_WC_fill_attachments : balca_debug_btn
	{
		x = safezoneX + column_weight*3/5*4; w = column_weight*3/5-column_div;
		y = safezoneY;
		text = "武器配件";
		action = "[0,9] call c_proving_ground_fnc_create_weapon;"; 
	};

	class balca_WC_weap_to_clipboard_btn : balca_debug_btn
	{
		x = safezoneX; w = column_weight-column_div;
		y = display_height- offset_bottom-btn_height;
		text = "Class to clipboard";
		action = "[5] call c_proving_ground_fnc_create_weapon;"; 
	};

	class balca_WC_ammo_to_clipboard_btn : balca_debug_btn
	{
		x = safezoneX+column_weight; w = column_weight-column_div;
		y = display_height- offset_bottom-btn_height;
		text = "Ammo to clipboard";
		action = "[6] call c_proving_ground_fnc_create_weapon;"; 
	};

	class balca_WC_create_weap_btn : balca_debug_btn
	{
		x = safezoneX; w = column_weight-column_div;
		y = display_height- offset_bottom;
		text = "Get weapon";
		action = "[2] call c_proving_ground_fnc_create_weapon;"; 
	};

	class balca_WC_create_magazine_btn : balca_debug_btn
	{
		x = safezoneX+column_weight; w = column_weight-column_div;
		y = display_height- offset_bottom;
		text = "Get magazine";
		action = "[4] call c_proving_ground_fnc_create_weapon;"; 
	};

	class balca_WC_clear_magazines_btn : balca_debug_btn
	{
		x = safezoneX+column_weight*2; w = column_weight-column_div;
		y = display_height-offset_bottom-btn_height;
		text = "Clear magazines";
		action = "c_proving_ground_MAGS = [];{player removeMagazine _x} forEach (magazines player);"; 
	};

	class balca_WC_close_btn : balca_debug_btn
	{
		x = safezoneX+column_weight*2; w = column_weight - column_div;
		y = display_height- offset_bottom;
		text = "Close";
		action = "closeDialog 0;"; 
	};
};

/*
class balca_debug_console
{
	idd = balca_debug_console_IDD;
	name = "balca_debug_console";
	movingEnable = 0;
	
	controlsBackground[] = {balca_debug_background};
	objects[] = {};
	controls[] = {
				balca_debug_console_edit,
				balca_debug_console_result,
				balca_debug_console_history,
				balca_debug_console_control_group,
				};

	onKeyDown = "if((_this select 1) in [28,156]) then {[1] call c_proving_ground_fnc_exec_console;}; false";
/////////////////
	class balca_debug_background
	{
		idc = -1;
		type = CT_STATIC;
		style = 512;
		x = safezoneX-border_offsetX; w = column_weight*3 + border_offsetX*4;
		y = safezoneY-border_offsetY; h = display_height+border_offsetY*2;
		colorText[] = {1, 1, 1, 1};
		colorBackground[] = color_background; 
		background = 1;
		font = FontM;
		text = "";
		sizeEx = 0.032;
	};


/////////////
#include "defs_base_control.hpp"
/////////////

	class balca_debug_console_edit : balca_debug_edit
	{
		idc = balca_debug_console_edit_IDC;
		x = safezoneX; w = column_weight*3;
		y = safezoneY + offset_top; h = str_height*3;
		text = "enter command here";
	};

	class balca_debug_console_result : balca_debug_edit
	{
		idc = balca_debug_console_result_IDC;
		x = safezoneX; 
		w = column_weight*3;
		y = safezoneY + offset_top + str_height*3;
		h = str_height*2;
		text = "";
	};

	class balca_debug_console_history : balca_debug_list
	{
		idc = balca_debug_console_history_IDC;
		x = safezoneX; 
		w = column_weight*3;
		y = safezoneY + offset_top + str_height*5; 
		h = display_height - btn_height*2 - str_height*5 - (safezoneY + offset_top);
		colorText[] = {1, 1, 1, 1};
		colorBackground[] = color_background_item;
		onLBSelChanged= "[2] call c_proving_ground_fnc_exec_console;";
		onLBDblClick = "[3] call c_proving_ground_fnc_exec_console;";
	};

	class balca_debug_console_control_group : balca_debug_control_group {
		x = safezoneX; 
		w = 1;
		y = display_height- offset_bottom-btn_height; 
		h = str_height*4;
		class Controls {
			class balca_debug_console_exec_btn : balca_debug_btn
			{
				x = 0; w = column_weight-column_div;
				y = 0;
				text = "Execute";
				action = "[1] call c_proving_ground_fnc_exec_console;"; 
			};

			class balca_debug_console_exec_global_btn : balca_debug_btn
			{
				x = column_weight; w = column_weight-column_div;
				y = 0;
				text = "Exec global";
				action = "[4] call c_proving_ground_fnc_exec_console;"; 
			};

			class balca_debug_console_exec_server_btn : balca_debug_btn
			{
				x = column_weight*2; w = column_weight-column_div;
				y = 0;
				text = "Exec on server";
				action = "[5] call c_proving_ground_fnc_exec_console;"; 
			};

			class balca_debug_console_run_tracker_btn : balca_debug_btn
			{
				x = column_weight*0; w = column_weight-column_div;
				y = btn_height;
				text = "Run tracker";
				action = "[6] call c_proving_ground_fnc_exec_console;"; 
			};

			class balca_debug_console_stop_tracker_btn : balca_debug_btn
			{
				x = column_weight*1; w = column_weight-column_div;
				y = btn_height;
				text = "Stop tracker";
				action = "[7] call c_proving_ground_fnc_exec_console;"; 
			};

			class balca_debug_console_close_btn : balca_debug_btn
			{
				x = column_weight*2; w = column_weight - column_div;
				y = btn_height;
				text = "Close";
				action = "closeDialog 0;"; 
			};
		};
	};
};
*/

#define CONSOLE_MARGIN		0.1
#define CONSOLE_PADDING		0.02
#define CONSOLE_EDIT_LINES	1.2 * 6
#define CONSOLE_RESULT_LINES	1.2 * 3

class balca_debug_console {
	idd = balca_debug_console_IDD;
	name = "balca_debug_console";
	movingEnable = 1;
	
	controlsBackground[] = {balca_debug_background};
	objects[] = {};
	controls[] = {
		balca_debug_console_edit_title,
		balca_debug_console_edit,
		balca_debug_console_result_expand,
		balca_debug_console_result_title,
		balca_debug_console_result,
		balca_debug_console_history_title,
		balca_debug_console_history,
		balca_debug_console_control_group
	};

	onKeyDown = "if((_this select 1) in [28,156]) then {[1] call c_proving_ground_fnc_exec_console;}; false";
/////////////////
	class balca_debug_background {
		idc = -1;
		type = CT_STATIC;
		style = 512;
		x = 0; w = 1;
		y = SafeZoneY + CONSOLE_MARGIN; h = SafeZoneH - CONSOLE_MARGIN * 2;
		colorText[] = {1, 1, 1, 1};
		colorBackground[] = color_background; 
		background = 1;
		font = FontM;
		text = "";
		moving = 1;
		sizeEx = 0.032;
	};


/////////////
#include "defs_base_control.hpp"
/////////////

	class balca_debug_console_edit_title:balca_debug_text {
		idc = -1;
		x = 0 + CONSOLE_PADDING;
		w = 1 - CONSOLE_PADDING * 2;
		y = SafeZoneY + CONSOLE_MARGIN + CONSOLE_PADDING;
		h = 0.023;
		text = "Code:";
	};

	class balca_debug_console_edit:balca_debug_edit {
		idc = balca_debug_console_edit_IDC;

		x = 0 + CONSOLE_PADDING;
		w = 1 - CONSOLE_PADDING * 2;
		y = SafeZoneY + CONSOLE_MARGIN + CONSOLE_PADDING + 0.023;
		h = 0.023 * CONSOLE_EDIT_LINES;

		text = "count(playableUnits)";
	};

	class balca_debug_console_result_title:balca_debug_text {
		idc = -1;
		x = 0 + CONSOLE_PADDING;
		w = 1 - CONSOLE_PADDING * 2;
		y = SafeZoneY + CONSOLE_MARGIN + CONSOLE_PADDING + 0.023 + 0.023 * CONSOLE_EDIT_LINES;
		h = 0.023;
		text = "Return:";
	};

	class balca_debug_console_result_expand:balca_debug_btn {
		//x = 0; w = column_weight-column_div;
		x = 1 - CONSOLE_PADDING;
		w = CONSOLE_PADDING * 0.8;
		y = SafeZoneY + CONSOLE_MARGIN + CONSOLE_PADDING + 0.023 + 0.023 * CONSOLE_EDIT_LINES + 0.023;
		h = CONSOLE_PADDING * 0.8 * (getResolution select 2) / (getResolution select 3);
		text = "";
		action = "[123] call c_proving_ground_fnc_exec_console;"; 
	};

	class balca_debug_console_result:balca_debug_edit {
		idc = balca_debug_console_result_IDC;

		x = 0 + CONSOLE_PADDING;
		w = 1 - CONSOLE_PADDING * 2;
		y = SafeZoneY + CONSOLE_MARGIN + CONSOLE_PADDING + 0.023 + 0.023 * CONSOLE_EDIT_LINES + 0.023;
		h = 0.023 * CONSOLE_RESULT_LINES;

		text = "";
	};

	class balca_debug_console_history_title:balca_debug_text {
		idc = balca_debug_console_history_title_IDC;
		x = 0 + CONSOLE_PADDING;
		w = 1 - CONSOLE_PADDING * 2;
		y = SafeZoneY + CONSOLE_MARGIN + CONSOLE_PADDING + 0.023 + 0.023 * CONSOLE_EDIT_LINES + 0.023 + 0.023 * CONSOLE_RESULT_LINES;
		h = 0.023;
		text = "History:";
	};

	class balca_debug_console_history : balca_debug_list
	{
		idc = balca_debug_console_history_IDC;
/*		x = safezoneX; 
		w = column_weight*3;
		y = safezoneY + offset_top + str_height*5; 
		h = display_height - btn_height*2 - str_height*5 - (safezoneY + offset_top);*/

		x = 0 + CONSOLE_PADDING;
		w = 1 - CONSOLE_PADDING * 2;
		y = SafeZoneY + CONSOLE_MARGIN + CONSOLE_PADDING + 0.023 + 0.023 * CONSOLE_EDIT_LINES + 0.023 + 0.023 * CONSOLE_RESULT_LINES + 0.023;
		h = SafeZoneH - (CONSOLE_MARGIN + CONSOLE_PADDING + 0.023 + 0.023 * CONSOLE_EDIT_LINES + 0.023 + 0.023 * CONSOLE_RESULT_LINES + 0.023) - (CONSOLE_MARGIN + CONSOLE_PADDING + btn_height * 2) - 0.023;

		colorText[] = {1, 1, 1, 1};
		colorBackground[] = color_background_item;
		onLBSelChanged= "[2] call c_proving_ground_fnc_exec_console;";
		//onLBDblClick = "[3] call c_proving_ground_fnc_exec_console;";
	};

	class balca_debug_console_control_group : balca_debug_control_group {
		x = 0 + CONSOLE_PADDING;
		w = 1 - CONSOLE_PADDING * 2;
		y = SafeZoneY + SafeZoneH - CONSOLE_MARGIN - CONSOLE_PADDING - btn_height * 2;
		h = btn_height * 2;

/*		x = safezoneX; 
		w = 1;
		y = display_height- offset_bottom-btn_height; 
		h = str_height*4;*/

		#define CONSOLE_BUTTON_WIDTH	((1 - CONSOLE_PADDING * 2) / 3)

		class Controls {
			class balca_debug_console_exec_btn : balca_debug_btn
			{
				//x = 0; w = column_weight-column_div;
				x = CONSOLE_BUTTON_WIDTH * 0; w = CONSOLE_BUTTON_WIDTH - 0.01;
				y = 0;
				text = "Execute";
				action = "[1] call c_proving_ground_fnc_exec_console;"; 
			};

			class balca_debug_console_exec_global_btn : balca_debug_btn
			{
				//x = column_weight; w = column_weight-column_div;
				x = CONSOLE_BUTTON_WIDTH * 1; w = CONSOLE_BUTTON_WIDTH - 0.01;
				y = 0;
				text = "Exec global";
				action = "[4] call c_proving_ground_fnc_exec_console;"; 
			};

			class balca_debug_console_exec_server_btn : balca_debug_btn
			{
				//x = column_weight*2; w = column_weight-column_div;
				x = CONSOLE_BUTTON_WIDTH * 2; w = CONSOLE_BUTTON_WIDTH - 0.01;
				y = 0;
				text = "Exec on server";
				action = "[5] call c_proving_ground_fnc_exec_console;"; 
			};

/*			class balca_debug_console_run_tracker_btn : balca_debug_btn
			{
				x = column_weight*0; w = column_weight-column_div;
				y = btn_height;
				text = "Run tracker";
				action = "[6] call c_proving_ground_fnc_exec_console;"; 
			};

			class balca_debug_console_stop_tracker_btn : balca_debug_btn
			{
				x = column_weight*1; w = column_weight-column_div;
				y = btn_height;
				text = "Stop tracker";
				action = "[7] call c_proving_ground_fnc_exec_console;"; 
			};*/

			class balca_debug_console_close_btn : balca_debug_btn
			{
				//x = column_weight*2; w = column_weight - column_div;
				x = CONSOLE_BUTTON_WIDTH * 2; w = CONSOLE_BUTTON_WIDTH - 0.01;
				y = btn_height;
				text = "Close";
				action = "closeDialog 0;"; 
			};
		};
	};
};

class balca_target_display
{
	idd = balca_target_display_IDD;
	name = "balca_target_display";
	movingEnable = 0;
	
	controlsBackground[] = {balca_debug_background};
	objects[] = {};
	controls[] = {
				balca_target_vehlist,
				balca_target_vehicle_shortcut,
				balca_target_veh_info,
				balca_target_map,
				balca_target_type_control_group,
				balca_target_management_control_group,
				balca_target_close_btn
				};
/////////////////
	class balca_debug_background
	{
		idc = -1;
		type = CT_STATIC;
		style = 512;
		x = safezoneX-border_offsetX; w = column_weight*3 + border_offsetX*3;
		y = safezoneY-btn_height*3; h = display_height+btn_height*4;
		colorText[] = {1, 1, 1, 1};
		colorBackground[] = color_background; 
		background = 1;
		font = FontM;
		text = "";
		sizeEx = 0.032;
	};

/////////////
#include "defs_base_control.hpp"
/////////////

	onUnload = "[10] call c_proving_ground_fnc_target;";

	class balca_target_vehlist : balca_debug_list
	{
		idc = balca_target_vehlist_IDC;
		x = safezoneX; 
		w = column_weight - column_div;
		y = safezoneY + offset_top; 
		h = display_height - (safezoneY + offset_top);
		colorText[] = {1, 1, 1, 1};
		colorBackground[] = color_background_item;
		onLBSelChanged= "[2] call c_proving_ground_fnc_target;";
		onLBDblClick = "[3] call c_proving_ground_fnc_target;";
	};

	class balca_target_vehicle_shortcut : balca_debug_image
	{
		idc = balca_target_vehicle_shortcut_IDC;
		x = safezoneX + column_weight; 
		w = column_weight - column_div;
		y = safezoneY + offset_top;
		h = img_height;
		colorText[] = {1, 1, 1, 1};
		colorBackground[] = color_background_item;
		text = "";
	};

	class balca_target_veh_info : balca_debug_text
	{
		idc = balca_target_veh_info_IDC;
		type = CT_STRUCTURED_TEXT+ST_LEFT;
		size = 0.023;
		x = safezoneX + column_weight; 
		w = column_weight - column_div;
		y = safezoneY + offset_top + img_height; 
		h = display_height - img_height-(safezoneY + offset_top);
		colorText[] = {1, 1, 1, 1};
		colorBackground[] = color_background_item;
		text = "";
	};

	class balca_target_map : balca_debug_map
	{
		idc = balca_target_map_IDC;
		x = safezoneX; 
		w = column_weight*2 - column_div;
		y = safezoneY + offset_top; 
		h = display_height - btn_height*2 - (safezoneY + offset_top);
		onMouseButtonDblClick = "[9,((_this select 0) ctrlMapScreenToWorld [_this select 2,_this select 3])] call c_proving_ground_fnc_target";
	};

	class balca_target_type_control_group : balca_debug_control_group {
		x = safezoneX + border_offsetX + btn_weight*0; 
		w = 1;
		y = safezoneY - btn_height; 
		h = str_height*4;

		class Controls {
			class balca_target_fill_man : balca_debug_btn
			{
				x = 0; w = btn_weight-column_div;
				y = 0;
				text = "Man";
				action = "[1,0] call c_proving_ground_fnc_target;"; 
			};

			class balca_target_fill_car : balca_debug_btn
			{
				x = 0; w = btn_weight-column_div;
				y = btn_height;
				text = "Car";
				action = "[1,1] call c_proving_ground_fnc_target;"; 
			};

			class balca_target_fill_truck : balca_debug_btn
			{
				x = btn_weight*1; w = btn_weight-column_div;
				y = 0;
				text = "Truck";
				action = "[1,2] call c_proving_ground_fnc_target;"; 
			};

			class balca_target_fill_APC : balca_debug_btn
			{
				x = btn_weight*1; w = btn_weight-column_div;
				y = btn_height;
				text = "APC";
				action = "[1,3] call c_proving_ground_fnc_target;"; 
			};

			class balca_target_fill_tank : balca_debug_btn
			{
				x = btn_weight*2; w = btn_weight-column_div;
				y = 0;
				text = "Tank";
				action = "[1,4] call c_proving_ground_fnc_target;"; 
			};

			class balca_target_fill_helicopter : balca_debug_btn
			{
				x = btn_weight*2; w = btn_weight-column_div;
				y = btn_height;
				text = "Chopper";
				action = "[1,5] call c_proving_ground_fnc_target;"; 
			};

			class balca_target_fill_plane : balca_debug_btn
			{
				x = btn_weight*3; w = btn_weight-column_div;
				y = 0;
				text = "Plane";
				action = "[1,6] call c_proving_ground_fnc_target;"; 
			};

			class balca_target_fill_ship : balca_debug_btn
			{
				x = btn_weight*3; w = btn_weight-column_div;
				y = btn_height;
				text = "Ship";
				action = "[1,7] call c_proving_ground_fnc_target;"; 
			};
		};
	};//end control group

	class balca_target_management_control_group : balca_debug_control_group {
		x = safezoneX+column_weight*2; 
		w = 1;
		y = safezoneY + offset_top; 
		h = display_height - btn_height*2 - (safezoneY + offset_top);
		
		class Controls {
			class balca_target_mode_desc : balca_debug_text
			{
				x = 0; 
				w = column_weight/2-column_div;
				y = 0; 
				h = str_height;
				text = "Mode";
			};

			class balca_target_mode_combo : balca_debug_combo
			{
				idc = balca_target_mode_IDC;
				x = 0; 
				w = column_weight-column_div*3;
				y = btn_height; 
				onLBSelChanged = "c_proving_ground_target_mode = (_this select 1);[0,(_this select 1)] call c_proving_ground_fnc_target;";
			};

			class balca_target_mode_land_static : balca_debug_control_group {
				idc = balca_target_land_static_IDC;
				x = 0; 
				w = 1;
				y = btn_height*2; 
				h = btn_height*5;
				class Controls {
					class balca_target_distance_desc : balca_debug_text
					{
						x = 0; 
						w = column_weight/2-column_div;
						y = btn_height*0; 
						h = str_height;
						text = "Distance";
					};

					class balca_target_direction_desc : balca_debug_text
					{
						x = 0; 
						w = column_weight/2-column_div;
						y = btn_height*1; 
						h = str_height;
						text = "Direction";
					};

					class balca_target_speed_desc : balca_debug_text
					{
						x = 0; 
						w = column_weight/2-column_div;
						y = btn_height*2; 
						h = str_height;
						text = "Speed";
					};

					class balca_target_distance : balca_debug_edit
					{
						idc = balca_target_distance_IDC;
						x = column_weight*0.5; 
						w = column_weight/2-column_div;
						y = btn_height*0; 
						h = str_height;
						text = "--";
					};

					class balca_target_direction : balca_debug_edit
					{
						idc = balca_target_direction_IDC;
						x = column_weight*0.5; 
						w = column_weight/2-column_div;
						y = btn_height*1; 
						h = str_height;
						text = "--";
					};

					class balca_target_speed : balca_debug_edit
					{
						idc = balca_target_speed_IDC;
						x = column_weight*0.5; 
						w = column_weight/2-column_div;
						y = btn_height*2; 
						h = str_height;
						text = "--";
					};
				};//end contols
			};//end balca_target_mode_static_land

			class balca_target_mode_land_random : balca_debug_control_group {
				idc = balca_target_land_random_IDC;
				x = 0; 
				w = 1;
				y = btn_height*2; 
				h = btn_height*5;
				class Controls {
					class balca_target_distance_desc : balca_debug_text
					{
						x = 0; 
						w = 2*column_weight/3;
						y = btn_height*0; 
						h = str_height;
						text = "Distance            +/-";
					};

					class balca_target_direction_desc : balca_debug_text
					{
						x = 0; 
						w = 2*column_weight/3;
						y = btn_height*1; 
						h = str_height;
						text = "Direction           +/-";
					};

					class balca_target_speed_desc : balca_debug_text
					{
						x = 0; 
						w = column_weight/3-column_div;
						y = btn_height*2; 
						h = str_height;
						text = "Speed";
					};

					class balca_target_rdistance : balca_debug_edit
					{
						idc = balca_target_rdistance_IDC;
						x = column_weight/3; 
						w = column_weight/3-column_div*3;
						y = btn_height*0; 
						h = str_height;
						text = "--";
					};

					class balca_target_distance_rand : balca_debug_edit
					{
						idc = balca_target_distance_rand_IDC;
						x = 2*column_weight/3; 
						w = column_weight/3-column_div*3;
						y = btn_height*0; 
						h = str_height;
						text = "--";
					};

					class balca_target_rdirection : balca_debug_edit
					{
						idc = balca_target_rdirection_IDC;
						x = column_weight/3; 
						w = column_weight/3-column_div*3;
						y = btn_height*1; 
						h = str_height;
						text = "--";
					};

					class balca_target_direction_rand : balca_debug_edit
					{
						idc = balca_target_direction_rand_IDC;
						x = 2*column_weight/3; 
						w = column_weight/3-column_div*3;
						y = btn_height*1; 
						h = str_height;
						text = "--";
					};

					class balca_target_speed_rand : balca_debug_edit
					{
						idc = balca_target_speed_rand_IDC;
						x = column_weight*0.5; 
						w = column_weight/2-column_div*3;
						y = btn_height*2; 
						h = str_height;
						text = "--";
					};
				};//end contols
			};//end balca_target_mode_land_random

			class balca_target_mode_land_AI : balca_debug_control_group {
				idc = balca_target_land_AI_IDC;
				x = 0; 
				w = 1;
				y = btn_height*2; 
				h = btn_height*5;
				class Controls {
					class balca_target_distance_desc : balca_debug_text
					{
						x = 0; 
						w = column_weight/2-column_div;
						y = btn_height*0; 
						h = str_height;
						text = "Distance";
					};

					class balca_target_distance : balca_debug_edit
					{
						idc = balca_target_land_AI_dist_IDC;
						x = column_weight*0.5; 
						w = column_weight/2-column_div;
						y = btn_height*0; 
						h = str_height;
						text = "--";
					};

					class balca_target_show_map_btn : balca_debug_btn
					{
						x = 0; 
						w = column_weight-column_div;
						y = btn_height*1; 
						text = "Toggle map";
						action = "[7] call c_proving_ground_fnc_target;"; 
					};
/*
					class balca_target_adjust_way_btn : balca_debug_btn
					{
						x = 0; 
						w = column_weight-column_div;
						y = btn_height*2; 
						text = "Adjust waypoints";
						action = "[10] call c_proving_ground_fnc_target;"; 
					};
*/
					class balca_target_clear_way_btn : balca_debug_btn
					{
						x = 0; 
						w = column_weight-column_div;
						y = btn_height*3; 
						text = "Clear waypoints";
						action = "[8] call c_proving_ground_fnc_target;"; 
					};

				};//end contols
			};//end balca_target_mode_land_AI

			class balca_target_mode_air_AI : balca_debug_control_group {
				idc = balca_target_air_AI_IDC;
				x = 0; 
				w = 1;
				y = btn_height*2; 
				h = btn_height*5;
				class Controls {
					class balca_target_distance_desc : balca_debug_text
					{
						x = 0; 
						w = column_weight/2-column_div;
						y = btn_height*0; 
						h = str_height;
						text = "Distance";
					};

					class balca_target_distance : balca_debug_edit
					{
						idc = balca_target_air_AI_dist_IDC;
						x = column_weight*0.5; 
						w = column_weight/2-column_div;
						y = btn_height*0; 
						h = str_height;
						text = "--";
					};


					class balca_target_show_map_btn : balca_debug_btn
					{
						x = 0; 
						w = column_weight-column_div;
						y = btn_height*1; 
						text = "Toggle map";
						action = "[7] call c_proving_ground_fnc_target;"; 
					};
/*
					class balca_target_adjust_way_btn : balca_debug_btn
					{
						x = 0; 
						w = column_weight-column_div;
						y = btn_height*2; 
						text = "Adjust waypoints";
						action = "[10] call c_proving_ground_fnc_target;"; 
					};
*/
					class balca_target_clear_way_btn : balca_debug_btn
					{
						x = 0; 
						w = column_weight-column_div;
						y = btn_height*3; 
						text = "Clear waypoints";
						action = "[8] call c_proving_ground_fnc_target;"; 
					};
				};//end contols
			};//end balca_target_mode_air_AI

			class balca_target_apply_btn : balca_debug_btn
			{
				x = 0; 
				w = column_weight-column_div;
				y = btn_height*7; 
				text = "Apply";
				action = "[6] call c_proving_ground_fnc_target;"; 
			};

			class balca_target_reset_btn : balca_debug_btn
			{
				x = 0; 
				w = column_weight-column_div;
				y = btn_height*8; 
				text = "Reset";
				action = "c_proving_ground_target_props = [100,0,(getDir c_proving_ground_core)+180];[0] call c_proving_ground_fnc_target;[6] call c_proving_ground_fnc_target;"; 
			};

			class balca_target_create_btn : balca_debug_btn
			{
				x = 0; 
				w = column_weight-column_div;
				y = btn_height*9; 
				text = "Add target";
				action = "[3] call c_proving_ground_fnc_target;"; 
			};

			class balca_target_clear_btn : balca_debug_btn
			{
				x = 0; 
				w = column_weight-column_div;
				y = btn_height*10; 
				text = "Clear targets";
				action = "[5] call c_proving_ground_fnc_target;"; 
			};
		};
	};//end management control group

	class balca_target_close_btn : balca_debug_btn
	{
		x = safezoneX + btn_weight*3; w = column_weight - column_div;
		y = display_height- offset_bottom;
		text = "Close";
		action = "closeDialog 0;"; 
	};
};

class balca_sound_player
{
	idd = balca_sound_player_IDD;
	name = "balca_sound_player";
	movingEnable = 0;
	
	controlsBackground[] = {balca_debug_background};
	objects[] = {};
	controls[] = {
				balca_soundlist,
				balca_clipboard_btn,
				balca_close_btn
				};
/////////////////
	class balca_debug_background
	{
		idc = -1;
		type = CT_STATIC;
		style = 512;
		x = safezoneX-border_offsetX; w = column_weight*3 + border_offsetX*3;
		y = safezoneY; h = display_height+btn_height*1;
		colorText[] = {1, 1, 1, 1};
		colorBackground[] = color_background; 
		background = 1;
		font = FontM;
		text = "";
		sizeEx = 0.032;
	};


/////////////
#include "defs_base_control.hpp"
/////////////

	class balca_soundlist : balca_debug_list
	{
		idc = balca_soundlist_IDC;
		x = safezoneX; 
		w = column_weight*3 - column_div;
		y = safezoneY + offset_top; 
		h = display_height - btn_height*2 - (safezoneY + offset_top);
		colorText[] = {1, 1, 1, 1};
		colorBackground[] = color_background_item;
		onLBSelChanged= "";
		onLBDblClick = "[1] call c_proving_ground_fnc_sound;";
	};

	class balca_clipboard_btn : balca_debug_btn
	{
		x = safezoneX; w = column_weight-column_div;
		y = display_height- offset_bottom;
		text = "to Clipboard";
		action = "[2] call c_proving_ground_fnc_sound;"; 
	};

	class balca_close_btn : balca_debug_btn
	{
		x = safezoneX + column_weight*2; w = column_weight - column_div;
		y = display_height- offset_bottom;
		text = "Close";
		action = "closeDialog 0;"; 
	};
};

class balca_statistics
{
	idd = balca_stat_display_IDD;
	name = "balca_statistics";
	movingEnable = 0;
	
	controlsBackground[] = {balca_debug_background};
	objects[] = {};
	controls[] = {
				balca_stat_text,
				balca_reset_btn,
				balca_clipboard_btn,
				balca_close_btn
				};
/////////////////
	class balca_debug_background
	{
		idc = -1;
		type = CT_STATIC;
		style = 512;
		x = safezoneX-border_offsetX; w = column_weight*3 + border_offsetX*3;
		y = safezoneY; h = display_height+btn_height*1;
		colorText[] = {1, 1, 1, 1};
		colorBackground[] = color_background; 
		background = 1;
		font = FontM;
		text = "";
		sizeEx = 0.032;
	};


/////////////
#include "defs_base_control.hpp"
/////////////

	class balca_stat_text : balca_debug_text
	{
		idc = balca_stat_text_IDC;
		type = CT_STRUCTURED_TEXT+ST_LEFT;
		size = 0.023;
		x = safezoneX; 
		w = column_weight - column_div;
		y = safezoneY + offset_top; 
		h = display_height -(safezoneY + offset_top);
		colorText[] = {1, 1, 1, 1};
		colorBackground[] = color_background_item;
		text = "";
	};

	class balca_reset_btn : balca_debug_btn
	{
		x = safezoneX; w = column_weight-column_div;
		y = display_height- offset_bottom;
		text = "Reset";
		action = "[1] call c_proving_ground_fnc_statistics;"; 
	};

	class balca_clipboard_btn : balca_debug_btn
	{
		x = safezoneX + column_weight; w = column_weight-column_div;
		y = display_height- offset_bottom;
		text = "to Clipboard";
		action = "[2] call c_proving_ground_fnc_statistics;"; 
	};

	class balca_close_btn : balca_debug_btn
	{
		x = safezoneX + column_weight*2; w = column_weight - column_div;
		y = display_height- offset_bottom;
		text = "Close";
		action = "closeDialog 0;"; 
	};
};

class balca_environment
{
	idd = balca_environment_IDD;
	name = "balca_environment";
	movingEnable = 0;
	
	controlsBackground[] = {balca_debug_background};
	objects[] = {};
	controls[] = {
				balca_env_control_group,
				balca_apply_btn,
				balca_close_btn
				};
/////////////////
	class balca_debug_background
	{
		idc = -1;
		type = CT_STATIC;
		style = 512;
		x = safezoneX-border_offsetX; w = column_weight*2 + border_offsetX*3;
		y = safezoneY; h = display_height+btn_height*1;
		colorText[] = {1, 1, 1, 1};
		colorBackground[] = color_background; 
		background = 1;
		font = FontM;
		text = "";
		sizeEx = 0.032;
	};

/////////////
#include "defs_base_control.hpp"
/////////////

	class balca_env_control_group : balca_debug_control_group {
		x = safezoneX+column_weight*0; 
		w = 1;
		y = safezoneY + offset_top; 
		h = display_height - btn_height*2 - (safezoneY + offset_top);
		
		class Controls {

			class balca_env_VD_desc : balca_debug_text
			{
				x = 0; 
				w = column_weight/2-column_div;
				y = btn_height*1; 
				h = str_height;
				text = "Viewdistance";
			};

			class balca_env_VD_val : balca_debug_text
			{
				idc = balca_env_VD_val_IDC;
				x = column_weight*1.5; 
				w = column_weight/2-column_div;
				y = btn_height*1; 
				h = str_height;
				text = "";
			};

			class balca_env_VD : balca_debug_slider
			{
				idc = balca_env_VD_IDC;
				x = column_weight*0.5; 
				w = column_weight-column_div;
				y = btn_height*1; 
				h = str_height;
				onSliderPosChanged = "[1] call c_proving_ground_fnc_environment;";
			};


			class balca_env_grass_desc : balca_debug_text
			{
				x = 0; 
				w = column_weight/2-column_div;
				y = btn_height*2; 
				h = str_height;
				text = "Grass";
			};

			class balca_env_grass_val : balca_debug_text
			{
				idc = balca_env_grass_val_IDC;
				x = column_weight*1.5; 
				w = column_weight/2-column_div;
				y = btn_height*2; 
				h = str_height;
				text = "";
			};

			class balca_env_grass : balca_debug_slider
			{
				idc = balca_env_grass_IDC;
				x = column_weight*0.5; 
				w = column_weight-column_div;
				y = btn_height*2; 
				h = str_height;
				onSliderPosChanged = "[1] call c_proving_ground_fnc_environment;";
			};

			class balca_env_fog_desc : balca_debug_text
			{
				x = 0; 
				w = column_weight/2-column_div;
				y = btn_height*3; 
				h = str_height;
				text = "Fog";
			};

			class balca_env_fog_val : balca_debug_text
			{
				idc = balca_env_fog_val_IDC;
				x = column_weight*1.5; 
				w = column_weight/2-column_div;
				y = btn_height*3; 
				h = str_height;
				text = "";
			};

			class balca_env_fog : balca_debug_slider
			{
				idc = balca_env_fog_IDC;
				x = column_weight*0.5; 
				w = column_weight-column_div;
				y = btn_height*3; 
				h = str_height;
				onSliderPosChanged = "[1] call c_proving_ground_fnc_environment;";
			};

			class balca_env_overcast_desc : balca_debug_text
			{
				x = 0; 
				w = column_weight/2-column_div;
				y = btn_height*4; 
				h = str_height;
				text = "Overcast";
			};

			class balca_env_overcast_val : balca_debug_text
			{
				idc = balca_env_overcast_val_IDC;
				x = column_weight*1.5; 
				w = column_weight/2-column_div;
				y = btn_height*4; 
				h = str_height;
				text = "";
			};

			class balca_env_overcast : balca_debug_slider
			{
				idc = balca_env_overcast_IDC;
				x = column_weight*0.5; 
				w = column_weight-column_div;
				y = btn_height*4; 
				h = str_height;
				onSliderPosChanged = "[1] call c_proving_ground_fnc_environment;";
			};

			class balca_env_rain_desc : balca_debug_text
			{
				x = 0; 
				w = column_weight/2-column_div;
				y = btn_height*5; 
				h = str_height;
				text = "Rain";
			};

			class balca_env_rain_val : balca_debug_text
			{
				idc = balca_env_rain_val_IDC;
				x = column_weight*1.5; 
				w = column_weight/2-column_div;
				y = btn_height*5; 
				h = str_height;
				text = "";
			};

			class balca_env_rain : balca_debug_slider
			{
				idc = balca_env_rain_IDC;
				x = column_weight*0.5; 
				w = column_weight-column_div;
				y = btn_height*5; 
				h = str_height;
				onSliderPosChanged = "[1] call c_proving_ground_fnc_environment;";
			};

			class balca_env_wind_desc : balca_debug_text
			{
				x = 0; 
				w = column_weight/2-column_div;
				y = btn_height*6; 
				h = str_height;
				text = "Wind speed";
			};

			class balca_env_wind_val : balca_debug_text
			{
				idc = balca_env_wind_val_IDC;
				x = column_weight*1.5; 
				w = column_weight/2-column_div;
				y = btn_height*6; 
				h = str_height;
				text = "";
			};

			class balca_env_wind : balca_debug_slider
			{
				idc = balca_env_wind_IDC;
				x = column_weight*0.5; 
				w = column_weight-column_div;
				y = btn_height*6; 
				h = str_height;
				onSliderPosChanged = "[1] call c_proving_ground_fnc_environment;";
			};

			class balca_env_wind_dir_desc : balca_debug_text
			{
				x = 0; 
				w = column_weight/2-column_div;
				y = btn_height*7; 
				h = str_height;
				text = "Wind direction";
			};

			class balca_env_wind_dir : balca_debug_edit
			{
				idc = balca_env_wind_dir_IDC;
				x = column_weight*0.5; 
				w = column_weight/2-column_div;
				y = btn_height*7; 
				h = str_height;
				text = "--";
			};
		};
	};

	class balca_apply_btn : balca_debug_btn
	{
		x = safezoneX; w = column_weight-column_div;
		y = display_height- offset_bottom;
		text = "Apply";
		action = "[1] call c_proving_ground_fnc_environment;"; 
	};
	class balca_close_btn : balca_debug_btn
	{
		x = safezoneX+column_weight; w = column_weight-column_div;
		y = display_height- offset_bottom;
		text = "Close";
		action = "closeDialog 0"; 
	};
};

#include "CfgExplorer2\cfg.hpp"
#include "Reloader\cfg.hpp"