
[compile preprocessFileLineNumbers "core\init.sqf"] call CBA_fnc_directCall;

enableEnvironment [false, true];
0 fadeRadio 0;
enableRadio false;
[player ,"NoVoice"] remoteExec ["setSpeaker",0,true];


0 enableChannel [false, false];
1 enableChannel [false, false];
2 enableChannel [false, false];
3 enableChannel [true, false];
4 enableChannel [false, false];
5 enableChannel [false, false];
6 enableChannel [true, false];



//VIEW DISTANCE
tawvd_disablenone = true;
tawvd_maxRange = 15000;

#include "scripts\arsenal_medic.sqf";
#include "scripts\arsenal_fire.sqf";
[] execVM "Vcom\VcomInit.sqf";

null = [] execVM "scripts\SDK_SATCOM\compile.sqf";
null = [] execVM "scripts\SDK_MED\compile.sqf";
null = [[mnt_01,mnt_02,mnt_03,mnt_04,mnt_05,mnt_06,mnt_07],playableUnits] execVM "scripts\SDK_CAM\Feedinit.sqf";
null = [sino,sino_1,sino_2] execVM "scripts\sino.sqf";
//nopop=true;
//null = [150] execVM "scripts\alvos_fnc.sqf";
null = [] execVM "scripts\SDK_LOCK\compile.sqf";
null = [] execVM "scripts\SDK_RADIO\compile.sqf";
[false, true] call acre_api_fnc_setupMission;