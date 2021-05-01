params ["_building","_door"];

_closeDoor = format ["%1_rot", _door];
_building animate [_closeDoor, 0, false];
_building setVariable [format ["bis_disabled_%1",_door],1,true];	