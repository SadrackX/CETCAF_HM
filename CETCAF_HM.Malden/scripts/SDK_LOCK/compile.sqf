SDK_fnc_init 	= compile preprocessFileLineNumbers	"SCRIPTS\SDK_LOCK\fnc\SDK_fnc_init.sqf";
SDK_fnc_lock 	= compile preprocessFileLineNumbers	"SCRIPTS\SDK_LOCK\fnc\SDK_fnc_lock.sqf";
SDK_fnc_unlock 	= compile preprocessFileLineNumbers	"SCRIPTS\SDK_LOCK\fnc\SDK_fnc_unlock.sqf";
SDK_fnc_actions = compile preprocessFileLineNumbers	"SCRIPTS\SDK_LOCK\fnc\SDK_fnc_actions.sqf";
SDK_fnc_check 	= compile preprocessFileLineNumbers	"SCRIPTS\SDK_LOCK\fnc\SDK_fnc_check.sqf";
null = [] execVM "SCRIPTS\SDK_LOCK\setup.sqf";
