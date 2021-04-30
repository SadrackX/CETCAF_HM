params ["_building","_door"];

_closeDoor = format ["%1_rot", _door];
_building animate [_closeDoor, 0, false];
_building setVariable [format ["bis_disabled_%1",_door],1,true];	
_building addAction ["Destrancar",{
	params ["_object","_caller","_ID","_door"];
	_object removeAction _ID;
	[_object,_door] remoteExecCall ["SDK_fnc_unlock",2];
},_door,6,true,true,"","'ACE_key_west' in items _this",3,false,_door];

