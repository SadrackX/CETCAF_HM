private ["_cameraCount","_debug","_monitor"];
_monitor = (_this select 0);
_units = (_this select 1);
_cam_cftv = allSimpleObjects ["Land_HandyCam_F"];
removeAllActions _monitor;
_debug = false;
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
			_monitor addAction [_uniqueName, "call fnc_PROCESS_LIVE",[_x,_debug],0,false,true,"","_target distance _this < 3.5"];
		
			//_uniqueName=format ["<t color=""#0D37FF"">" + ("SATx : %1") + "</t>",name _x];
			//_monitor addAction [_uniqueName, "call fnc_PROCESS_SATT",[_x,_debug],0,false,true,"","_target distance _this < 3.5"];

			_x setvariable ["LIVEid",_cameraCount,true];
		};
	};
	
}foreach _units;

{
	_uniqueName=format ["<t color=""#E4FB44"">" + ("UAV: 00%1") + "</t>",_forEachIndex+1];
	_monitor addAction [_uniqueName, "call fnc_PROCESS_UAV",[_x,_forEachIndex+1,_debug],0,false,true,"","_target distance _this < 3.5"];
}foreach allUnitsUAV;

fnc_PROCESS_UAV = {
	private ["_name","_cam","_debug","_class","_newClass","_arguments","_camPosMemPt","_camDirMemPt"];
	_monitor=(_this select 0);
	_arguments=(_this select 3);
	_unit=_arguments select 0;
	_debug=_arguments select 2;
	_camPosMemPt = "";
	_camDirMemPt = "";

	_monitor setObjectTextureglobal [0,"core\img\standby.paa"];
	SLEEP 1;
	
	_cam=_unit getVariable "LIVECAM";
	
	if (isnil "_cam") then {
		_cam = "camera" camCreate getpos _unit;	
		_unit setvariable ["LIVECAM",_cam,true];			
		0=[_cam,_debug] call fnc_RESET;
	}else{
		if (isnull _cam)then {
			_cam = "camera" camCreate getpos _unit;	
			_unit setvariable ["LIVECAM",_cam,true];			
			0=[_cam,_debug] call fnc_RESET;
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
			0=[_cam,_debug] call fnc_RESET;
		};
		
	};
};

{
	_uniqueName=format ["<t color=""#E4FB44"">" + ("CAM: 00%1") + "</t>",_forEachIndex+1];
	_monitor addAction [_uniqueName, "call fnc_PROCESS_CFTV",[_x,_forEachIndex,_debug],0,false,true,"","_target distance _this < 3.5"];
}foreach allSimpleObjects ["Land_HandyCam_F"];

fnc_PROCESS_CFTV = {
	private ["_name","_cam","_debug","_class","_newClass","_arguments"];
	_monitor=(_this select 0);
	_arguments=(_this select 3);
	_unit=_arguments select 0;
	_debug=_arguments select 2;
		
	_monitor setObjectTextureglobal [0,"core\img\standby.paa"];
	SLEEP 1;
		
	_cam=_unit getVariable "LIVECAM";
		
	if (isnil "_cam") then {
		_cam = "camera" camCreate getpos _unit;	
		_unit setvariable ["LIVECAM",_cam,true];			
		0=[_cam,_debug] call fnc_RESET;
	}else{
		if (isnull _cam)then {
			_cam = "camera" camCreate getpos _unit;	
			_unit setvariable ["LIVECAM",_cam,true];			
			0=[_cam,_debug] call fnc_RESET;
		};
	};
	
	_cam attachTo [_unit, [0,0,0]]; 
	
	_cam camSetFov 0.8; 				
	_id = _arguments select 1;
	_name=format ["rendertarget%1",_id];					
	0=[_monitor,_name,_cam,0] call fnc_RENDER;
				
				
	_class = typeOf (vehicle _unit);

	while {true} do {
		sleep 1;
		_NeWclass = typeOf (vehicle _unit);
		if (!(_NeWclass == _class)) exitwith {
			0= [_monitor,0,0] call fnc_PROCESS_CFTV;
		};
	};

};

if (_debug) then {
	_sidechatHint = format["Total Cam count: %1", _cameraCount];
	PAPABEAR sideChat _sidechatHint;GlobalSideChat = _sidechatHint; 
	publicVariable "GlobalSideChat";
};

	
fnc_PROCESS_LIVE = {
	private ["_name","_cam","_debug","_class","_newClass","_arguments"];
	_monitor=(_this select 0);
	_arguments=(_this select 3);
	_unit=_arguments select 0;
	_debug=_arguments select 1;
		
	_monitor setObjectTextureglobal [0,"core\img\standby.paa"];
	SLEEP 1;
		
	_cam=_unit getVariable "LIVECAM";
		
	if (isnil "_cam") then {
		_cam = "camera" camCreate getpos _unit;	
		_unit setvariable ["LIVECAM",_cam,true];			
		0=[_cam,_debug] call fnc_RESET;
	}else{
		if (isnull _cam)then {
			_cam = "camera" camCreate getpos _unit;	
			_unit setvariable ["LIVECAM",_cam,true];			
			0=[_cam,_debug] call fnc_RESET;
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

fnc_PROCESS_SATT = {
	private ["_name","_cam","_debug"];
	_monitor=(_this select 0);
	_arguments=(_this select 3);
	_unit=_arguments select 0;
	_debug=_arguments select 1;
	
	_monitor setObjectTextureglobal [0,"core\img\standby.paa"];
	SLEEP 0.6;
	
	_cam=_unit getVariable "SATTCAM";
	if (isnil "_cam") then {
		_cam = "camera" camCreate [(getpos _unit select 0), (getpos _unit select 1), (getpos _unit select 2) + 500];	
		_unit setvariable ["SATTCAM",_cam,true];
		0=[_cam,_debug] call fnc_RESET;
	}else{
		if (isnull _cam) then {
			_cam = "camera" camCreate [(getpos _unit select 0), (getpos _unit select 1), (getpos _unit select 2) + 500];	
			_unit setvariable ["SATTCAM",_cam,true];
			0=[_cam,_debug] call fnc_RESET;
		};
	};
	[_cam,_unit] spawn {
		private ["_cam","_unit"];
		_cam = (_this select 0);
		_unit =(_this select 1);
		while {!(isnull _cam) || alive _unit} do {
			_cam setpos [(getpos _unit select 0), (getpos _unit select 1), (getpos _unit select 2) + 500];			
			sleep 0.1;
		};
	};
	
	_cam camSetFov 0.1; 
	_cam setVectorDirAndUp [[0,0,-1],[0,1,0]];
	_id = _unit getvariable "LIVEid";
	_name=format ["rendertargetsat%1",_id];		
	0=[_monitor,_name,_cam,0] call fnc_RENDER;
};


fnc_RESET = {
	private ["_conCurrentCams"];
	_cam=(_this select 0);
	_debug=(_this select 1);
	_conCurrentCams=server getvariable "CONCURRENTCAMS";
	
	if (isnil "_conCurrentCams") then {
		_conCurrentCams = [];
		server setvariable ["CONCURRENTCAMS",_conCurrentCams,true];
	};
	
	_conCurrentCams=_conCurrentCams + [_cam];
	server setvariable ["CONCURRENTCAMS",_conCurrentCams,true];
	
	if (_debug) then {
		_sidechatHint = format["Concurrent cam Count: %1",count _conCurrentCams];
		PAPABEAR sideChat _sidechatHint;GlobalSideChat = _sidechatHint; publicVariable "GlobalSideChat";
	};
						
	if (count _conCurrentCams > 4) then {
		{
			_x cameraEffect ["TERMINATE", "BACK"];
			camDestroy _x;
			_monitor setObjectTextureglobal [0,"core\img\standby.paa"];
		}foreach _conCurrentCams;

		_conCurrentCams=[];
		server setvariable ["CONCURRENTCAMS",_conCurrentCams,true];
					
		if (_debug) then {
			_sidechatHint = format["Deleted CONCURRENTCAMS: %1",count _conCurrentCams];
			PAPABEAR sideChat _sidechatHint;GlobalSideChat = _sidechatHint; 
			publicVariable "GlobalSideChat";
		};
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
