#include "macros.hpp"
disableSerialization;
private ["_0a","_tmpIndex"];

// ***
// *** define some public variables
// ***

GVAR(GameConfig) = 0;       // configFile
GVAR(MissionConfig) = 1;    // missionConfigFile
GVAR(CampaignConfig) = 2;   // campaignConfigFile

CurrentRoot = configFile;     // Current Root Config
CurrentConfig = configFile;   // Current Config Path
ConfigPath = [];              // Paths below Config Root (String Array)


_0a = findDisplay 19000;

// ***
// *** Add UI Event handlers to Config Combo List
// *** Hint: Must be set before setting the init value to the ComboList (lbSetCurSel) !!!
// ***

//(_0a displayCtrl 103) ctrlSetEventHandler ["LBSelChanged", "_this call c_proving_ground_HJ_fnc_onConfigChange"];
//(_0a displayCtrl 110) ctrlSetEventHandler ["LBDblClick ", "_this spawn c_proving_ground_HJ_fnc_onDoubleClickClass"];

// ***
// *** Fill ComboList with the available Config Namespaces
// ***

_tmpIndex = lbadd [103, "Game"];
lbSetValue [103, _tmpIndex, GVAR(GameConfig)];
_tmpIndex = lbadd [103, "Mission"];
lbSetValue [103, _tmpIndex, GVAR(MissionConfig)];
_tmpIndex = lbadd [103, "Campaign"];
lbSetValue [103, _tmpIndex, GVAR(CampaignConfig)];

lbSetCurSel [103, 0];

// ***
// *** set inital focus to the class list box
// ***
ctrlSetFocus (_0a displayCtrl 110);
