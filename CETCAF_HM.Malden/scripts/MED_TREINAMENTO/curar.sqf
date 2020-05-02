if (alive (ASLToAGL getPosASL  area_dano nearEntities ["Man", 1.5] select 0)) then {
	[objNull,ASLToAGL getPosASL  area_dano nearEntities ["Man", 1.5] select 0] call ace_medical_treatment_fnc_fullHeal;
}; 
