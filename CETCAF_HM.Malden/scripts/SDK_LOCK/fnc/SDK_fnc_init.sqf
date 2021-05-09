params ["_building"];
_selectionNames = selectionNames _building;
_doors = _selectionNames select {toUpper _x find "DOOR" >= 0};
{
	_actions = [_building,_x] call SDK_fnc_actions;
	if !((nearestObjects [_building, ['Land_Key_01_F'], 20]) isEqualTo []) then { [_building,_x] call SDK_fnc_lock;} else {[_building,_x] call SDK_fnc_unlock; };
	
} forEach _doors;