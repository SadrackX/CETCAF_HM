onMapSingleClick
{
	SAT_SatelliteTarget = "Logic" createVehicleLocal _pos;//SAT_SATCOM_Logic
	SAT_SatelliteTarget setDir 0;
	call SAT_viewSatellite;
};
openMap true;