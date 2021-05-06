private ["_cameraCount","_monitor"];
_monitor = (_this select 0);
_units = (_this select 1);
removeAllActions _monitor;
sleep 0.1;
_cameraCount = server getvariable "CAMCOUNT";	


if (isnil "_cameraCount") then {
	_cameraCount = 0;
	server setvariable ["CAMCOUNT",_cameraCount,true];
};

{
	if (isnil "_x") then {} else {
		if (isNull _x) then {} else{
			_cameraCount=_cameraCount+1;server setvariable ["CAMCOUNT",_cameraCount,true];
			
			_uniqueName=format ["<t color=""#84EFF2"">" + ("CAMx: %1") + "</t>",name _x];
			_monitor addAction [_uniqueName, "call fnc_PROCESS_LIVE",[_x],0,false,true,"","_target distance _this < 3.5"];

			_x setvariable ["LIVEid",_cameraCount,true];
		};
	};
	
}foreach _units;

{
	_uniqueName=format ["<t color=""#E4FB44"">" + ("UAV: 00%1") + "</t>",_forEachIndex+1];
	_monitor addAction [_uniqueName, "call fnc_PROCESS_UAV",[_x,_forEachIndex+1],0,false,true,"","_target distance _this < 3.5"];
}foreach allUnitsUAV;

fnc_PROCESS_UAV = {
	private ["_name","_cam","_class","_newClass","_arguments","_camPosMemPt","_camDirMemPt"];
	_monitor=(_this select 0);
	_arguments=(_this select 3);
	_unit=_arguments select 0;
	_camPosMemPt = "";
	_camDirMemPt = "";

	_monitor setObjectTextureglobal [0,"core\img\standby.paa"];
	SLEEP 1;
	
	_cam=_unit getVariable "LIVECAM";
	
	if (isnil "_cam") then {
		_cam = "camera" camCreate getpos _unit;	
		_unit setvariable ["LIVECAM",_cam,true];			
		0=[_cam] call fnc_RESET;
	}else{
		if (isnull _cam)then {
			_cam = "camera" camCreate getpos _unit;	
			_unit setvariable ["LIVECAM",_cam,true];			
			0=[_cam] call fnc_RESET;
		};
	};
	
	_camPosMemPt = getText (configFile >> "CfgVehicles" >> typeOf _unit >> "uavCamera" + "Gunner" + "Pos");
	_camDirMemPt = getText (configFile >> "CfgVehicles" >> typeOf _unit >> "uavCamera" + "Gunner" + "Dir");
	
	_cam attachTo [_unit,[0,0,0],_camPosMemPt];

	_cam camSetFov 0.8; 				
	_id = _arguments select 1;
	_name=format ["rendertarget%1",_id];					
	0=[_monitor,_name,_cam,0] call fnc_RENDER;
	
	while {true} do {
		_dir = (_unit selectionPosition _camPosMemPt) vectorFromTo (_unit selectionPosition _camDirMemPt);
		_cam setVectorDirAndUp [_dir,_dir vectorCrossProduct [-(_dir select 1), _dir select 0, 0]];
		if (!(alive _unit)) exitwith {
			0=[_cam] call fnc_RESET;
		};
		
	};
};

	
fnc_PROCESS_LIVE = {
	private ["_name","_cam","_class","_newClass","_arguments"];
	_monitor=(_this select 0);
	_arguments=(_this select 3);
	_unit=_arguments select 0;
		
	_monitor setObjectTextureglobal [0,"core\img\standby.paa"];
	SLEEP 1;
		
	_cam=_unit getVariable "LIVECAM";
		
	if (isnil "_cam") then {
		_cam = "camera" camCreate getpos _unit;	
		_unit setvariable ["LIVECAM",_cam,true];			
		0=[_cam] call fnc_RESET;
	}else{
		if (isnull _cam)then {
			_cam = "camera" camCreate getpos _unit;	
			_unit setvariable ["LIVECAM",_cam,true];			
			0=[_cam] call fnc_RESET;
		};
	};
											
	_class = typeOf (vehicle _unit);
	//copyToClipboard (format ["%1",_class]);
	if (vehicle _unit != _unit) then{
		_cam attachto [(vehicle _unit),[0,1.5,0], "neck"];
	}else{
		_cam attachto [_unit,[0,0.15,0], "neck"]
	};
		
								
	_cam camSetFov 0.8; 				
	_id = _unit getvariable "LIVEid";
	_name=format ["rendertarget%1",_id];					
	0=[_monitor,_name,_cam,0] call fnc_RENDER;
				
				
	_class = typeOf (vehicle _unit);

	while {true} do {
		sleep 1;
		_NeWclass = typeOf (vehicle _unit);
		if (!(_NeWclass == _class)) exitwith {
			0= [_monitor,0,0,_arguments] call fnc_PROCESS_LIVE;
		};
	};
};

fnc_RESET = {
	private ["_conCurrentCams"];
	_cam=(_this select 0);
	_conCurrentCams=server getvariable "CONCURRENTCAMS";
	
	if (isnil "_conCurrentCams") then {
		_conCurrentCams = [];
		server setvariable ["CONCURRENTCAMS",_conCurrentCams,true];
	};
	
	_conCurrentCams=_conCurrentCams + [_cam];
	server setvariable ["CONCURRENTCAMS",_conCurrentCams,true];
	

						
	if (count _conCurrentCams > 4) then {
		{
			_x cameraEffect ["TERMINATE", "BACK"];
			camDestroy _x;
			_monitor setObjectTextureglobal [0,"core\img\standby.paa"];
		}foreach _conCurrentCams;

		_conCurrentCams=[];
		server setvariable ["CONCURRENTCAMS",_conCurrentCams,true];
					
	};
};

fnc_RENDER = {
	_monitor=(_this select 0);
	_name=(_this select 1);
	_cam=(_this select 2);
	_visionMode=(_this select 3);
	
	_cam camCommit 1;
	_cam cameraEffect ["INTERNAL", "BACK",_name];
	_name setPiPEffect [_visionMode];
	_monitor setObjectTextureglobal  [0,(format ["#(argb,512,512,1)r2t(%1,1.0)",_name])];
};

_monitor addAction ["Parar transmissão"," call fnc_OFF",[],0,false,true,"","_target distance _this < 3.5"];

fnc_OFF = {
	_monitor=(_this select 0);
	_monitor setObjectTextureglobal  [0,"core\img\off.paa"];
};
