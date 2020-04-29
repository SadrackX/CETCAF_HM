private ["_lon","_lat"];

#define SATFOV 2282

while {true} do
{
	if (!(SAT_SatelliteActive)) exitWith {};
	
	_lon = getPos SAT_SatelliteTarget select 1;
	_lat = getPos SAT_SatelliteTarget select 0;

	ctrlSetText [1002,format ["%1 LON",[_lon] call SAT_coordinatesFunction]];
	ctrlSetText [1003,format ["%1 LAT",[_lat] call SAT_coordinatesFunction]];
	ctrlSetText [1004,format ["%1km",(round (100 * (SATFOV - SAT_SatelliteFOV)))/100]];

	sleep 0.1;
};