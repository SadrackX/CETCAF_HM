while {true} do
{
	if (!(SAT_SatelliteActive)) exitWith {};

	ctrlSetText [1001,format ["%1 %2",call SAT_timeFunction,SAT_TimeZone]];

	sleep 0.1;
};