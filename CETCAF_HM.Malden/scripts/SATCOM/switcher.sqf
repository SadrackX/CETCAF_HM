//the function to switch on/off of SATCOM system
//[unitName, activeStatus] call SAT_switcher
//unitName - the unit for SATCOM action
//activeStatus - true or false
//v1.0 A3

private ["_unit","_status"];
_unit = [_x, 0, player] call BIS_fnc_param;
_status = [_x, 1, true] call BIS_fnc_param;

if (_status) then {
	_unit removeAction SAT_action;
	SAT_action = _unit addAction ["Ativar SATCOM","scripts\SATCOM\start_satellite.sqf"];
	hint "SATCOM conectado.";
} else {
	_unit removeAction SAT_action;
	call SAT_closeCamera;
	hint localize "SATCOM disconectado.";
};