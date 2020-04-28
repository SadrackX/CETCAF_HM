private _soundLoc = [str missionConfigFile, 0, -15] call BIS_fnc_trimString;
private _soundPlay = _soundLoc + "core\sounds\bell.wav";
playSound3d [_soundPlay, sino, false, getPosASL sino, 5, 1, 100];
