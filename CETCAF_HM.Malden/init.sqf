enableSaving [false, false];
enableEnvironment [false, true];
//enableSentences false;
0 fadeRadio 0;
enableRadio false;
//player disableConversation true;
//player setVariable ["BIS_noCoreConversations", true]; 
[player ,"NoVoice"] remoteExec ["setSpeaker",0,true];


0 enableChannel [false, false];
1 enableChannel [false, false];
2 enableChannel [false, false];
3 enableChannel [false, false];
4 enableChannel [false, false];
5 enableChannel [true, false];
6 enableChannel [true, false];
	

if (hasInterface) then {btc_intro_done = [] spawn btc_fnc_intro;};

[] call compile preprocessFileLineNumbers "core\def\mission.sqf";
[] call compile preprocessFileLineNumbers "define_mod.sqf";

if (isServer) then {
    [] call compile preprocessFileLineNumbers "core\init_server.sqf";
	[] spawn compileFinal preprocessFileLineNumbers "scripts\show_fps.sqf";
};

[] call compile preprocessFileLineNumbers "core\init_common.sqf";

if (!isDedicated && hasInterface) then {
    [] call compile preprocessFileLineNumbers "core\init_player.sqf";
};

if (!isDedicated && !hasInterface) then {
    [] call compile preprocessFileLineNumbers "core\init_headless.sqf";
};

_variable = [] execVM "scripts\SATCOM\init_satellite.sqf";
//VIEW DISTANCE
tawvd_disablenone = true;
tawvd_maxRange = 15000;

#include "scripts\arsenal_medic.sqf";
#include "scripts\arsenal_fire.sqf";

null = [[mnt_01,mnt_02,mnt_03,mnt_04,mnt_05,mnt_06,mnt_07],playableUnits] execVM "scripts\MONITORAMENTO\Feedinit.sqf";

asr_ai3_main_sets = [ 																// for each level: skilltype, [<min value>, <random value added to min>]
		[	"general",[1.00,0.0],	"aiming",[1.00,0.0],	"spotting",[1.00,0.0]	],	// 0:  super-AI (only used for testing)
		[	"general",[0.80,0.5],	"aiming",[0.25,0.0],	"spotting",[0.6,0.0]	],	// 1:  sf 1
		[	"general",[0.80,0.5],	"aiming",[0.25,0.0],	"spotting",[0.8,0.0]	],	// 2:  sf 2 (recon units, divers and spotters)
		[	"general",[0.80,0.5],	"aiming",[0.4,0.2],		"spotting",[0.6,0.0]	],	// 3:  regular 1 (regular army leaders, marksmen)
		[	"general",[0.6,0.3],	"aiming",[0.3,0.0],		"spotting",[0.6,0.0]	],	// 4:  regular 2 (regulars)
		[	"general",[0.7,0.5],	"aiming",[0.4,0.0],		"spotting",[0.7,0.0]	],	// 5:  militia or trained insurgents, former regulars (insurgent leaders, marksmen)
		[	"general",[0.6,0.3],	"aiming",[0.3,0.1],		"spotting",[0.6,0.0]	],	// 6:  some military training (insurgents)
		[	"general",[0.5,0.2],	"aiming",[0.1,0.0],		"spotting",[0.4,0.0]	],	// 7:  no military training
		[	"general",[0.5,0.5],	"aiming",[0.3,0.0],		"spotting",[0.6,0.0]	],	// 8:  pilot 1 (regular)
		[	"general",[0.5,0.2],	"aiming",[0.2,0.0],		"spotting",[0.6,0.0]	],	// 9:  pilot 2 (insurgent)
		[	"general",[0.80,0.5],	"aiming",[0.7,0.2],		"spotting",[0.8,0.0]	]	// 10: sniper 
	];