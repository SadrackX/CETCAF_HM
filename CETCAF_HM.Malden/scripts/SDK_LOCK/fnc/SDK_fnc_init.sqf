params ["_building"];
_selectionNames = selectionNames _building;
_doors = _selectionNames select {toUpper _x find "DOOR" >= 0};
{
	if ((nearestObjects [_building, ["Land_Key_01_F"], 10]) isEqualTo [])then{
		_lock = [_building,_x] call SDK_fnc_unlock;
	} else {
		_lock = [_building,_x] call SDK_fnc_lock;
	};
} forEach _doors;