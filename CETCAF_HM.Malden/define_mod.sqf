btc_custom_loc = [
/*
    DESCRIPTION: [POS(Array),TYPE(String),NAME(String),RADIUS X(Number),RADIUS X(Number),IS OCCUPIED(Bool)]
    Possible types: "NameVillage","NameCity","NameCityCapital","NameLocal","Hill","Airport","NameMarine"
    EXAMPLE: [[13132.8,3315.07,0.00128174],"NameVillage","Mountain 1",800,800,true]
*/
];

/*
    Here you can specify which equipment should be added or removed from the arsenal.
    Please take care that there are different categories (weapons, magazines, items, backpacks) for different pieces of equipment into which you have to classify the classnames.
    In all cases, you need the classname of an object.

    Attention: The function of these lists depends on the setting in the mission parameter (Restrict arsenal).
        - "Full": here you have only the registered items in the arsenal available.
        - "Remove only": here all registered items are removed from the arsenal. This only works for the ACE3 arsenal!

    Example(s):
        private _weapons = [
            "arifle_MX_F",          //Classname for the rifle MX
            "arifle_MX_SW_F",       //Classname for the rifle MX LSW
            "arifle_MXC_F"          //Classname for the rifle MXC
        ];

        private _items = [
            "G_Shades_Black",
            "G_Shades_Blue",
            "G_Shades_Green"
        ];
*/
private _weapons = [
	//Lançadores
	"rhs_weap_fim92",
	"rhs_weap_maaws",
	"rhs_weap_smaw_green",
	"launch_RPG7_F",
	"launch_MRAWS_green_F",
	"rhs_weap_M136",
	"rhs_weap_M136_hedp",
	"rhs_weap_M136_hp",
	"rhs_weap_m72a7",

	//Secundaria
	"hgun_Pistol_heavy_01_green_F",
	"rhsusf_weap_glock17g4",
	"rhsusf_weap_m9",
	"ACE_VMH3",
	"ACE_VMM3",

	//Fuzil
	"arifle_SDAR_F",
	"srifle_GM6_F",
	"arifle_SPAR_03_blk_F",
	"arifle_SPAR_01_blk_F",
	"arifle_SPAR_01_GL_blk_F",
	"arifle_SPAR_02_blk_F",

	"rhs_weap_M107",
	"rhs_weap_m16a4",
	"rhs_weap_m16a4_carryhandle_M203",
	"rhs_weap_m249_light_L",
	"rhs_weap_m249_light_S",
	"rhs_weap_m32",
	"rhs_weap_m4a1_carryhandle",
	"rhs_weap_m4a1_carryhandle_m203",
	"rhs_weap_m40a5",
	"rhs_weap_m4a1",
	"rhs_weap_m4a1_m203s",
	"rhs_weap_m24sws",
	"rhs_weap_mk17_STD",

	"LMG_Mk200_black_F",
	"rhs_weap_XM2010",
	"rhs_weap_m24sws",
	"MMG_02_black_F",

	"srifle_DMR_06_olive_F",
	"srifle_DMR_03_F",
	"srifle_DMR_06_hunter_F",
	"srifle_DMR_02_F",

	"rhs_weap_sr25_ec",
	"rhs_weap_mk18",
	"rhs_weap_mk18_m320",
	"SMG_03C_black",

	"SPS_AI_AXMC300_26_DE_F",
	"SPS_AI_AXMC300_26_B_F",
	"SPS_AI_AXMC300_26_ES_F",
	"SPS_AI_AXMC300_26_G_F",
	"SPS_AI_AXMC300_26_PB_F",
	"SPS_AI_AXMC308_26_DE_F",
	"SPS_AI_AXMC308_26_B_F",
	"SPS_AI_AXMC308_26_G_F",
	"SPS_AI_AXMC308_26_PB_F",
	"SPS_AI_AXMC308_26_ES_F",
	"SPS_AI_AXMC338_27_DE_F",
	"SPS_AI_AXMC338_27_B_F",
	"SPS_AI_AXMC338_27_ES_F",
	"SPS_AI_AXMC338_27_G_F",
	"SPS_AI_AXMC338_27_PB_F",

	"hgun_esd_01_F"
];
private _magazines = [
	//Explosivos
	"IEDUrbanSmall_Remote_Mag",
	"ATMine_Range_Mag",
	"SatchelCharge_Remote_Mag",
	"ClaymoreDirectionalMine_Remote_Mag",
	"DemoCharge_Remote_Mag",
	"APERSBoundingMine_Range_Mag",
	"SLAMDirectionalMine_Wire_Mag",
	"APERSMineDispenser_Mag",

	//Granadas
	"ACE_M14",
	"ACE_Chemlight_IR",
	"ACE_Chemlight_UltraHiOrange",
	"ACE_Chemlight_HiWhite",
	"ACE_Chemlight_HiGreen",
	"ACE_Chemlight_HiBlue",
	"ACE_Chemlight_HiRed",
	"B_IR_Grenade",
	"ACE_HandFlare_Green",
	"ACE_HandFlare_Red",
	"ACE_HandFlare_White",
	"SmokeShellYellow",
	"SmokeShellBlue",
	"SmokeShellOrange",
	"SmokeShellGreen",
	"SmokeShellRed",
	"SmokeShell",
	"HandGrenade",
	"rhs_mag_m7a3_cs",
	"ACE_M84",
	"rhs_mag_mk3a2",
	"MiniGrenade",

	//Munição do lançador
	"rhs_fim92_mag",
	"rhs_mag_maaws_HEAT",
	"rhs_mag_maaws_HEDP",
	"rhs_mag_maaws_HE",
	"rhs_mag_smaw_HEDP",
	"rhs_mag_smaw_HEAA",
	"rhs_rpg7_OG7V_mag",
	"rhs_rpg7_PG7V_mag",
	"rhs_rpg7_PG7VL_mag",
	"rhs_rpg7_PG7VR_mag",
	"rhs_rpg7_TBG7V_mag",
	"rhs_rpg7_type69_airburst_mag",
	"MRAWS_HE_F",
	"MRAWS_HEAT_F",
	"MRAWS_HEAT55_F",

	//Munição de Secundaria
	"11Rnd_45ACP_Mag",
	"rhsusf_mag_15Rnd_9x19_FMJ",
	"rhsusf_mag_17Rnd_9x19_FMJ",

	//Munição de Fuzil
	"20Rnd_556x45_UW_mag",
	"5Rnd_127x108_APDS_Mag",
	"5Rnd_127x108_Mag",
	"20Rnd_762x51_Mag",
	"ACE_5Rnd_127x99_Mag",
	"ACE_5Rnd_127x99_API_Mag",
	"150Rnd_556x45_Drum_Mag_F",
	"150Rnd_556x45_Drum_Mag_Tracer_F",
	"rhsusf_200Rnd_556x45_M855_soft_pouch_ucp",
	"rhsusf_100Rnd_556x45_M855_soft_pouch_ucp",
	"rhsusf_mag_6Rnd_M397_HET",
	"rhsusf_mag_6Rnd_M433_HEDP",
	"rhsusf_mag_6Rnd_M585_white",
	"rhsusf_mag_6Rnd_M714_white",
	"rhsusf_mag_6Rnd_M576_Buckshot",
	"200Rnd_65x39_cased_Box",
	"200Rnd_65x39_cased_Box_Tracer",
	"ACE_200Rnd_65x39_cased_Box_Tracer_Dim",
	"30Rnd_9x21_Mag_SMG_02",
	"30Rnd_65x39_caseless_black_mag",
	"30Rnd_65x39_caseless_black_mag_Tracer",
	"10Rnd_762x54_Mag",
	"10Rnd_338_Mag",
	"10Rnd_338_API526_Mag",
	"10Rnd_338_300gr_HPBT_Mag",
	"ACE_10Rnd_762x54_Tracer_mag",
	"rhs_mag_30Rnd_556x45_M855A1_PMAG",
	"rhs_mag_30Rnd_556x45_M855_PMAG_Tracer_Red",
	"rhsusf_5Rnd_300winmag_xm2010",
	"130Rnd_338_Mag",
	"ACE_20Rnd_762x51_Mag_Tracer_Dim",
	"rhsusf_5Rnd_762x51_m118_special_Mag",
	"rhsusf_5Rnd_762x51_m62_Mag",
	"rhsusf_5Rnd_762x51_m993_Mag",
	"rhsusf_10Rnd_762x51_m118_special_Mag",
	"rhsusf_10Rnd_762x51_m62_Mag",
	"rhsusf_10Rnd_762x51_m993_Mag",
	"rhsusf_5Rnd_762x51_AICS_m118_special_Mag",
	"rhsusf_5Rnd_762x51_AICS_m62_Mag",
	"rhsusf_5Rnd_762x51_AICS_m993_Mag",
	"rhsusf_20Rnd_762x51_SR25_m118_special_Mag",
	"rhsusf_20Rnd_762x51_SR25_m62_Mag",
	"rhsusf_20Rnd_762x51_SR25_m993_Mag",
	"rhsusf_20Rnd_762x51_SR25_mk316_special_Mag",
	"rhsusf_5Rnd_762x51_m118_special_Mag",
	"rhsusf_5Rnd_762x51_m993_Mag",
	"rhs_mag_20Rnd_SCAR_762x51_m61_ap",
	"rhs_mag_20Rnd_SCAR_762x51_m118_special",
	"rhs_mag_20Rnd_SCAR_762x51_m62_tracer",
	"rhs_mag_20Rnd_SCAR_762x51_m80_ball",
	"rhs_mag_20Rnd_SCAR_762x51_m80a1_epr",
	"rhs_mag_20Rnd_SCAR_762x51_mk316_special",
	"50Rnd_570x28_SMG_03",
	"SPS_AI_AXMC300_26_DE_F",
	"SPS_AI_AXMC_762x67_Mk248_Mod_0_Mag",
	"SPS_AI_AXMC_762x67_Mk248_Mod_1_Mag",
	"SPS_AI_AXMC_762x67_Berger_Hybrid_OTM_IR_Mag",
	"SPS_AI_AXMC_762x67_Berger_Hybrid_OTM_Tracer_Mag",
	"7Rnd_408_Mag",
	"ACE_7Rnd_408_305gr_Mag",
	"SPS_AI_AXMC_762x51mm_M80A1_EPR_IR_Mag",
	"SPS_AI_AXMC_762x51_Berger_JOTM_Mag",
	"SPS_AI_AXMC_762x51_Berger_JOTM_Mag_IR",
	"SPS_AI_AXMC_762x51_Berger_JOTM_Mag_Tracer",
	"SPS_AI_AXMC_762x51mm_M80_Mag",
	"SPS_AI_AXMC_762x51mm_M80A1_EPR_Mag",
	"SPS_AI_AXMC_762x51mm_M80A1_EPR_Tracer_Mag",
	"SPS_AI_AXMC_762x51_M118LR_Mag",
	"SPS_AI_AXMC_762x51_M993_AP_Mag",
	"SPS_AI_AXMC_762x51_Mk316_Mod_0_Mag",
	"SPS_AI_AXMC_762x51_Mk319_Mod_0_Mag",
	"SPS_AI_AXMC_338_300gr_HPBT_Mag",
	"SPS_AI_AXMC_338_Mag",
	"SPS_AI_AXMC_338_250gr_Naturalis_Mag",
	"SPS_AI_AXMC_338_250gr_Naturalis_IR_Mag",
	"SPS_AI_AXMC_338_250gr_Naturalis_Tracer_Mag",
	"SPS_AI_AXMC_338_300gr_Berger_Mag",
	"SPS_AI_AXMC_338_300gr_Berger_Mag_IR",
	"SPS_AI_AXMC_338_300gr_Berger_Mag_Tracer",
	"SPS_AI_AXMC_338_300gr_Scenar_Mag",
	"SPS_AI_AXMC_338_300gr_Scenar_IR_Mag",
	"SPS_AI_AXMC_338_300gr_Scenar_Tracer_Mag",
	"SPS_AI_AXMC_338_API526_Mag",

	//Munição de Secundaria de Fuzil
	"1Rnd_SmokeYellow_Grenade_shell",
	"1Rnd_SmokeGreen_Grenade_shell",
	"1Rnd_Smoke_Grenade_shell",
	"1Rnd_SmokeRed_Grenade_shell",
	"1Rnd_HE_Grenade_shell",
	"UGL_FlareWhite_F",
	"UGL_FlareCIR_F",
	"UGL_FlareRed_F",
	"UGL_FlareGreen_F",
	"ACE_HuntIR_M203",
	"ACE_40mm_Flare_ir",
	"Laserbatteries"
];
private _items = [
	//Cabeça
	"rhsusf_ach_helmet_DCU",
	"rhsusf_ach_helmet_DCU_early",
	"rhsusf_ach_helmet_M81",
	"rhsusf_ach_helmet_ocp",
	"rhsusf_ach_helmet_ucp",
	"rhsusf_ach_bare_tan",
	"rhsusf_ach_bare",

	"H_Bandanna_sand",
	"H_Bandanna_khk",
	"H_Bandanna_camo",
	"H_Bandanna_mcamo",
	"H_Bandanna_gry",

	"H_PilotHelmetFighter_B",
	"H_PilotHelmetHeli_B",

	"H_Booniehat_tan",
	"H_Booniehat_oli",
	"H_Booniehat_khk",
	"H_Booniehat_mcamo",
	"H_Booniehat_tna_F",

	"rhsusf_opscore_aor1_pelt",
	"rhsusf_opscore_aor2_pelt",
	"rhsusf_opscore_bk_pelt",
	"rhsusf_opscore_coy_cover_pelt",
	"rhsusf_opscore_fg_pelt",
	"rhsusf_opscore_mc_cover_pelt",
	"rhsusf_opscore_mc_pelt",
	"rhsusf_opscore_paint_pelt",
	"rhsusf_opscore_rg_cover_pelt",
	"rhsusf_opscore_ut_pelt",
	"rhsusf_opscore_mar_fg_pelt",
	"rhsusf_opscore_mar_ut_pelt",

	//Uniforme
	"U_B_Wetsuit",
	"rhs_uniform_g3_aor2",
	"rhs_uniform_g3_blk",
	"rhs_uniform_g3_m81",
	"rhs_uniform_g3_mc",
	"rhs_uniform_g3_rgr",
	"rhs_uniform_g3_tan",

	"U_B_FullGhillie_ard",
	"U_B_FullGhillie_lsh",
	"U_B_FullGhillie_sard",
	"U_B_T_FullGhillie_tna_F",
	"U_B_PilotCoveralls",
	"U_B_HeliPilotCoveralls",

	"rhsusf_spcs_ucp",
	"rhsusf_spcs_ucp_crewman",
	"rhsusf_spcs_ucp_grenadier",
	"rhsusf_spcs_ucp_teamleader",
	"rhsusf_spcs_ucp_teamleader_alt",
	"rhsusf_spcs_ucp_squadleader",
	"rhsusf_spcs_ucp_sniper",
	"rhsusf_spcs_ucp_saw",
	"rhsusf_spcs_ucp_rifleman",
	"rhsusf_spcs_ucp_rifleman_alt",
	"rhsusf_spcs_ucp_machinegunner",
	"rhsusf_spcs_ucp_medic",

	"rhsusf_spcs_ocp",
	"rhsusf_spcs_ocp_crewman",
	"rhsusf_spcs_ocp_grenadier",
	"rhsusf_spcs_ocp_teamleader",
	"rhsusf_spcs_ocp_teamleader_alt",

	"rhsusf_spcs_ocp",
	"rhsusf_spcs_ocp_crewman",
	"rhsusf_spcs_ocp_grenadier",
	"rhsusf_spcs_ocp_teamleader",
	"rhsusf_spcs_ocp_teamleader_alt",
	"rhsusf_spcs_ocp_squadleader",
	"rhsusf_spcs_ocp_sniper",
	"rhsusf_spcs_ocp_saw",
	"rhsusf_spcs_ocp_rifleman",
	"rhsusf_spcs_ocp_rifleman_alt",
	"rhsusf_spcs_ocp_machinegunner",
	"rhsusf_spcs_ocp_medic",

	"rhsusf_plateframe_sapi",
	"rhsusf_plateframe_rifleman",
	"rhsusf_plateframe_grenadier",
	"rhsusf_plateframe_machinegunner",
	"rhsusf_plateframe_marksman",
	"rhsusf_plateframe_medic",
	"rhsusf_plateframe_teamleader",

	"V_PlateCarrier1_blk",
	"V_PlateCarrier1_tna_F",
	"V_PlateCarrier1_rgr",
	"V_PlateCarrier1_rgr_noflag_F",
	"V_PlateCarrierIA1_dgtl",

	//Rosto
	"G_Balaclava_oli",
	"G_Balaclava_blk",
	"G_Bandanna_oli",
	"G_Bandanna_khk",
	"G_Bandanna_blk",
	"G_B_Diving",
	"G_AirPurifyingRespirator_01_F",
	"G_RegulatorMask_F",
	"G_Aviator",
	"G_Diving",

	//NV
	"rhsusf_ANPVS_14",
	"rhsusf_ANPVS_15",
	"ACE_NVG_Gen1",
	"A3_GPNVG18_BLK_F",

	//Binoculos
	"Binocular",
	"Rangefinder",
	"ACE_Vector",
	"Laserdesignator",

	//Outros Equips
	"ItemMap",
	"tf_anprc152",
	"ItemCompass",
	"ItemWatch",
	"ACE_Altimeter",
	"ACE_CableTie",
	"ACE_fieldDressing",
	"ACE_elasticBandage",
	"ACE_quikclot",
	"ACE_packingBandage",
	"ACE_adenosine",
	"ACE_morphine",
	"ACE_epinephrine",
	"ACE_wirecutter",
	"MineDetector",
	"ACE_EntrenchingTool",
	"ACE_MapTools",
	"ACE_microDAGR",
	"ACE_Kestrel4500",
	"ACE_surgicalKit",
	"ACE_DefusalKit",
	"ToolKit",
	"ACE_personalAidKit",
	"ACE_Clacker",
	"ACE_Flashlight_XL50",
	"ACE_IR_Strobe_Item",
	"ACE_plasmaIV",
	"ACE_plasmaIV_500",
	"ACE_EarPlugs",
	"ACE_bodyBag",
	"ACE_bloodIV",
	"ACE_bloodIV_500",
	"ACE_salineIV",
	"ACE_salineIV_500",
	"ACE_SpraypaintGreen",
	"ACE_SpraypaintRed",
	"ACE_RangeCard",
	"ACE_tourniquet",
	"ACE_Tripod",
	"ACE_splint",
	"ACE_SpottingScope",
	"ACE_HuntIR_monitor",
	"ACE_ATragMX",
	"ACE_Kestrel4500",
	"ACE_rope12",
	"ACE_rope15",
	"ACE_rope18",
	"ACE_rope27",
	"ACE_rope36",
	"ACE_DAGR",

	//Acessorios de Secundaria
	"muzzle_snds_acp",
	"optic_mrd_black",
	"optic_mrd",
	"muzzle_snds_l",
	"rhsusf_acc_omega9k",

	//Acessorios de Fuzil
	"bipod_01_f_blk",
	"rhsusf_acc_anpeq15a",
	"ace_acc_pointer_green",
	"muzzle_snds_b",
	"muzzle_snds_m",
	"muzzle_snds_h",
	"muzzle_snds_338_black",
	"rhsusf_acc_nt4_black",
	"rhsusf_acc_saw_bipod",
	"rhsusf_acc_anpeq15_bk",
	"rhsusf_acc_m2010s_wd",
	"rhsusf_acc_harris_bipod",
	"rhsusf_acc_anpeq15side_bk",
	"acc_pointer_ir",
	"acc_flashlight",
	"rhsusf_acc_anpeq15_bk_light",
	"rhsusf_acc_anpeq15_bk_light",
	"muzzle_snds_338_black",
	"rhsusf_acc_m24_silencer_black",
	"rhsusf_acc_harris_swivel",
	"muzzle_snds_570",
	"muzzle_snds_sps_ai_b_h",
	"muzzle_snds_sps_ai_de_h",
	"muzzle_snds_sps_ai_es_h",
	"muzzle_snds_sps_ai_g_h",
	"muzzle_snds_sps_ai_pb_h",
	"ace_muzzle_mzls_338",
	"muzzle_snds_338_sand",
	"muzzle_snds_338_black",
	"muzzle_snds_338_green",

	//Scope para Fuzil
	"optic_holosight_blk_f",
	"optic_hamr",
	"optic_ams",
	"optic_lrps",
	"rhsusf_acc_acog",
	"rhsusf_acc_acog_usmc",
	"rhsusf_acc_acog2",
	"rhsusf_acc_acog2_usmc",
	"ace_optic_hamr_pip",
	"ace_optic_hamr_2d",
	"ace_optic_lrps_pip",
	"ace_optic_lrps_2d",
	"ace_optic_sos_pip",
	"ace_optic_sos_2d",
	"ace_optic_mrco_2d",
	"rhsusf_acc_m8541_low",
	"rhsusf_acc_premier_anpvs27",
	"rhsusf_acc_acog_rmr",

	//Survival
	"ACE_Canteen_Empty",
	"ACE_MRE_BeefStew",
	"ACE_key_west",
	"ItemGPS",

	// NOVO Equips MELO
	"Black_Black_Camo",
	"Black_Black_SS_Camo",
	"Black_Crye_SS_Camo",
	"black_Crye2_Camo",
	"Arid_Arid_Camo",
	"Arid_Arid_SS_Camo",
	"ARD_opscore_2",
	"BLK_opscore_2",

	"dr_ARDlbt_br",
	"dr_ARDlbt_mg", 
	"dr_ARDlbt_op", 
	"dr_BLKfacp_op",
	

	"VSM_MulticamTropic_Crye_Camo", 
	"VSM_MulticamTropic_OPS_2",

	"VSM_FAPC_Breacher_MulticamTropic", 
	"VSM_FAPC_MG_MulticamTropic",
	"VSM_FAPC_Operator_MulticamTropic",
	"VSM_RAV_operator_MulticamTropic",
	
	//EPI
	"H_Construction_basic_white_F",
	"U_C_WorkerCoveralls",
	"B_Messenger_Gray_F",

	//HMEquips
	"DroneDetector",
	"muzzle_antenna_03_f",
	"muzzle_antenna_02_f",
	"muzzle_antenna_01_f",
	"ChemicalDetector_01_watch_F",
	
	"ACE_key_west",
	
	"V_RebreatherB"
];
private _backpacks = [
	"tf_rt1523g_black",
	"B_LegStrapBag_black_F",
	"B_Kitbag_tan",
	"B_Kitbag_cbr",
	"B_Kitbag_mcamo",
	"B_Kitbag_sgg",
	"B_Kitbag_rgr",
	"B_SCBA_01_F",
	"B_Carryall_mcamo",
	"B_AssaultPack_cbr",
	"B_AssaultPack_mcamo",
	"B_AssaultPack_blk",
	"B_AssaultPack_tna_F",
	"B_AssaultPack_rgr",
	"B_FieldPack_khk",
	"B_FieldPack_cbr",
	"B_FieldPack_blk",
	"B_FieldPack_oli",
	"B_FieldPack_ghex_F",
	"B_Carryall_khk",
	"B_Carryall_cbr",
	"B_Carryall_oli",
	"B_Carryall_ghex_F",
	"rhsusf_assault_eagleaiii_coy",
	"rhsusf_assault_eagleaiii_ocp",
	"rhsusf_assault_eagleaiii_ucp",
	"VSM_MulticamTropic_carryall",
	"VSM_MulticamTropic_Backpack_Compact",
	"VSM_MulticamTropic_Backpack_Kitbag",
	"Arid_Carryall",
	"Arid_Backpack_Compact",
	"Arid_Carryall"
];

btc_custom_arsenal = [_weapons, _magazines, _items, _backpacks];

/*
    Here you can specify which equipment is loaded on player connection.
*/

private _radio = ["tf_anprc152", "ACRE_PRC148"] select (isClass(configFile >> "cfgPatches" >> "acre_main"));
private _uniforms = [];
private _vests = [];
private _helmets = [];
private _hoods = [];
private _laserdesignators = [];
private _night_visions = [];
private _weapons = [];
private _weapons_machineGunner = [];
private _weapons_sniper = [];
private _bipods = [];
private _pistols = [];
private _launcher_AT = [];
private _launcher_AA = [];
private _backpacks = [];
private _backpacks_big = [];


btc_arsenal_loadout = [_uniforms, _vests, _helmets, _hoods, _laserdesignators, _night_visions, _weapons, _weapons_sniper, _weapons_machineGunner, _bipods, _pistols, _launcher_AT, _launcher_AA, _backpacks, _backpacks_big, [_radio, _radio, _radio, _radio]];
