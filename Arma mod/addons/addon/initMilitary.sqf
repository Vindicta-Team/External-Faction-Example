_array = [];

_array resize T_SIZE;

_array set [T_NAME, "MY_FACTION"];  // Unique faction name, technical, not displayed
_array set [T_DESCRIPTION, "Example of an external faction from an addon."];   // Template display description
_array set [T_DISPLAY_NAME, "External Faction Example"]; // Faction displayed name
_array set [T_FACTION, T_FACTION_military]; // T_FACTION_Military, T_FACTION_Police, T_FACTION_Civ
_array set [T_REQUIRED_ADDONS, ["A3_Characters_F"]]; // Addons required for this faction


/* Infantry unit classes */
// Override these, or comment out if they are not needed
_inf = [];
_inf resize T_INF_SIZE;
_inf set [T_INF_default,  ["B_Soldier_F"]];	// Must not be a loadout! //Default infantry if nothing is found

_inf set [T_INF_SL, ["TheSuperDude", "TheHunterDude"]]; // = 1
_inf set [T_INF_TL, ["TheSuperDude", "TheHunterDude"]]; // = 2
_inf set [T_INF_officer, ["TheSuperDude", "TheHunterDude"]]; // = 3
_inf set [T_INF_GL, ["TheSuperDude", "TheHunterDude"]]; // = 4
_inf set [T_INF_rifleman, ["TheSuperDude", "TheHunterDude"]]; // = 5
_inf set [T_INF_marksman, ["TheSuperDude", "TheHunterDude"]]; // = 6
_inf set [T_INF_sniper, ["TheSuperDude", "TheHunterDude"]]; // = 7
_inf set [T_INF_spotter, ["TheSuperDude", "TheHunterDude"]]; // = 8
_inf set [T_INF_exp, ["TheSuperDude", "TheHunterDude"]]; // = 9
_inf set [T_INF_ammo, ["TheSuperDude", "TheHunterDude"]]; // = 10
_inf set [T_INF_LAT, ["TheSuperDude", "TheHunterDude"]]; // = 11
_inf set [T_INF_AT, ["TheSuperDude", "TheHunterDude"]]; // = 12
_inf set [T_INF_AA, ["TheSuperDude", "TheHunterDude"]]; // = 13
_inf set [T_INF_LMG, ["TheSuperDude", "TheHunterDude"]]; // = 14
_inf set [T_INF_HMG, ["TheSuperDude", "TheHunterDude"]]; // = 15
_inf set [T_INF_medic, ["TheSuperDude", "TheHunterDude"]]; // = 16
_inf set [T_INF_engineer, ["TheSuperDude", "TheHunterDude"]]; // = 17 
_inf set [T_INF_crew, ["TheSuperDude", "TheHunterDude"]]; // = 18
_inf set [T_INF_crew_heli, ["TheSuperDude", "TheHunterDude"]]; // = 19
_inf set [T_INF_pilot, ["TheSuperDude", "TheHunterDude"]]; // = 20
_inf set [T_INF_pilot_heli, ["TheSuperDude", "TheHunterDude"]]; // = 21
_inf set [T_INF_survivor, ["TheSuperDude", "TheHunterDude"]]; // = 22
_inf set [T_INF_unarmed, ["TheSuperDude", "TheHunterDude"]]; // = 23
/* Recon unit classes */
_inf set [T_INF_recon_TL, ["TheSuperDude", "TheHunterDude"]]; // = 24
_inf set [T_INF_recon_rifleman, ["TheSuperDude", "TheHunterDude"]]; // = 25
_inf set [T_INF_recon_medic, ["TheSuperDude", "TheHunterDude"]]; // = 26
_inf set [T_INF_recon_exp, ["TheSuperDude", "TheHunterDude"]]; // = 27
_inf set [T_INF_recon_LAT, ["TheSuperDude", "TheHunterDude"]]; // = 28
_inf set [T_INF_recon_marksman, ["TheSuperDude", "TheHunterDude"]]; // = 29
_inf set [T_INF_recon_JTAC, ["TheSuperDude", "TheHunterDude"]]; // = 30
/* Diver unit classes */
_inf set [T_INF_diver_TL, ["B_diver_TL_F"]]; // = 31
_inf set [T_INF_diver_rifleman, ["B_diver_F"]]; // = 32
_inf set [T_INF_diver_exp, ["B_diver_exp_F"]]; // = 33


/* Vehicle classes */
// Override these, or comment out if they are not needed
_veh = []; _veh resize T_VEH_SIZE;

_veh set [T_VEH_DEFAULT, ["B_LSV_01_unarmed_F"]]; // = 0 Default if nothing found

_veh set [T_VEH_car_unarmed, ["B_LSV_01_unarmed_F"]]; // = 1 – REQUIRED
_veh set [T_VEH_car_armed, ["B_LSV_01_AT_F", "B_LSV_01_armed_F"]]; // = 2
_veh set [T_VEH_MRAP_unarmed, ["B_MRAP_01_F"]]; // = 3 – REQUIRED
_veh set [T_VEH_MRAP_HMG, ["B_MRAP_01_hmg_F"]]; // = 4 – REQUIRED
_veh set [T_VEH_MRAP_GMG, ["B_MRAP_01_gmg_F"]]; // = 5 – REQUIRED
_veh set [T_VEH_IFV, ["B_APC_Wheeled_01_cannon_F", "B_APC_Tracked_01_CRV_F"]]; // = 6 – REQUIRED
_veh set [T_VEH_APC, ["B_APC_Tracked_01_rcws_F"]]; // = 7 – REQUIRED
_veh set [T_VEH_MBT, ["B_MBT_01_cannon_F", "B_MBT_01_TUSK_F", "B_AFV_Wheeled_01_cannon_F", "B_AFV_Wheeled_01_up_cannon_F"]]; // = 8 – REQUIRED
_veh set [T_VEH_MRLS, ["B_MBT_01_mlrs_F"]]; // = 9
_veh set [T_VEH_SPA, ["B_MBT_01_arty_F"]]; // = 10
_veh set [T_VEH_SPAA, ["B_APC_Tracked_01_AA_F"]]; // = 11
_veh set [T_VEH_stat_HMG_high, ["B_HMG_01_high_F"]]; // = 12 – REQUIRED
_veh set [T_VEH_stat_GMG_high, ["B_GMG_01_high_F"]]; // = 13 – Replaced by T_VEH_stat_HMG_high if not set
_veh set [T_VEH_stat_HMG_low, ["B_HMG_01_F"]]; // = 14
_veh set [T_VEH_stat_GMG_low, ["B_GMG_01_F"]]; // = 15
_veh set [T_VEH_stat_AA, ["B_static_AA_F"]]; // = 16
_veh set [T_VEH_stat_AT, ["B_static_AT_F", "ace_dragon_staticAssembled"]]; // = 17
_veh set [T_VEH_stat_mortar_light, ["B_Mortar_01_F"]]; // = 18 - REQUIRED
//_veh set [T_VEH_stat_mortar_heavy, ["B_Mortar_01_F"]]; // = 19 – UNUSED
_veh set [T_VEH_heli_light, ["B_Heli_Light_01_F"]]; // = 20
_veh set [T_VEH_heli_heavy, ["B_Heli_Transport_01_F"]]; // = 21
_veh set [T_VEH_heli_cargo, ["B_Heli_Transport_03_unarmed_F"]]; // = 22
_veh set [T_VEH_heli_attack, ["B_Heli_Attack_01_dynamicLoadout_F"]]; // = 23
_veh set [T_VEH_plane_attack, ["B_Plane_CAS_01_dynamicLoadout_F"]]; // = 24
_veh set [T_VEH_plane_fighter , ["B_Plane_Fighter_01_F"]]; // = 25
//_veh set [T_VEH_plane_cargo, [" "]]; // = 26 – UNUSED
//_veh set [T_VEH_plane_unarmed, [" "]]; // = 27 – UNUSED
//_veh set [T_VEH_plane_VTOL, [" "]]; // = 28 – UNUSED
_veh set [T_VEH_boat_unarmed, ["B_Boat_Transport_01_F"]]; // = 29
_veh set [T_VEH_boat_armed, ["B_Boat_Armed_01_minigun_F"]]; // = 30
_veh set [T_VEH_personal, ["B_Quadbike_01_F"]]; // = 31
_veh set [T_VEH_truck_inf, ["B_Truck_01_transport_F", "B_Truck_01_covered_F"]]; // = 32 – REQUIRED
_veh set [T_VEH_truck_cargo, ["B_Truck_01_transport_F"]]; // = 33
_veh set [T_VEH_truck_ammo, ["B_Truck_01_ammo_F"]]; // = 34 – REQUIRED
_veh set [T_VEH_truck_repair, ["B_Truck_01_Repair_F"]]; // = 35
_veh set [T_VEH_truck_medical , ["B_Truck_01_medical_F"]]; // = 36
_veh set [T_VEH_truck_fuel, ["B_Truck_01_fuel_F"]]; // = 37
_veh set [T_VEH_submarine, ["B_SDV_01_F"]]; // = 38


/* Drone classes */
_drone = []; _drone resize T_DRONE_SIZE;
_drone set [T_DRONE_SIZE-1, nil];
_veh set [T_DRONE_DEFAULT , ["B_UAV_01_F"]];

_drone set [T_DRONE_UGV_unarmed, ["B_UGV_01_F"]]; // = 0
_drone set [T_DRONE_UGV_armed, ["B_UGV_01_rcws_F"]]; // = 1
_drone set [T_DRONE_plane_attack, ["B_UAV_02_dynamicLoadout_F"]]; // = 2
//_drone set [T_DRONE_plane_unarmed, ["B_UAV_02_dynamicLoadout_F"]]; // = 3 – UNUSED
_drone set [T_DRONE_heli_attack, ["B_T_UAV_03_dynamicLoadout_F"]]; // = 4
_drone set [T_DRONE_quadcopter, ["B_UAV_01_F"]]; // = 5
_drone set [T_DRONE_designator, ["B_Static_Designator_01_F"]]; // = 6
_drone set [T_DRONE_stat_HMG_low, ["B_HMG_01_A_F"]]; // = 7
_drone set [T_DRONE_stat_GMG_low, ["B_GMG_01_A_F"]]; // = 8
//_drone set [T_DRONE_stat_AA, ["B_SAM_System_03_F"]]; // = 9 – UNUSED


/* Cargo classes */
_cargo = +(tDefault select T_CARGO); // These are copied from default

// Note that we have increased their capacity through the addon, other boxes are going to have standard capacity
//_cargo set [T_CARGO_default,	["I_supplyCrate_F"]];
//_cargo set [T_CARGO_box_small,	["Box_Syndicate_Ammo_F"]];
//_cargo set [T_CARGO_box_medium,	["I_supplyCrate_F"]];
//_cargo set [T_CARGO_box_big,	["B_CargoNet_01_ammo_F"]];


/* Group templates */
_group = +(tDefault select T_GROUP); // Copied from default, most likely you don't want to modify them

//_group set [T_GROUP_SIZE-1, nil];
//_group set [T_GROUP_DEFAULT, [[[T_INF, T_INF_TL], [T_INF, T_INF_LMG], [T_INF, T_INF_rifleman], [T_INF, T_INF_GL]]]];

//_group set [T_GROUP_inf_sentry,			[[[T_INF, T_INF_TL], [T_INF, T_INF_rifleman]]]];
//_group set [T_GROUP_inf_fire_team,		[[[T_INF, T_INF_TL], [T_INF, T_INF_LMG], [T_INF, T_INF_rifleman], [T_INF, T_INF_GL]]]];
//_group set [T_GROUP_inf_AA_team,		[[[T_INF, T_INF_TL], [T_INF, T_INF_AA], [T_INF, T_INF_AA], [T_INF, T_INF_ammo]]]];
//_group set [T_GROUP_inf_AT_team,		[[[T_INF, T_INF_TL], [T_INF, T_INF_AT], [T_INF, T_INF_AT], [T_INF, T_INF_ammo]]]];
//_group set [T_GROUP_inf_rifle_squad,	[[[T_INF, T_INF_SL], 	[T_INF, T_INF_TL], [T_INF, T_INF_LMG], [T_INF, T_INF_GL], [T_INF, T_INF_LAT], 			[T_INF, T_INF_TL], [T_INF, T_INF_GL], [T_INF, T_INF_marksman], [T_INF, T_INF_medic]]]];
//_group set [T_GROUP_inf_assault_squad,	[[[T_INF, T_INF_SL], 	[T_INF, T_INF_exp], [T_INF, T_INF_exp], [T_INF, T_INF_GL], [T_INF, T_INF_LMG], 			[T_INF, T_INF_GL], [T_INF, T_INF_LMG],[T_INF, T_INF_engineer], [T_INF, T_INF_engineer]]]];
//_group set [T_GROUP_inf_weapons_squad,	[[[T_INF, T_INF_SL], 	[T_INF, T_INF_HMG], [T_INF, T_INF_ammo], [T_INF, T_INF_HMG], [T_INF, T_INF_ammo],		[T_INF, T_INF_TL], [T_INF, T_INF_AT], [T_INF, T_INF_ammo], [T_INF, T_INF_LAT]]]];
//_group set [T_GROUP_inf_sniper_team,	[[[T_INF, T_INF_sniper], [T_INF, T_INF_spotter]]]];
//_group set [T_GROUP_inf_officer,		[[[T_INF, T_INF_officer], [T_INF, T_INF_rifleman], [T_INF, T_INF_rifleman]]]];

//_group set [T_GROUP_inf_recon_patrol,	[[[T_INF, T_INF_recon_TL], [T_INF, T_INF_recon_rifleman], [T_INF, T_INF_recon_marksman], [T_INF, T_INF_recon_LAT]]]];
//_group set [T_GROUP_inf_recon_sentry,	[[[T_INF, T_INF_recon_TL], [T_INF, T_INF_recon_LAT] ]]];
//_group set [T_GROUP_inf_recon_squad,	[[[T_INF, T_INF_recon_TL], [T_INF, T_INF_recon_rifleman], [T_INF, T_INF_recon_marksman], [T_INF, T_INF_recon_medic], [T_INF, T_INF_recon_LAT],  [T_INF, T_INF_recon_JTAC], [T_INF, T_INF_recon_exp]]]];
//_group set [T_GROUP_inf_recon_team,		[[[T_INF, T_INF_recon_TL], [T_INF, T_INF_recon_rifleman], [T_INF, T_INF_recon_marksman], [T_INF, T_INF_recon_LAT], [T_INF, T_INF_recon_exp], [T_INF, T_INF_recon_medic]]]];

/* Set arrays */
_array set [T_INF, _inf];
_array set [T_VEH, _veh];
_array set [T_DRONE, _drone];
_array set [T_CARGO, _cargo];
_array set [T_GROUP, _group];

_array;