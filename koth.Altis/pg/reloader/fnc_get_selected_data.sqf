#include "defs.hpp"
_0ha = _this select 0;

_selection = (lbSelection GET_CTRL(_0ha) select 0);
if (isNil {_selection}) then {_selection = 0};
(GET_CTRL(_0ha) lbData _selection)