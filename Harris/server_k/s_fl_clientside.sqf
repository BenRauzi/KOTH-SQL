kg17j7 = {
    if (isNil {
            kguvm4
        }) exitWith {
        diag_log "myUID is nil!";
        endMission "LOSER";
    };
    if (kguvm4 == "") exitWith {
        diag_log "myUID == """"!";
        endMission "LOSER";
    };
    private["_0aq", "_0bq", "_0cq", "_0dq", "_0hq", "_0iq", "_0jq", "_0lq", "_0mq", "_0nq", "_0oq", "_0pq", "_0qq", "_0eq", "_0fq", "_0gq"];
    _0aq = toArray str _this;
    _0bq = [];
    _0cq = []; {
        for "_i"
        from(_x select 0) to(_x select 1) do {
            _0cq set[count _0cq, _i]
        };
    } forEach[[97, 122], [65, 90]];
    _0dq = []; {
        for "_i"
        from(_x select 0) to(_x select 1) do {
            _0dq set[count _0dq, _i]
        };
    } forEach[[48, 57]];
    _0eq = 97;
    _0fq = 65;
    _0gq = 48;
    _0hq = []; {
        for "_i"
        from(_x select 0) to(_x select 1) do {
            _0hq set[count _0hq, _i]
        };
    } forEach[[_0eq, 122], [_0fq, 90], [_0gq, 57]];
    _0iq = count(_0hq);
    _0jq = (
        switch (_0kq) do {
            case "kothkey4":{
                    [75, 86, 56, 117, 74, 104, 99, 51, 108, 78, 77]
                };
            default {
                [109, 45, 53, 69, 98, 69, 121, 114, 55, 103, 111]
            };
        });
    _0lq = 0;
    _0mq = count(_0jq);
    _0nq = toArray kguvm4;
    _0oq = 0;
    _0pq = count(_0nq);
    _0qq = round(diag_tickTime / 3600);
    for "_i"from 0 to count(_0aq) - 1 do {
        _0ke = _0aq select _i;
        switch (true) do {
            case (_0ke in _0cq):
            {
                _0bq set[count _0bq, _0hq select((_i + (_0jq select _0lq) + (_0nq select _0oq) + _0ke) % _0iq)];
            };
            case (_0ke in _0dq):{
                    _0rq = _i;
                    for "_j"
                    from 1 to 3 do {
                        _0rq = round(_0rq * 5 / 2);
                        _0bq set[count _0bq, _0hq select((_i + (_0jq select _0lq) + (_0nq select _0oq) + _0ke + _0rq) % _0iq)];
                    };
                };
            default {
                _0qq
            };
        };
        _0lq = _0lq + 1;
        if (_0lq >= _0mq) then {
            _0lq = 0;
        };
        _0oq = _0oq + 1;
        if (_0oq >= _0pq) then {
            _0oq = 0;
        };
    };
    toString _0bq
};
kgttgb = {
    if (!kgs5yy) exitWith {
        systemChat "Error: Attempted to save profile before loading it";
    };
    saveProfileNamespace; {
        _0kq = _x;
        _0sq = profileNamespace getVariable _0kq;
        if (isNil "_0sq") then {
            _0sq = call kgjhez;
            profileNamespace setVariable[_0kq, _0sq];
        };
        _0q = call kgbbnd;
        _0vl = _0q call kg5lz9;
        _03c = _0vl call kg17j7;
        profileNamespace setVariable[_0sq, [_0q, _0vl, _03c]];
    }
    forEach["kothkey2", "kothkey4"];
    saveProfileNamespace;
    kga4bj = diag_tickTime;
    true
};
kgjwrw = {
    private["_0u", "_0ba", "_0tq"];
    _0tq = []; {
        _0ba = profileNamespace getVariable(profileNamespace getVariable[_x, str random 1e6]);
        if (!isNil "_0ba") exitWith {
            _0tq pushBack[_0ba select 1 select 12, _x];
        };
    }
    forEach["kothkey2", "kothkey4"];
    _0uq = (profileNamespace getVariable["kothkey", ""]);
    if !(_0uq isEqualType "") then {
        _0uq = ""
    };
    if (_0uq != "") then {
        profileNamespace setVariable[_0uq, nil];
    };
    profileNamespace setVariable["kothkey", nil];
    if (count _0tq <= 0) exitWith {
        false
    };
    _0tq sort false;
    _0kq = _0tq select 0 select 1;
    _0u = profileNamespace getVariable(profileNamespace getVariable[_0kq, str random 1e6]);
    if (isNil "_0u") exitWith {
        false
    };
    private["_0vq", "_0wq", "_0xq", "_0zq", "_0yq"];
    _0vq = _0u select 0;
    _0wq = +(_0u select 1);
    _0xq = _0u select 2;
    _0yq = call {
        _0zq = _0wq call kg17j7;
        [_0vq, _0wq] call kg9n8x;
    };
    _0yq
};
kgluw1 = {
    if ({
            if (!isNil {
                    profileNamespace getVariable(profileNamespace getVariable[_x, str random 1e6])
                }) exitWith {
                1
            };
        }
        count["kothkey2", "kothkey4"] == 0) exitWith {
        false
    };
    true
};
kghvkk = {
    {
        profileNamespace setVariable[profileNamespace getVariable[_x, str random 1e6], nil];
    }
    forEach["kothkey", "kothkey2", "kothkey3", "kothkey4"];
    saveProfileNamespace;
};
publicVariable "kg17j7";
publicVariable "kgttgb";
publicVariable "kgjwrw";
publicVariable "kgluw1";
publicVariable "kghvkk";