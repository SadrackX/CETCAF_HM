
SAT_SatelliteInitialHeight = 1000; 
SAT_SatelliteFOV = 0.2; 
SAT_SatelliteZoom = 39.7; //39.7
SAT_SatelliteNorthMovementDelta = 0;
SAT_SatelliteSouthMovementDelta = 0;
SAT_SatelliteEastMovementDelta = 0;
SAT_SatelliteWestMovementDelta = 0;
SAT_ViewDistance = 0;
SAT_ViewDistanceNew = 5000;
SAT_SatelliteActive = false;

SAT_timeFunction = 			compile preprocessFileLineNumbers "scripts\SDK_SATCOM\fnc\time_function.sqf";
SAT_timeView = 				compile preprocessFileLineNumbers "scripts\SDK_SATCOM\fnc\time_view.sqf";
SAT_coordinatesView = 		compile preprocessFileLineNumbers "scripts\SDK_SATCOM\fnc\coordinates_view.sqf";
SAT_adjustCamera = 			compile preprocessFileLineNumbers "scripts\SDK_SATCOM\fnc\adjustCamera.sqf";
																	
SAT_closeCamera = 			compile preprocessFileLineNumbers "scripts\SDK_SATCOM\main\closeCamera.sqf";
SAT_viewSatellite = 		compile preprocessFileLineNumbers "scripts\SDK_SATCOM\main\view_satellite.sqf";
SAT_startSatellite = 		compile preprocessFileLineNumbers "scripts\SDK_SATCOM\main\start_satellite.sqf";
																	   
SAT_updateCamera = 			compile preprocessFileLineNumbers "scripts\SDK_SATCOM\move\updateCamera.sqf";
SAT_keyEventFunction = 		compile preprocessFileLineNumbers "scripts\SDK_SATCOM\move\key_function.sqf";
SAT_mouseZChanged = 		compile preprocessFileLineNumbers "scripts\SDK_SATCOM\move\mouseZChanged.sqf";
SAT_keyMain = 				compile preprocessFileLineNumbers "scripts\SDK_SATCOM\move\key_main.sqf";
SAT_redefineDefaultPos = 	compile preprocessFileLineNumbers "scripts\SDK_SATCOM\move\redefine_position.sqf";	