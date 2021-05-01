params ["_building","_door"];

_building addAction ["Destrancar",{
	params ["_object","_caller","_ID","_door"];
	[_object,_door] remoteExecCall ["SDK_fnc_unlock",2];
},_door,6,true,true,"",format ["[_target,'%1',_this,1] call SDK_fnc_check",_door],3,false,_door];

_building addAction ["Trancar",{
	params ["_object","_caller","_ID","_door"];
	[_object,_door] remoteExecCall ["SDK_fnc_lock",2];
},_door,6,true,true,"",format ["[_target,'%1',_this,0] call SDK_fnc_check",_door],3,false,_door];

