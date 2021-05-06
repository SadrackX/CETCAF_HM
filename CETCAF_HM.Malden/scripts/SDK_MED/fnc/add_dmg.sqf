params["_volunt"];
injuryArray = ["stab","bullet","falling"];
if (alive (_volunt)) then {
	
	_body_index = [lbCurSel 2100,lbCurSel 2101, lbCurSel 2102, lbCurSel 2103, lbCurSel 2104, lbCurSel 2105];
	_injury_value = [sliderposition 1900, sliderposition 1901, sliderposition 1902, sliderposition 1903, sliderposition 1904, sliderposition 1905];
	_body_part = ["head", "body", "hand_r", "hand_l", "leg_r", "leg_l"]; 
	
	{
		if (_x != 0) then {
			if((_body_index select _forEachIndex) == 3) then [{
				[_volunt, ([_x,1] call BIS_fnc_cutDecimals)/10, (_body_part select _forEachIndex), (selectrandom injuryArray)] Call ace_medical_fnc_addDamageToUnit;
			},{
				[_volunt, ([_x,1] call BIS_fnc_cutDecimals)/10, (_body_part select _forEachIndex), (injuryArray select (_body_index select _forEachIndex))] Call ace_medical_fnc_addDamageToUnit;
			}];
		};
	}forEach _injury_value;

};  