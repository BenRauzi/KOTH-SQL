/*
	ArmA 3 King of Hill
	Code written by Sa-Matra
	Using this code without Sa-Matra's direct permission is forbidden
	
	Special build for Gamed.de
	
	Build ETYKMBSIGDHGNALL
*/
//#define kgl3hf	(settings_gameType != kg52g2)
#define kgl3hf  true
#define kgpcsn	(call kgntp1)
database_vehicles_groundList=[
    ["Quadbike",{switch(playerSide)do{case blufor:{if(kgpcsn)then{"B_T_Quadbike_01_F"}else{"B_Quadbike_01_F"}};case opfor:{if(kgpcsn)then{"O_T_Quadbike_01_ghex_F"}else{"O_Quadbike_01_F"}};case independent:{"I_Quadbike_01_F"};default{"C_Quadbike_01_F"};};},{1},[],{true},[blufor,opfor,independent],{50},[],[],false,"Quadbike_01_base_F"],
	["Offroad",{switch(playerSide)do{case blufor:{"B_G_Offroad_01_F"};case opfor:{"O_G_Offroad_01_F"};case independent:{"I_G_Offroad_01_F"};default{"C_Offroad_01_F"};};},{2},[],{true},[blufor,opfor,independent],{200},[],[],false,"Offroad_01_base_F"],
	["Quilin",{switch(playerSide)do{case opfor:{if(kgpcsn)then{"O_LSV_02_unarmed_ghex_F"}else{"O_LSV_02_unarmed_arid_F"}};default{"O_LSV_02_unarmed_black_F"};};},{3},[],{true},[blufor,opfor,independent],{300},[],[],false,"LSV_02_unarmed_base_F"],
	["Prowler",{switch(playerSide)do{case blufor:{if(kgpcsn)then{"B_LSV_01_unarmed_olive_F"}else{"B_LSV_01_unarmed_sand_F"}};default{"B_LSV_01_unarmed_black_F"};};},{4},[],{true},[blufor,opfor,independent],{300},[],[],false,"LSV_01_unarmed_base_F"],
	["Offroad_MG",{switch(playerSide)do{case blufor:{"B_G_Offroad_01_armed_F"};case opfor:{"O_G_Offroad_01_armed_F"};default{"I_G_Offroad_01_armed_F"};};},{5},[],{true},[blufor,opfor,independent],{400},[],[],false,"Offroad_01_armed_base_F"],
	["Offroad_AT",{"I_G_Offroad_01_AT_F"},{5},[],{true&&kgl3hf},[blufor,opfor,independent],{4000},[],[],false,"Offroad_01_AT_F"],
	["Hunter",{if(kgpcsn)then{"B_T_MRAP_01_F"}else{"B_MRAP_01_F"}},{6},[],{true},[blufor,opfor,independent],{500},[],[],false,"MRAP_01_base_F"],
	["Ifrit",{if(kgpcsn)then{"O_T_MRAP_02_ghex_F"}else{"O_MRAP_02_F"}},{6},[],{true},[blufor,opfor,independent],{500},[],[],false,"MRAP_02_base_F"],
	["Strider",{"I_MRAP_03_F"},{7},[],{true},[blufor,opfor,independent],{500},[],[],false,"MRAP_03_base_F"],
	["Quilin_Armed",{switch(playerSide)do{case opfor:{if(kgpcsn)then{"O_LSV_02_armed_ghex_F"}else{"O_LSV_02_armed_arid_F"}};default{"O_LSV_02_armed_black_F"};};},{8},[],{true},[blufor,opfor,independent],{800},[],[],false,"LSV_02_armed_base_F"],
	["Quilin_AT",{switch(playerSide)do{case opfor:{if(kgpcsn)then{"O_LSV_02_AT_F"}else{"O_LSV_02_AT_F"}};default{"O_LSV_02_AT_F"};};},{5},[],{true},[blufor,opfor,independent],{4000},[],[],false,"O_LSV_02_AT_F"],
	["Prowler_Armed",{switch(playerSide)do{case blufor:{if(kgpcsn)then{"B_LSV_01_armed_olive_F"}else{"B_LSV_01_armed_sand_F"}};default{"B_LSV_01_armed_black_F"};};},{9},[],{true},[blufor,opfor,independent],{700},[],[],false,"LSV_01_armed_base_F"],
	["Prowler_AT",{switch(playerSide)do{case blufor:{if(kgpcsn)then{"B_LSV_01_AT_F"}else{"B_LSV_01_AT_F"}};default{"B_LSV_01_AT_F"};};},{7},[],{true},[blufor,opfor,independent],{5000},[],[],false,"LSV_01_AT_F"],
	["Van Transport",{switch(playerSide)do{case blufor:{if(kgpcsn)then{"B_GEN_Van_02_transport_F"}else{"B_GEN_Van_02_transport_F"}};default{"B_GEN_Van_02_transport_F"};};},{10},[],{true},[blufor,opfor,independent],{60},[],[],false,"B_GEN_Van_02_transport_F"],  //test
	["Van_Ambulance",{switch(playerSide)do{case blufor:{if(kgpcsn)then{"C_Van_02_medevac_F"}else{"C_Van_02_medevac_F"}};default{"C_Van_02_medevac_F"};};},{60},[],{true},[blufor,opfor,independent],{200},[],[],false,"C_Van_02_medevac_F"],  //test
	["Hunter_GMG",{if(kgpcsn)then{"B_T_MRAP_01_gmg_F"}else{"B_MRAP_01_gmg_F"}},{11},[],{true&&kgl3hf},[blufor,opfor,independent],{1000},[],[],true,"MRAP_01_gmg_base_F"],
	["Ifrit_GMG",{if(kgpcsn)then{"O_T_MRAP_02_gmg_ghex_F"}else{"O_MRAP_02_gmg_F"}},{12},[],{true&&kgl3hf},[blufor,opfor,independent],{1000},[],[],true,"MRAP_02_hmg_base_F"],
	["Strider_GMG",{"I_MRAP_03_gmg_F"},{13},[],{true&&kgl3hf},[blufor,opfor,independent],{1500},[],[],true,"MRAP_03_hmg_base_F"],
	["Hunter_HMG",{if(kgpcsn)then{"B_T_MRAP_01_hmg_F"}else{"B_MRAP_01_hmg_F"}},{14},[],{true&&kgl3hf},[blufor,opfor,independent],{3000},[],[],true,"MRAP_01_hmg_base_F"],
	["Ifrit_HMG",{if(kgpcsn)then{"O_MRAP_02_gmg_F"}else{"O_MRAP_02_hmg_F"}},{15},[],{true&&kgl3hf},[blufor,opfor,independent],{3000},[],[],true,"MRAP_02_hmg_base_F"],
	["Strider_HMG",{"I_MRAP_03_hmg_F"},{16},[],{true&&kgl3hf},[blufor,opfor,independent],{3000},[],[],true,"MRAP_03_hmg_base_F"],
	["Marid",{if(kgpcsn)then{"O_T_APC_Wheeled_02_rcws_ghex_F"}else{"O_APC_Wheeled_02_rcws_F"}},{17},[],{true&&kgl3hf},[blufor,opfor,independent],{4000},[],[],true,"APC_Wheeled_02_base_F"],
	["Marshall",{if(kgpcsn)then{"B_T_APC_Wheeled_01_cannon_F"}else{"B_APC_Wheeled_01_cannon_F"}},{19},[],{true&&kgl3hf},[blufor,opfor,independent],{8000},[],[],true,"APC_Wheeled_01_base_F"],
	["Gorgon",{"I_APC_Wheeled_03_cannon_F"},{22},[],{true&&kgl3hf},[blufor,opfor,independent],{5500},[],[],true,"APC_Wheeled_03_base_F"],
	["Panther",{if(kgpcsn)then{"B_T_APC_Tracked_01_rcws_F"}else{"B_APC_Tracked_01_rcws_F"}},{25},[],{true&&kgl3hf},[blufor,opfor,independent],{4000},[],[],true,"B_APC_Tracked_01_rcws_F"],
	["Mora",{"I_APC_tracked_03_cannon_F"},{27},[],{true&&kgl3hf},[blufor,opfor,independent],{6000},[],[],true,"I_APC_tracked_03_cannon_F"],
	["Kamysh",{if(kgpcsn)then{"O_T_APC_Tracked_02_cannon_ghex_F"}else{"O_APC_Tracked_02_cannon_F"}},{29},[],{true&&kgl3hf},[blufor,opfor,independent],{5000},[],[],true,"O_APC_Tracked_02_cannon_F"],
	["Tigris",{if(kgpcsn)then{"O_T_APC_Tracked_02_AA_ghex_F"}else{"O_APC_Tracked_02_AA_F"}},{20},[],{true&&kgl3hf},[blufor,opfor,independent],{12000},[],[],true,"O_APC_Tracked_02_AA_F"],
	["Cheetah",{if(kgpcsn)then{"B_T_APC_Tracked_01_AA_F"}else{"B_APC_Tracked_01_AA_F"}},{31},[],{true&&kgl3hf},[blufor,opfor,independent],{12000},[],[],true,"B_APC_Tracked_01_AA_F"],
	["Kuma",{"I_MBT_03_cannon_F"},{30},[],{true&&kgl3hf},[blufor,opfor,independent],{25000},[],[],true,"I_MBT_03_cannon_F"],
	["Varsuk",{if(kgpcsn)then{"O_T_MBT_02_cannon_ghex_F"}else{"O_MBT_02_cannon_F"}},{20},[],{true&&kgl3hf},[blufor,opfor,independent],{16000},[],[],true,"O_MBT_02_cannon_F"],
	["Slammer",{if(kgpcsn)then{"B_T_MBT_01_cannon_F"}else{"B_MBT_01_cannon_F"}},{30},[],{true&&kgl3hf},[blufor,opfor,independent],{11000},[],[],true,"B_MBT_01_cannon_F"],
	["Slammer_TUSK",{if(kgpcsn)then{"B_T_MBT_01_TUSK_F"}else{"B_MBT_01_TUSK_F"}},{35},[],{true&&kgl3hf},[blufor,opfor,independent],{12000},[],[],true,"B_MBT_01_TUSK_F"],
	["2S9_Sochor",{if(kgpcsn)then{"O_T_MBT_02_arty_ghex_F"}else{"O_MBT_02_arty_F"}},{20},[],{true&&kgl3hf},[blufor,opfor,independent],{6000},[],[],true,"O_MBT_02_arty_F"],
	["Rhino_MGS",{if(kgpcsn)then{"B_AFV_Wheeled_01_cannon_F"}else{"B_AFV_Wheeled_01_cannon_F"}},{40},[],{true&&kgl3hf},[blufor,opfor,independent],{15000},[],[],true,"B_AFV_Wheeled_01_cannon_F"],//Rhino_MGS
	["Rhino_MGS_UP",{if(kgpcsn)then{"B_AFV_Wheeled_01_up_cannon_F"}else{"B_AFV_Wheeled_01_up_cannon_F"}},{50},[],{true&&kgl3hf},[blufor,opfor,independent],{20000},[],[],true,"B_AFV_Wheeled_01_up_cannon_F"],//Rhino_MGS_UP
	["T-140_Angara",{if(kgpcsn)then{"O_MBT_04_cannon_F"}else{"O_MBT_04_cannon_F"}},{85},[],{true&&kgl3hf},[blufor,opfor,independent],{25000},[],[],true,"O_MBT_04_cannon_F"], //T-140_Angara
	["T-140K_Angara",{if(kgpcsn)then{"O_MBT_04_command_F"}else{"O_MBT_04_command_F"}},{120},[],{true&&kgl3hf},[blufor,opfor,independent],{35500},[],[],true,"O_MBT_04_command_F"], //T-140K_Angara
	["AWC_301_Nyx_(AT)",{if(kgpcsn)then{"I_LT_01_AT_F"}else{"I_LT_01_AT_F"}},{30},[],{true&&kgl3hf},[blufor,opfor,independent],{6000},[],[],true,"I_LT_01_AT_F"], //AWC_301_Nyx_(AT)
	["AWC_301_Nyx_(AA)",{if(kgpcsn)then{"I_LT_01_AA_F"}else{"I_LT_01_AA_F"}},{35},[],{true&&kgl3hf},[blufor,opfor,independent],{8000},[],[],true,"I_LT_01_AA_F"], //AWC_301_Nyx_(AA)
	["AWC_301_Nyx_(Autocannon)",{if(kgpcsn)then{"I_LT_01_cannon_F"}else{"I_LT_01_cannon_F"}},{30},[],{true&&kgl3hf},[blufor,opfor,independent],{5000},[],[],true,"I_LT_01_cannon_F"], //AWC_301_Nyx_(Autocannon)
	["M4_Scorcher",{if(kgpcsn)then{"B_T_MBT_01_arty_F"}else{"B_MBT_01_arty_F"}},{60},[],{true&&kgl3hf},[blufor,opfor,independent],{20000},[],[],true,"B_MBT_01_arty_F"],
	["M5_Sandstorm",{if(kgpcsn)then{"B_T_MBT_01_mlrs_F"}else{"B_MBT_01_mlrs_F"}},{50},[],{true&&kgl3hf},[blufor,opfor,independent],{50000},[],[],true,"B_MBT_01_mlrs_F"],//多管火箭车
	["Zamak_Sandstorm",{if(kgpcsn)then{"I_Truck_02_MRL_F"}else{"I_Truck_02_MRL_F"}},{50},[],{true&&kgl3hf},[blufor,opfor,independent],{20000},[],[],true,"I_Truck_02_MRL_F"],//Zamak MRL
	["SUV",{"C_SUV_01_F"},{50},[],{kgsoxm>=50},[blufor,opfor,independent],{60},[],[],false,"SUV_01_base_F"],
	["Hatchback_Sport",{"C_Hatchback_01_sport_F"},{50},[],{kgsoxm>=50},[blufor,opfor,independent],{200},[],[],false,"Hatchback_01_sport_base_F"],
	["MB4WD",{"I_C_Offroad_02_unarmed_F"},{50},[],{kgsoxm>=50},[blufor,opfor,independent],{60},[],[],false,"Offroad_02_base_F"],
	["MB4WD_(AT)",{"I_C_Offroad_02_AT_F"},{50},[],{true&&kgl3hf},[blufor,opfor,independent],{2000},[],[],false,"Offroad_02_base_F"],//MB4WD_(AT)
	["MB4WD_(LMG)",{"I_C_Offroad_02_LMG_F"},{50},[],{true&&kgl3hf},[blufor,opfor,independent],{2000},[],[],false,"Offroad_02_base_F"],//MB4WD_(LMG)
	["Repair_Truck",{switch(playerSide)do{case blufor:{"B_Truck_01_Repair_F"};case opfor:{"O_Truck_02_box_F"};default{"I_Truck_02_box_F"};};},{24},[],{false},[blufor,opfor,independent],{2000},[],[],false,"Truck_F"],
	["Kart",{switch(playerSide)do{case blufor:{"C_Kart_01_Blu_F"};case opfor:{"C_Kart_01_Red_F"};default{"C_Kart_01_Fuel_F"};};},{60},[],{kgsoxm>=60&&kguwff},[blufor,opfor,independent],{10},[],[],false,"Kart_01_Base_F"]
	];

database_vehicles_aircraftList=[
	["Hummingbird",{"B_Heli_Light_01_F"},{1},[],{true},[blufor,opfor,independent],{100},[],[],false,"Heli_Light_01_unarmed_base_F"],
	["Taru_Bench",{"O_Heli_Transport_04_bench_F"},{5},[],{kgfu7p},[blufor,opfor,independent],{900},[],[],false,"Heli_Transport_04_base_F"],
	["Ka60_Unarmed",{"O_Heli_Light_02_unarmed_F"},{6},[],{true},[blufor,opfor,independent],{900},[],[],false,"Heli_Light_02_unarmed_base_F"],
	["Taru_Covered",{"O_Heli_Transport_04_covered_F"},{8},[],{true&&kgfu7p},[blufor,opfor,independent],{900},[],[],false,"O_Heli_Transport_04_covered_F"],
	["Huron_Unarmed",{"B_Heli_Transport_03_unarmed_F"},{9},[],{true&&kgfu7p},[blufor,opfor,independent],{1000},[],[],false,"Heli_Transport_03_unarmed_base_F"],
	["Mohawk",{"I_Heli_Transport_02_F"},{8},[],{true},[blufor,opfor,independent],{1000},[],[],false,"Heli_Transport_02_base_F"],
	["Huron_Armed",{"B_Heli_Transport_03_F"},{10},[],{true&&kgfu7p},[blufor,opfor,independent],{1200},[],[],false,"B_Heli_Transport_03_F"],
	["Blackfish",{switch(playerSide)do{case blufor:{"B_T_VTOL_01_infantry_olive_F"};default{"B_T_VTOL_01_infantry_blue_F"};};},{11},[],{true},[blufor,opfor,independent],{1500},[],[],true,"VTOL_01_unarmed_base_F"],
	["Ka60_Armed",{"O_Heli_Light_02_dynamicLoadout_F"},{12},[],{true&&kgl3hf},[blufor,opfor,independent],{5000},["missiles_DAGR"],["missiles_DAR"],true,"Heli_Light_02_dynamicLoadout_base_F"],
	["Ghosthawk",{if(playerSide in[blufor])then{if(kgpcsn)then{"B_CTRG_Heli_Transport_01_tropic_F"}else{"B_Heli_Transport_01_camo_F"}}else{"B_Heli_Transport_01_F"}},{15},[],{true},[blufor,opfor,independent],{1200},[],[],false,"Heli_Transport_01_base_F"],
	["Hellcat_Unarmed",{"I_Heli_light_03_unarmed_F"},{18},[],{true},[blufor,opfor,independent],{1000},[],[],true,"Heli_light_03_unarmed_base_F"],
	["Pawnee",{"B_Heli_Light_01_armed_F"},{22},[],{true&&kgl3hf},[blufor,opfor,independent],{1500},[],[],true,"Heli_Light_01_armed_base_F"],
	["Hellcat_Armed",{"I_Heli_light_03_dynamicLoadout_F"},{25},[],{true&&kgl3hf},[blufor,opfor,independent],{7000},["missiles_DAR"],["rockets_Skyfire"],true,"Heli_light_03_dynamicLoadout_base_F"],
	["Mi48",{if(playerSide in[opfor])then{"O_Heli_Attack_02_F"}else{"O_Heli_Attack_02_black_F"}},{65},[],{true&&kgl3hf},[blufor,opfor,independent],{18000},[],[],true,"Heli_Attack_02_base_F"],
	["Blackfoot",{"B_Heli_Attack_01_F"},{40},[],{true&&kgl3hf},[blufor,opfor,independent],{16000},[],[],true,"Heli_Attack_01_base_F"],
	["Blackfish_Armed",{switch(playerSide)do{case blufor:{"B_T_VTOL_01_armed_olive_F"};default{"B_T_VTOL_01_armed_blue_F"};};},{1},[],{true&&kgl3hf},[blufor,opfor,independent],{8000},[],[],true,"VTOL_01_armed_base_F"],
	["Xian_Armed",{switch(playerSide)do{case opfor:{if(kgpcsn)then{"O_T_VTOL_02_infantry_ghex_F"}else{"O_T_VTOL_02_infantry_hex_F"}};default{"O_T_VTOL_02_infantry_grey_F"};};},{60},[],{true&&kgl3hf},[blufor,opfor,independent],{45000},[],[],true,"VTOL_02_base_F"]
	];
	
database_vehicles_planesList=[
	["凯撒",{"C_Plane_Civil_01_racing_F"},{10},[],{true&&kgl3hf},[blufor,opfor,independent],{8888},["weapon_AGM_65Launcher","Laserdesignator_pilotCamera"],["missiles_DAR"],true,"C_Plane_Civil_01_racing_F"],
	["Buzzard",{"I_Plane_Fighter_03_dynamicLoadout_F"},{20},[],{true&&kgl3hf},[blufor,opfor,independent],{25000},["missiles_SCALPEL","Bomb_04_Plane_CAS_01_F"],["Mk82BombLauncher"],true,"I_Plane_Fighter_03_dynamicLoadout_F"],
	["Shikra",{"O_Plane_Fighter_02_F"},{130},[],{true&&kgl3hf},[blufor,opfor,independent],{178000},["weapon_R77Launcher"],["Twin_Cannon_20mm"],true,"Plane_Fighter_02_Base_F"],
	["Neophron",{"O_Plane_CAS_02_dynamicLoadout_F"},{40},[],{true&&kgl3hf},[blufor,opfor,independent],{45000},["Missile_AGM_01_Plane_CAS_02_F","Laserdesignator_pilotCamera"],[],true,"Plane_CAS_02_dynamicLoadout_base_F"],
	["Wipeout",{"B_Plane_CAS_01_dynamicLoadout_F"},{50},[],{true&&kgl3hf},[blufor,opfor,independent],{55000},["Missile_AGM_02_Plane_CAS_01_F","Bomb_04_Plane_CAS_01_F","Laserdesignator_pilotCamera"],["weapon_GBU12Launcher"],true,"Plane_CAS_01_dynamicLoadout_base_F"],
	["F181",{"B_Plane_Fighter_01_F"},{90},[],{true&&kgl3hf},[blufor,opfor,independent],{156600},["weapon_AGM_65Launcher","weapon_AMRAAMLauncher","Laserdesignator_pilotCamera"],["missiles_DAR"],true,"B_Plane_Fighter_01_F"],
	["Gryphon",{"I_Plane_Fighter_04_F"},{60},[],{true&&kgl3hf},[blufor,opfor,independent],{78000},["weapon_AGM_65Launcher","weapon_AMRAAMLauncher","Laserdesignator_pilotCamera"],["weapon_GBU12Launcher"],true,"I_Plane_Fighter_04_F"]
	];
	
database_vehicles_boatsList=[
    ["Rubber_boat",{switch(playerSide)do{case blufor:{"B_Boat_Transport_01_F"};case opfor:{"O_Boat_Transport_01_F"};default{"I_Boat_Transport_01_F"};};},{1},[],{true},[blufor,opfor,independent],{600},[],[],true,"Rubber_duck_base_F"],
	["Water_scooter",{"C_Scooter_Transport_01_F"},{1},[],{true},[blufor,opfor,independent],{600},[],[],true,"Scooter_Transport_01_base_F"]
    ];