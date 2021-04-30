params ["_building","_door"];

_building setVariable [format ["bis_disabled_%1",_door],0,true];
_building addAction ["Trancar",{
	params ["_object","_caller","_ID","_door"];
	_object removeAction _ID;
	[_object,_door] remoteExecCall ["SDK_fnc_lock",2];
},_door,6,true,true,"","'ACE_key_west' in items _this",3,false,_door];