
/* ----------------------------------------------------------------------------
Function: btc_fnc_log_server_repair_wreck

Description:
    Repair wreck.

Parameters:
    _veh - Vehicle to repair. [Object]

Returns:

Examples:
    (begin example)
        _veh = [my_vehicle] spawn btc_fnc_log_server_repair_wreck;
    (end)

Author:
    Giallustio

---------------------------------------------------------------------------- */

params [
    ["_veh", objNull, [objNull]],
    ["_blacklist", btc_helo, [[]]]
];

if (_veh in _blacklist) exitWith {
    [16] remoteExecCall ["btc_fnc_show_hint", remoteExecutedOwner];
};

private _type = typeOf _veh;
(getPosASL _veh) params ["_x", "_y", "_z"];
private _dir = getDir _veh;
private _marker = _veh getVariable ["marker", ""];
private _vehProperties = [_veh] call btc_fnc_getVehProperties;
_vehProperties set [5, false];
private _EDENinventory = _veh getVariable ["btc_EDENinventory", []];

btc_vehicles = btc_vehicles - [_veh];

if (_marker != "") then {
    deleteMarker _marker;
    remoteExecCall ["", _marker];
};

if !((getVehicleCargo _veh) isEqualTo []) then {
    _veh setVehicleCargo objNull;
};

[{
    deleteVehicle _this;
}, _veh] call CBA_fnc_execNextFrame;

[{
   (_this call btc_fnc_log_createVehicle) call dam_veh;
}, [_type, [_x, _y, 0.5 + _z], _dir] + _vehProperties + [_EDENinventory], 0.5] call CBA_fnc_waitAndExecute;


dam_veh = {
	_this setDamage [0.8, false];
	_this setVehicleAmmo 0;
	_this setFuel 0;
	if !(_this isKindOf "Helicopter") then {
		_this setHit ["wheel_1_1_steering",1];
		_this setHit ["wheel_1_2_steering",1];
		_this setHit ["wheel_1_3_steering",1];
		_this setHit ["wheel_1_4_steering",1];
		_this setHit ["wheel_2_1_steering",1];
		_this setHit ["wheel_2_2_steering",1];
		_this setHit ["wheel_2_3_steering",1];
		_this setHit ["wheel_2_4_steering",1];
	};
};



