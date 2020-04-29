//compile functions and variables
//v1.0 A3

//variables
SAT_SatelliteInitialHeight = 800; 
SAT_SatelliteFOV = 0.2; 
SAT_SatelliteZoom = 39.7; 
SAT_SatelliteNorthMovementDelta = 0;
SAT_SatelliteSouthMovementDelta = 0;
SAT_SatelliteEastMovementDelta = 0;
SAT_SatelliteWestMovementDelta = 0;
SAT_ViewDistance = 0;
SAT_ViewDistanceNew = 3000;
SAT_TimeZone = "[UTC-3]";

//compile functions
SAT_timeFunction = compile preprocessFileLineNumbers "scripts\SATCOM\time_function.sqf";
SAT_timeView = compile preprocessFileLineNumbers "scripts\SATCOM\time_view.sqf";
SAT_coordinatesFunction = compile preprocessFileLineNumbers "scripts\SATCOM\coordinates_function.sqf";
SAT_coordinatesView = compile preprocessFileLineNumbers "scripts\SATCOM\coordinates_view.sqf";
SAT_adjustCamera = compile preprocessFileLineNumbers "scripts\SATCOM\adjustCamera.sqf";
SAT_updateCamera = compile preprocessFileLineNumbers "scripts\SATCOM\updateCamera.sqf";
SAT_closeCamera = compile preprocessFileLineNumbers "scripts\SATCOM\closeCamera.sqf";
SAT_viewSatellite = compile preprocessFileLineNumbers "scripts\SATCOM\view_satellite.sqf";
SAT_keyEventFunction = compile preprocessFileLineNumbers "scripts\SATCOM\key_function.sqf";
SAT_mouseZChanged = compile preprocessFileLineNumbers "scripts\SATCOM\mouseZChanged.sqf";
SAT_keyMain = compile preprocessFileLineNumbers "scripts\SATCOM\key_main.sqf";
SAT_startSatellite = compile preprocessFileLineNumbers "scripts\SATCOM\start_satellite.sqf";
SAT_switcher = compile preprocessFileLineNumbers "scripts\SATCOM\switcher.sqf";
SAT_redefineDefaultPos = compile preprocessFileLineNumbers "scripts\SATCOM\redefine_position.sqf";