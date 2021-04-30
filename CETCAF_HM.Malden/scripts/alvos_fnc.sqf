dist = _this select 0;

{
	_x setVariable ["noPop", true];
} forEach (nearestObjects [position areaT, ["TargetBase"], dist]);

ALV_UP = {
	_alvo = nearestObjects [position areaT, ["TargetBase"], dist];
	{_x animate ["Terc",0]; _x setDamage 0;} forEach _alvo;			
};
ALV_DWN = {
	_alvo = nearestObjects [position areaT, ["TargetBase"], dist];
	{_x animate ["Terc",1]; _x setDamage 0;} forEach _alvo;			
};
