
/* {
	//_building = getpos _x nearestObject "HouseBase"; 
	_building =  nearestBuilding getpos _x; 
	_init = [_building] call SDK_fnc_init;
} forEach (allMissionObjects "Land_Key_01_F");
 */
{
	_init = [_x] call SDK_fnc_init;
} forEach (nearestObjects [[10564.5,4103.03], ["house"], 2000]);