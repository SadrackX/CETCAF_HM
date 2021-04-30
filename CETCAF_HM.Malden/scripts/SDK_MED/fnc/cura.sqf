params[
	["_volunt",objNull,[objNull]]
];
if (alive (_volunt)) then {
	[objNull,_volunt] remoteExecCall ["ace_medical_treatment_fnc_fullHeal",2];
}; 
