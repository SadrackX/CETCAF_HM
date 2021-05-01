params ["_building","_door","_player","_check"];

if (('ACE_key_west' in items _player) && ((_building getVariable format ["bis_disabled_%1",_door]) == _check)) then [ { true }, { false } ];