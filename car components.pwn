
#include <open.mp>
#include <izcmd>
#include <easyDialog>

enum complist
{
	compid,
	compmdlname[30],
	comppart[30],
	comptype[30],
	compcars[50],
	compcost
};

new componentlist[][complist] = {
	//{ID, Model Name, Part/Slot, Type, Cars, $Cost} 
	{1000, "spl_b_mar_m", "Spoiler", "Pro", "Certain Transfender cars", 400},
    {1001, "spl_b_bab_m", "Spoiler", "Win", "Certain Transfender cars", 550},
    {1002, "spl_b_bar_m", "Spoiler", "Drag", "Certain Transfender cars", 200},
    {1003, "spl_b_mab_m", "Spoiler", "Alpha", "Certain Transfender cars", 250},
    {1004, "bnt_b_sc_m", "Hood", "Champ Scoop", "Certain Transfender cars", 100},
    {1005, "bnt_b_sc_l", "Hood", "Fury Scoop", "Certain Transfender cars", 150},
    {1006, "rf_b_sc_r", "Roof", "Roof Scoop", "Certain Transfender cars", 80},
    {1007, "wg_l_b_ssk", "Sideskirt", "Right Sideskirt", "Certain Transfender cars", 500},
    {1008, "nto_b_l", "Nitro", "5 times", "Most cars, Most planes and Most Helicopters", 500},
    {1009, "nto_b_s", "Nitro", "2 times", "Most cars, Most planes and Most Helicopters", 200},
    {1010, "nto_b_tw", "Nitro", "10 times", "Most cars, Most planes and Most Helicopters", 1000},
    {1011, "bnt_b_sc_p_m", "Hood", "Race Scoop", "Certain Transfender cars", 220},
    {1012, "bnt_b_sc_p_l", "Hood", "Worx Scoop", "Certain Transfender cars", 250},
    {1013, "lgt_b_rspt", "Lamps", "Round Fog", "Certain Transfender cars", 100},
    {1014, "spl_b_bar_l", "Spoiler", "Champ", "Certain Transfender cars", 400},
    {1015, "spl_b_bbr_l", "Spoiler", "Race", "Certain Transfender cars", 500},
    {1016, "spl_b_bbr_m", "Spoiler", "Worx", "Certain Transfender cars", 200},
    {1017, "wg_r_b_ssk", "Sideskirt", "Left Sideskirt", "Certain Transfender cars", 500},
    {1018, "exh_b_ts", "Exhaust", "Upswept", "Most cars", 350},
    {1019, "exh_b_t", "Exhaust", "Twin", "Most cars", 300},
    {1020, "exh_b_l", "Exhaust", "Large", "Most cars", 250},
    {1021, "exh_b_m", "Exhaust", "Medium", "Most cars", 200},
    {1022, "exh_b_s", "Exhaust", "Small", "Most cars", 150},
    {1023, "spl_b_bbb_m", "Spoiler", "Fury", "Certain Transfender cars", 350},
    {1024, "lgt_b_sspt", "Lamps", "Square Fog", "Certain Transfender cars", 50},
    {1025, "wheel_or1", "Wheels", "Offroad", "Certain Transfender cars", 1000},
    {1026, "wg_l_a_s", "Sideskirt", "Right Alien Sideskirt", "Sultan", 480},
    {1027, "wg_r_a_s", "Sideskirt", "Left Alien Sideskirt", "Sultan", 480},
    {1028, "exh_a_s", "Exhaust", "Alien", "Sultan", 770},
    {1029, "exh_c_s", "Exhaust", "X-Flow", "Sultan", 680},
    {1030, "wg_r_c_s", "Sideskirt", "Left X-Flow Sideskirt", "Sultan", 370},
    {1031, "wg_l_c_s", "Sideskirt", "Right X-Flow Sideskirt", "Sultan", 370},
    {1032, "rf_a_s", "Roof", "Alien Roof Vent", "Sultan", 170},
    {1033, "rf_c_s", "Roof", "X-Flow Roof Vent", "Sultan", 120},
    {1034, "exh_a_l", "Exhaust", "Alien", "Elegy", 790},
    {1035, "rf_c_l", "Roof", "X-Flow Roof Vent", "Elegy", 150},
    {1036, "wg_l_a_l", "SideSkirt", "Right Alien Sideskirt", "Elegy", 500},
    {1037, "exh_c_l", "Exhaust", "X-Flow", "Elegy", 690},
    {1038, "rf_a_l", "Roof", "Alien Roof Vent", "Elegy", 190},
    {1039, "wg_l_c_l", "SideSkirt", "Left X-Flow Sideskirt", "Elegy", 390},
    {1040, "wg_r_a_l", "SideSkirt", "Left Alien Sideskirt", "Elegy", 500},
    {1041, "wg_r_c_l", "SideSkirt", "Right X-Flow Sideskirt", "Elegy", 390},
    {1042, "wg_l_lr_br1", "SideSkirt", "Right Chrome Sideskirt", "Broadway", 1000},
    {1043, "exh_lr_br2", "Exhaust", "Slamin", "Broadway", 500},
    {1044, "exh_lr_br1", "Exhaust", "Chrome", "Broadway", 500},
    {1045, "exh_c_f", "Exhaust", "X-Flow", "Flash", 510},
    {1046, "exh_a_f", "Exhaust", "Alien", "Flash", 710},
    {1047, "wg_l_a_f", "SideSkirt", "Right Alien Sideskirt", "Flash", 670},
    {1048, "wg_l_c_f", "SideSkirt", "Right X-Flow Sideskirt", "Flash", 530},
    {1049, "spl_a_f_r", "Spoiler", "Alien", "Flash", 810},
    {1050, "spl_c_f_r", "Spoiler", "X-Flow", "Flash", 620},
    {1051, "wg_r_a_f", "SideSkirt", "Left Alien Sideskirt", "Flash", 670},
    {1052, "wg_r_c_f", "SideSkirt", "Left X-Flow Sideskirt", "Flash", 530},
    {1053, "rf_c_f", "Roof", "X-Flow", "Flash", 130},
    {1054, "rf_a_f", "Roof", "Alien", "Flash", 210},
    {1055, "rf_a_st", "Roof", "Alien", "Stratum", 230},
    {1056, "wg_l_a_st", "Sideskirt", "Right Alien Sideskirt", "Stratum", 520},
    {1057, "wg_l_c_st", "Sideskirt", "Right X-Flow Sideskirt", "Stratum", 430},
    {1058, "spl_a_st_r", "Spoiler", "Alien", "Stratum", 620},
    {1059, "exh_c_st", "Exhaust", "X-Flow", "Stratum", 720},
    {1060, "spl_c_st_r", "Spoiler", "X-Flow", "Stratum", 530},
    {1061, "rf_c_st", "Roof", "X-Flow", "Stratum", 180},
    {1062, "wg_r_a_st", "Sideskirt", "Left Alien Sideskirt", "Stratum", 550},
    {1063, "wg_r_c_st", "Sideskirt", "Left X-Flow Sideskirt", "Stratum", 430},
    {1064, "exh_a_st", "Exhaust", "Alien", "Stratum", 830},
    {1065, "exh_a_j", "Exhaust", "Alien", "Jester", 850},
    {1066, "exh_c_j", "Exhaust", "X-Flow", "Jester", 750},
    {1067, "rf_a_j", "Roof", "Alien", "Jester", 250},
    {1068, "rf_c_j", "Roof", "X-Flow", "Jester", 200},
    {1069, "wg_l_a_j", "Sideskirt", "Right Alien Sideskirt", "Jester", 550},
    {1070, "wg_l_c_j", "Sideskirt", "Right X-Flow Sideskirt", "Jester", 450},
    {1071, "wg_r_a_j", "Sideskirt", "Left Alien Sideskirt", "Jester", 550},
    {1072, "wg_r_c_j", "Sideskirt", "Left X-Flow Sideskirt", "Jester", 450},
    {1073, "wheel_sr6", "Wheels", "Shadow", "Most cars", 1100},
    {1074, "wheel_sr3", "Wheels", "Mega", "Most cars", 1030},
    {1075, "wheel_sr2", "Wheels", "Rimshine", "Most cars", 980},
    {1076, "wheel_lr4", "Wheels", "Wires", "Most cars", 1560},
    {1077, "wheel_lr1", "Wheels", "Classic", "Most cars", 1620},
    {1078, "wheel_lr3", "Wheels", "Twist", "Most cars", 1200},
    {1079, "wheel_sr1", "Wheels", "Cutter", "Most cars", 1030},
    {1080, "wheel_sr5", "Wheels", "Switch", "Most cars", 900},
    {1081, "wheel_sr4", "Wheels", "Grove", "Most cars", 1230},
    {1082, "wheel_gn1", "Wheels", "Import", "Most cars", 820},
    {1083, "wheel_lr2", "Wheels", "Dollar", "Most cars", 1560},
    {1084, "wheel_lr5", "Wheels", "Trance", "Most cars", 1350},
    {1085, "wheel_gn2", "Wheels", "Atomic", "Most cars", 770},
    {1086, "stereo", "Stereo", "Stereo", "Most cars", 100},
    {1087, "hydralics", "Hydraulics", "Hydraulics", "Most cars", 1500},
    {1088, "rf_a_u", "Roof", "Alien", "Uranus", 150},
    {1089, "exh_c_u", "Exhaust", "X-Flow", "Uranus", 650},
    {1090, "wg_l_a_u", "Sideskirt", "Right Alien Sideskirt", "Uranus", 450},
    {1091, "rf_c_u", "Roof", "X-Flow", "Uranus", 100},
    {1092, "exh_a_u", "Exhaust", "Alien", "Uranus", 750},
    {1093, "wg_l_c_u", "Sideskirt", "Left X-Flow Sideskirt", "Uranus", 350},
    {1094, "wg_r_a_u", "Sideskirt", "Left Alien Sideskirt", "Uranus", 450},
    {1095, "wg_r_c_u", "Sideskirt", "Right X-Flow Sideskirt", "Uranus", 350},
    {1096, "wheel_gn3", "Wheels", "Ahab", "Most cars", 1000},
    {1097, "wheel_gn4", "Wheels", "Virtual", "Most cars", 620},
    {1098, "wheel_gn5", "Wheels", "Access", "Most cars", 1140},
    {1099, "wg_r_lr_br1", "Sideskirt", "Left Chrome Sideskirt", "Broadway", 1000},
    {1100, "misc_c_lr_rem1", "Bullbar", "Chrome Grill", "Remington", 940},
    {1101, "wg_r_lr_rem1", "Sideskirt", "Left Chrome Flames Sideskirt", "Remington", 780},
    {1102, "wg_r_lr_sv", "Sideskirt", "Left Chrome Strip Sideskirt", "Savanna", 830},
    {1103, "rf_lr_bl2", "Roof", "Convertible", "Blade", 3250},
    {1104, "exh_lr_bl1", "Exhaust", "Chrome", "Blade", 1610},
    {1105, "exh_lr_bl2", "Exhaust", "Slamin", "Blade", 1540},
    {1106, "wg_l_lr_rem2", "Sideskirt", "Right Chrome Arches Sideskirt", "Remington", 780},
    {1107, "wg_r_lr_bl1", "Sideskirt", "Left Chrome Strip Sideskirt", "Blade", 780},
    {1108, "wg_l_lr_bl1", "Sideskirt", "Right Chrome Strip Sideskirt", "Blade", 780},
    {1109, "bbb_lr_slv1", "Rear Bullbars", "Chrome", "Slamvan", 1610},
    {1110, "bbb_lr_slv2", "Rear Bullbars", "Slamin", "Slamvan", 1540},
    {1111, "bnt_lr_slv1", "Front Sign?", "Little Sign?", "Slamvan", 0},
    {1112, "bnt_lr_slv2", "Front Sign?", "Little Sign?", "Slamvan", 0},
    {1113, "exh_lr_slv1", "Exhaust", "Chrome", "Slamvan", 3340},
    {1114, "exh_lr_slv2", "Exhaust", "Slamin", "Slamvan", 3250},
    {1115, "fbb_lr_slv1", "Front Bullbars", "Chrome", "Slamvan", 2130},
    {1116, "fbb_lr_slv2", "Front Bullbars", "Slamin", "Slamvan", 2050},
    {1117, "fbmp_lr_slv1", "Front Bumper", "Chrome", "Slamvan", 2040},
    {1118, "wg_l_lr_slv1", "Sideskirt", "Right Chrome Trim Sideskirt", "Slamvan", 780},
    {1119, "wg_l_lr_slv2", "Sideskirt", "Right Wheelcovers Sideskirt", "Slamvan", 940},
    {1120, "wg_r_lr_slv1", "Sideskirt", "Left Chrome Trim Sideskirt", "Slamvan", 780},
    {1121, "wg_r_lr_slv2", "Sideskirt", "Left Wheelcovers Sideskirt", "Slamvan", 940},
    {1122, "wg_l_lr_rem1", "Sideskirt", "Right Chrome Flames Sideskirt", "Remington", 780},
    {1123, "misc_c_lr_rem2", "Bullbars", "Bullbar Chrome Bars", "Remington", 860},
    {1124, "wg_r_lr_rem2", "Sideskirt", "Left Chrome Arches Sideskirt", "Remington", 780},
    {1125, "misc_c_lr_rem3", "Bullbars", "Bullbar Chrome Lights", "Remington", 1120},
    {1126, "exh_lr_rem1", "Exhaust", "Chrome Exhaust", "Remington", 3340},
    {1127, "exh_lr_rem2", "Exhaust", "Slamin Exhaust", "Remington", 3250},
    {1128, "rf_lr_bl1", "Roof", "Vinyl Hardtop", "Blade", 3340},
    {1129, "exh_lr_sv1", "Exhaust", "Chrome", "Savanna", 1650},
    {1130, "rf_lr_sv1", "Roof", "Hardtop", "Savanna", 3380},
    {1131, "rf_lr_sv2", "Roof", "Softtop", "Savanna", 3290},
    {1032, "rf_a_s", "Roof", "Alien Roof Vent", "Sultan", 170},
    {1033, "rf_c_s", "Roof", "X-Flow Roof Vent", "Sultan", 120}, 
    {1034, "exh_a_l", "Exhaust", "Alien", "Elegy", 790}, 
    {1035, "rf_c_l", "Roof", "X-Flow Roof Vent", "Elegy", 150}, 
    {1036, "wg_l_a_l", "SideSkirt", "Right Alien Sideskirt", "Elegy", 500},
    {1137, "wg_r_lr_t1", "Sideskirt", "Left Chrome Strip Sideskirt", "Tornado", 800},
    {1138, "spl_a_s_b", "Spoiler", "Alien", "Sultan", 580},
    {1139, "spl_c_s_b", "Spoiler", "X-Flow", "Sultan", 470},
    {1140, "rbmp_c_s", "Rear Bumper", "X-Flow", "Sultan", 870},
    {1141, "rbmp_a_s", "Rear Bumper", "Alien", "Sultan", 980},
    {1142, "bntr_b_ov", "Vents", "Left Oval Vents", "Certain Transfender Cars", 150},
    {1143, "bntl_b_ov", "Vents", "Right Oval Vents", "Certain Transfender Cars", 150},
    {1144, "bntr_b_sq", "Vents", "Left Square Vents", "Certain Transfender Cars", 100},
    {1145, "bntl_b_sq", "Vents", "Right Square Vents", "Certain Transfender Cars", 100},
    {1146, "spl_c_l_b", "Spoiler", "X-Flow", "Elegy", 490},
    {1147, "spl_a_l_b", "Spoiler", "Alien", "Elegy", 600},
    {1148, "rbmp_c_l", "Rear Bumper", "X-Flow", "Elegy", 890},
    {1149, "rbmp_a_l", "Rear Bumper", "Alien", "Elegy", 1000},
    {1150, "rbmp_a_f", "Rear Bumper", "Alien", "Flash", 1090},
    {1151, "rbmp_c_f", "Rear Bumper", "X-Flow", "Flash", 840},
    {1152, "fbmp_c_f", "Front Bumper", "X-Flow", "Flash", 910},
    {1153, "fbmp_a_f", "Front Bumper", "Alien", "Flash", 1200},
    {1154, "rbmp_a_s", "Rear Bumper", "Alien", "Stratum", 1030},
    {1155, "fbmp_a_st", "Front Bumper", "Alien", "Stratum", 1030},
    {1156, "rbmp_c_st", "Rear Bumper", "X-Flow", "Stratum", 920},
    {1157, "fbmp_c_st", "Front Bumper", "X-Flow", "Stratum", 930},
    {1158, "spl_c_j_b", "Spoiler", "X-Flow", "Jester", 550},
    {1159, "rbmp_a_j", "Rear Bumper", "Alien", "Jester", 1050},
    {1160, "fbmp_a_j", "Front Bumper", "Alien", "Jester", 1050},
    {1161, "rbmp_c_j", "Rear Bumper", "X-Flow", "Jester", 950},
    {1162, "spl_a_j_b", "Spoiler", "Alien", "Jester", 650},
    {1163, "spl_c_u_b", "Spoiler", "X-Flow", "Uranus", 450},
    {1164, "spl_a_u_b", "Spoiler", "Alien", "Uranus", 550},
    {1165, "fbmp_c_u", "Front Bumper", "X-Flow", "Uranus", 850},
    {1166, "fbmp_a_u", "Front Bumper", "Alien", "Uranus", 950},
    {1167, "rbmp_c_u", "Rear Bumper", "X-Flow", "Uranus", 850},
    {1168, "rbmp_a_u", "Rear Bumper", "Alien", "Uranus", 950},
    {1169, "fbmp_a_s", "Front Bumper", "Alien", "Sultan", 970},
    {1170, "fbmp_c_s", "Front Bumper", "X-Flow", "Sultan", 880},
    {1171, "fbmp_a_l", "Front Bumper", "Alien", "Elegy", 990},
    {1172, "fbmp_c_l", "Front Bumper", "X-Flow", "Elegy", 900},
    {1173, "fbmp_c_j", "Front Bumper", "X-Flow", "Jester", 950},
    {1174, "fbmp_lr_br1", "Front Bumper", "Chrome", "Broadway", 1000},
    {1175, "fbmp_lr_br2", "Front Bumper", "Slamin", "Broadway", 900},
    {1176, "rbmp_lr_br1", "Rear Bumper", "Chrome", "Broadway", 1000},
    {1177, "rbmp_lr_br2", "Rear Bumper", "Slamin", "Broadway", 900},
    {1178, "rbmp_lr_rem2", "Rear Bumper", "Slamin", "Remington", 2050},
    {1179, "fbmp_lr_rem1", "Front Bumper", "Chrome", "Remington", 2150},
    {1180, "rbmp_lr_rem1", "Rear Bumper", "Chrome", "Remington", 2130},
    {1181, "fbmp_lr_bl2", "Front Bumper", "Slamin", "Blade", 2050},
    {1182, "fbmp_lr_bl1", "Front Bumper", "Chrome", "Blade", 2130},
    {1183, "rbmp_lr_bl2", "Rear Bumper", "Slamin", "Blade", 2040},
    {1184, "rbmp_lr_bl1", "Rear Bumper", "Chrome", "Blade", 2150},
    {1185, "fbmp_lr_rem2", "Front Bumper", "Slamin", "Remington", 2040},
    {1186, "rbmp_lr_sv2", "Rear Bumper", "Slamin", "Savanna", 2095},
    {1187, "rbmp_lr_sv1", "Rear Bumper", "Chrome", "Savanna", 2175},
    {1188, "fbmp_lr_sv2", "Front Bumper", "Slamin", "Savanna", 2080},
    {1189, "fbmp_lr_sv1", "Front Bumper", "Chrome", "Savanna", 2200},
    {1190, "fbmp_lr_t2", "Front Bumper", "Slamin", "Tornado", 1200},
    {1191, "fbmp_lr_t1", "Front Bumper", "Chrome", "Tornado", 1040},
    {1192, "rbmp_lr_t1", "Rear Bumper", "Chrome", "Tornado", 940},
    {1193, "rbmp_lr_t2", "Rear Bumper", "Slamin", "Tornado", 1100}
};

new gggGlobalVehicleNames[212][] =
{
	{"Landstalker"},
	{"Bravura"},
	{"Buffalo"},
	{"Linerunner"},
	{"Perrenial"},
	{"Sentinel"},
	{"Dumper"},
	{"Firetruck"},
	{"Trash Master"},
	{"Stretch"},
	{"Manana"},
	{"Infernus"},
	{"Voodoo"},
	{"Pony"},
	{"Mule"},
	{"Cheetah"},
	{"Ambulance"},
	{"Leviathan"},
	{"Moonbeam"},
	{"Esperanto"},
	{"Taxi"},
	{"Washington"},
	{"Bobcat"},
	{"Mr Whoopee"},
	{"BF Injection"},
	{"Hunter"},
	{"Premier"},
	{"Enforcer"},
	{"Securicar"},
	{"Banshee"},
	{"Predator"},
	{"Bus"},
	{"Rhino"},
	{"Barracks"},
	{"Hotknife"},
	{"Trailer 1"},
	{"Previon"},
	{"Coach"},
	{"Cabbie"},
	{"Stallion"},
	{"Rumpo"},
	{"RC Bandit"},
	{"Romero"},
	{"Packer"},
	{"Monster"},
	{"Admiral"},
	{"Squalo"},
	{"Seasparrow"},
	{"Pizzaboy"},
	{"Tram"},
	{"Trailer 2"},
	{"Turismo"},
	{"Speeder"},
	{"Reefer"},
	{"Tropic"},
	{"Flatbed"},
	{"Yankee"},
	{"Caddy"},
	{"Solair"},
	{"Berkley's RC Van"},
	{"Skimmer"},
	{"PCJ-600"},
	{"Faggio"},
	{"Freeway"},
	{"RC Baron"},
	{"RC Raider"},
	{"Glendale"},
	{"Oceanic"},
	{"Sanchez"},
	{"Sparrow"},
	{"Patriot"},
	{"Quad"},
	{"Coastguard"},
	{"Dinghy"},
	{"Hermes"},
	{"Sabre"},
	{"Rustler"},
	{"ZR-350"},
	{"Walton"},
	{"Regina"},
	{"Comet"},
	{"BMX"},
	{"Burrito"},
	{"Camper"},
	{"Marquis"},
	{"Baggage"},
	{"Dozer"},
	{"Maverick"},
	{"News Chopper"},
	{"Rancher"},
	{"FBI Rancher"},
	{"Virgo"},
	{"Greenwood"},
	{"Jetmax"},
	{"Hotring"},
	{"Sandking"},
	{"Blista Compact"},
	{"Police Maverick"},
	{"Boxville"},
	{"Benson"},
	{"Mesa"},
	{"RC Goblin"},
	{"Hotring Racer A"},
	{"Hotring Racer B"},
	{"Bloodring Banger"},
	{"Rancher"},
	{"Super GT"},
	{"Elegant"},
	{"Journey"},
	{"Bike"},
	{"Mountain Bike"},
	{"Beagle"},
	{"Cropdust"},
	{"Stunt Plane"},
	{"Tanker"},
	{"Roadtrain"},
	{"Nebula"},
	{"Majestic"},
	{"Buccaneer"},
	{"Shamal"},
	{"Hydra"},
	{"FCR-900"},
	{"NRG-500"},
	{"HPV1000"},
	{"Cement Truck"},
	{"Tow Truck"},
	{"Fortune"},
	{"Cadrona"},
	{"FBI Truck"},
	{"Willard"},
	{"Forklift"},
	{"Tractor"},
	{"Combine"},
	{"Feltzer"},
	{"Remington"},
	{"Slamvan"},
	{"Blade"},
	{"Freight"},
	{"Streak"},
	{"Vortex"},
	{"Vincent"},
	{"Bullet"},
	{"Clover"},
	{"Sadler"},
	{"Firetruck LA"},
	{"Hustler"},
	{"Intruder"},
	{"Primo"},
	{"Cargobob"},
	{"Tampa"},
	{"Sunrise"},
	{"Merit"},
	{"Utility"},
	{"Nevada"},
	{"Yosemite"},
	{"Windsor"},
	{"Monster A"},
	{"Monster B"},
	{"Uranus"},
	{"Jester"},
	{"Sultan"},
	{"Stratum"},
	{"Elegy"},
	{"Raindance"},
	{"RC Tiger"},
	{"Flash"},
	{"Tahoma"},
	{"Savanna"},
	{"Bandito"},
	{"Freight Flat"},
	{"Streak Carriage"},
	{"Kart"},
	{"Mower"},
	{"Duneride"},
	{"Sweeper"},
	{"Broadway"},
	{"Tornado"},
	{"AT-400"},
	{"DFT-30"},
	{"Huntley"},
	{"Stafford"},
	{"BF-400"},
	{"Newsvan"},
	{"Tug"},
	{"Trailer 3"},
	{"Emperor"},
	{"Wayfarer"},
	{"Euros"},
	{"Hotdog"},
	{"Club"},
	{"Freight Carriage"},
	{"Trailer 3"},
	{"Andromada"},
	{"Dodo"},
	{"RC Cam"},
	{"Launch"},
	{"Police Car (LSPD)"},
	{"Police Car (SFPD)"},
	{"Police Car (LVPD)"},
	{"Police Ranger"},
	{"Picador"},
	{"S.W.A.T. Van"},
	{"Alpha"},
	{"Phoenix"},
	{"Glendale"},
	{"Sadler"},
	{"Luggage Trailer A"},
	{"Luggage Trailer B"},
	{"Stair Trailer"},
	{"Boxville"},
	{"Farm Plow"},
	{"Utility Trailer"}
};

new gCompSlot[17][] =
{
	{"SPOILER"},
	{"HOOD"},
	{"ROOF"},
	{"SIDESKIRT"},
	{"LAMPS"},
	{"NITRO"},
	{"EXHAUST"},
	{"WHEELS"},
	{"STEREO"},
	{"HYDRAULICS"},
	{"FRONT BUMPER"},
	{"REAR BUMPER"},
	{"Vents"},
	{"FRONT BULLBAR"},
	{"REAR BULLBAR"},
	{"Front Sign?"},
	{"Bullbar"}
};

new activecomponents[MAX_VEHICLES][200];

stock ShowMainDialog(playerid)
{
	if(!IsPlayerInAnyVehicle(playerid)) return SendClientMessage(playerid, -1, "GET A VEHICLE!.");
	new vehid = GetPlayerVehicleID(playerid);
	new themodel = GetVehicleModel(vehid);
	new digcap[64];
	format(digcap, sizeof(digcap), "{FFFFFF}%s Tuning Menu", gggGlobalVehicleNames[themodel - 400]);
	Dialog_Show(playerid, TMEN, DIALOG_STYLE_LIST, digcap, "{FFFFFF}SPOILER\nHOOD\nROOF\nSIDESKIRT\nLAMPS\nNITRO\nEXHAUST\nWHEELS\nSTEREO\nHYDRAULICS\nFRONT BUMPER\nREAR BUMPER\nVents\nFRONT BULLBAR\nREAR BULLBAR\nFront Sign\nBullbar\nPaint Jobs\nColors\nNeons", "OK", "CLOSE");
	return 1;
}

CMD:tuneme(playerid, params[])
{
	ShowMainDialog(playerid);
	return true;
}

// SA-MP LIMITS
#define MAX_ROWS 255
#define MAX_COLUMN 127
#define MAX_CAP 63
#define MAX_INF 3500

new bool:nocomps[MAX_VEHICLES];

Dialog:TMEN(playerid, response, listitem, inputtext[]) 
{
    if (response) 
	{
		if(!IsPlayerInAnyVehicle(playerid)) return SendClientMessage(playerid, -1, "GET A VEHICLE!.");
		new digcap[MAX_CAP];
		new vehid = GetPlayerVehicleID(playerid);
		new themodel = GetVehicleModel(vehid);
		format(digcap, sizeof(digcap), "{FFFFFF}%s %s Tuning Menu", gggGlobalVehicleNames[themodel - 400], gCompSlot[listitem]);
		new count = 0, slots[MAX_INF];
		strcat(slots, "{FFFFFF}Type\tPrice");
		for(new cid = 1000; cid < 1194; cid++)
		{
			//new c = cid - 1000;
			if(!strcmp(gCompSlot[listitem], componentlist[cid - 1000][comppart], true))
			{
				//printf("pID = %d, vID = %d, mID = %d, cid = %d, c = %d, listitem = %d, gCompSlot[listitem] = %s, componentlist[c][comppart] = %s, count = %d, activecomponents[vehid][count] = %d, slots = %s, digcap = %s", playerid, vehid, themodel, cid, c, listitem, gCompSlot[listitem], componentlist[c][comppart], count, activecomponents[vehid][count], slots, digcap);
				if(VehicleCanHaveComponent(themodel, cid))
				{
					new temp[MAX_ROWS];
					activecomponents[vehid][count] = cid; // Save component cid in the first slot of activecomponents
			        format(temp, sizeof(temp), "\n%s\t$%d", componentlist[cid - 1000][comptype], componentlist[cid - 1000][compcost]);
					strcat(slots, temp);
					count++;
					nocomps[vehid] = false;
				}
				if(count == MAX_ROWS)
	            {
	                break;
	            }
	            else continue;
		    }
		}
		if(count == 0)
		{
			strcat(slots, "\nTHIS VEHICLE DON'T HAVE ANY COMPONENTS");
			nocomps[vehid] = true;
		}
		Dialog_Show(playerid, TSO, DIALOG_STYLE_TABLIST_HEADERS, digcap, slots, "OK", "Back");
	}
	return 1;
}

new confmoney[MAX_PLAYERS];
new confcompid[MAX_VEHICLES];

Dialog:TSO(playerid, response, listitem, inputtext[]) 
{
    if (response) 
	{
		new vid = GetPlayerVehicleID(playerid);
		if(nocomps[vid] == true) return ShowMainDialog(playerid);
		AddVehicleComponent(vid, activecomponents[vid][listitem]);
		new Float:posX, Float:posY, Float:posZ;
		GetPlayerPos(playerid, posX, posY, posZ);
		PlayerPlaySound(playerid, 1133, posX, posY, posZ);
		confmoney[playerid] = componentlist[activecomponents[vid][listitem]][compcost];
		confcompid[vid] = activecomponents[vid][listitem];
		Dialog_Show(playerid, CONFIRM_PURCHASE, DIALOG_STYLE_MSGBOX, "{FFFFFF}CONFIRM PURCHASE", "{FFFFFF}CONFIRM PURCHASE", "PURCHASE", "Back");  
    }
	else
	{
		ShowMainDialog(playerid);
	}
    return 1;
}

Dialog:CONFIRM_PURCHASE(playerid, response, listitem, inputtext[]) 
{
	if (response) 
	{
		GivePlayerMoney(playerid, -confmoney[playerid]);
	}
	else
	{
		new vid = GetPlayerVehicleID(playerid);
		RemoveVehicleComponent(vid, confcompid[vid]);
		ShowMainDialog(playerid);
	}
    return 1;
}


/*
Dialog:TMEN(playerid, response, listitem, inputtext[]) 
{
    if (response) 
    {
        if(!IsPlayerInAnyVehicle(playerid)) return SendClientMessage(playerid, -1, "GET A VEHICLE!.");
        new digcap[MAX_CAP];
        new vehid = GetPlayerVehicleID(playerid);
        new themodel = GetVehicleModel(vehid);
        format(digcap, sizeof(digcap), "{FFFFFF}%s %s Tuning Menu", gggGlobalVehicleNames[themodel - 400], gCompSlot[listitem]);
        
        new count = 0, slots[MAX_INF];
        strcat(slots, "{FFFFFF}Type\tPrice");
        
        // Loop through each component in the list
        for(new cid = 1000; cid < 1194; cid++)
        {
            if(!strcmp(gCompSlot[listitem], componentlist[cid - 1000][comppart], true))
            {
                // Check if the vehicle model can have the current component
                if(VehicleCanHaveComponent(themodel, cid))
                {
                    new temp[MAX_ROWS];
                    activecomponents[vehid][count] = cid; // Save component id in activecomponents array
                    format(temp, sizeof(temp), "\n%s\t$%d", componentlist[cid - 1000][comptype], componentlist[cid - 1000][compcost]);
                    strcat(slots, temp);
                    count++;
                    nocomps[vehid] = false;
                }
                
                if(count == MAX_ROWS)
                {
                    break; // Exit the loop if the max rows are reached
                }
            }
        }
        
        // If no components were found for this vehicle, notify the player
        if(count == 0)
        {
            strcat(slots, "\nTHIS VEHICLE DON'T HAVE ANY COMPONENTS");
            nocomps[vehid] = true;
        }
        
        Dialog_Show(playerid, TSO, DIALOG_STYLE_TABLIST_HEADERS, digcap, slots, "OK", "Back");
    }
    return 1;
}

new confmoney[MAX_PLAYERS];
new confcompid[MAX_VEHICLES];

Dialog:TSO(playerid, response, listitem, inputtext[]) 
{
    if (response) 
    {
        new vid = GetPlayerVehicleID(playerid);
        
        // If no components are available for the vehicle, go back to the main menu
        if(nocomps[vid] == true) return ShowMainDialog(playerid);
        
        // Add the selected component to the vehicle
        AddVehicleComponent(vid, activecomponents[vid][listitem]);
        
        new Float:posX, Float:posY, Float:posZ;
        GetPlayerPos(playerid, posX, posY, posZ);
        PlayerPlaySound(playerid, 1133, posX, posY, posZ); // Play a sound when the component is added
        
        // Save the cost of the component and the id of the component
        confmoney[playerid] = componentlist[activecomponents[vid][listitem]][compcost];
        confcompid[vid] = activecomponents[vid][listitem];
        
        // Show confirmation dialog
        Dialog_Show(playerid, CONFIRM_PURCHASE, DIALOG_STYLE_MSGBOX, "{FFFFFF}CONFIRM PURCHASE", "{FFFFFF}CONFIRM PURCHASE", "PURCHASE", "Back");  
    }
    else
    {
        ShowMainDialog(playerid);
    }
    return 1;
}

Dialog:CONFIRM_PURCHASE(playerid, response, listitem, inputtext[]) 
{
    if (response) 
    {
        // Deduct the component cost from the player's money
        GivePlayerMoney(playerid, -confmoney[playerid]);
    }
    else
    {
        new vid = GetPlayerVehicleID(playerid);
        
        // Remove the component if the player cancels the purchase
        RemoveVehicleComponent(vid, confcompid[vid]);
        
        ShowMainDialog(playerid);
    }
    return 1;
}
*/

/*
#include <eSelection>

new activecomponents[MAX_VEHICLES][200];

//SA-MP LIMITS
#define MAX_ROWS 255
#define MAX_COLUMN 127
#define MAX_CAP 63
#define MAX_INF 3500

new bool:nocomps[MAX_VEHICLES];

// define an ID for the model selection menu below
#define MODEL_SELECTION_COMP_MENU (0)

ShowCompModelMenu(playerid, listitem)
{
	if(!IsPlayerInAnyVehicle(playerid)) return SendClientMessage(playerid, -1, "GET A VEHICLE!.");
	new vehid = GetPlayerVehicleID(playerid);
	new themodel = GetVehicleModel(vehid);
	new digcap[64];
	format(digcap, sizeof(digcap), "{FFFFFF}%s Tuning Menu", gggGlobalVehicleNames[themodel - 400]);
    
	// create a dynamic PawnPlus list to populate with models.
    // you don't need to worry about deleting this list, it's handled by the include once it's passed to it
    new List:Copms = list_new();

	new count = 0, slots[MAX_INF];
	//strcat(slots, "\\c{FFFFFF}Type\tPrice");
	for(new cid = 1000; cid < 1194; cid++)
	{
		//new c = cid - 1000;
		if(!strcmp(gCompSlot[listitem], componentlist[cid - 1000][comppart], true))
		{
			//printf("pID = %d, vID = %d, mID = %d, cid = %d, c = %d, listitem = %d, gCompSlot[listitem] = %s, componentlist[c][comppart] = %s, count = %d, activecomponents[vehid][count] = %d, slots = %s, digcap = %s", playerid, vehid, themodel, cid, c, listitem, gCompSlot[listitem], componentlist[c][comppart], count, activecomponents[vehid][count], slots, digcap);
			if(VehicleCanHaveComponent(themodel, cid))
			{
				new temp[MAX_ROWS];
				activecomponents[vehid][count] = cid; // Save component cid in the first slot of activecomponents
		        format(temp, sizeof(temp), "\n%i\t%s\t$%d", cid, componentlist[cid - 1000][comptype], componentlist[cid - 1000][compcost]);
				strcat(slots, temp);
				count++;
				nocomps[vehid] = false;
				AddModelMenuItem(Copms, cid, temp);
			}
			if(count == MAX_ROWS)
            {
                break;
            }
            else continue;
	    }
	}
	if(count == 0)
	{
		strcat(slots, "\nTHIS VEHICLE DON'T HAVE ANY COMPONENTS");
		nocomps[vehid] = true;
		AddModelMenuItem(Copms, 0, slots);
	}
/*		
    // add skin IDs 0, 1, 29 and 60 with "cool people only" text above skin ID 29.
    AddModelMenuItem(Copms, 0);
    AddModelMenuItem(Copms, 1);
    AddModelMenuItem(Copms, 29, "Cool people only");
    AddModelMenuItem(Copms, 60);
*/
    // show the menu to the player
    ShowModelSelectionMenu(playerid, digcap, MODEL_SELECTION_COMP_MENU, Copms);
	return 1;
}

// model selection response
public OnModelSelectionResponse(playerid, extraid, index, modelid, response)
{
    // make sure the extraid matches the skin menu ID
    if(extraid == MODEL_SELECTION_COMP_MENU)
    {
        // make sure the player actually clicked on a model and not the close button
        if(response == MODEL_RESPONSE_SELECT)
        {
            // assign the player the skin of their choosing
            SetPlayerSkin(playerid, modelid);
            return 1;
        }
		if(response == MODEL_RESPONSE_CANCEL)
		{
			if(!IsPlayerInAnyVehicle(playerid)) return SendClientMessage(playerid, -1, "GET A VEHICLE!.");
			new vehid = GetPlayerVehicleID(playerid);
			new themodel = GetVehicleModel(vehid);
			new digcap[64];
			format(digcap, sizeof(digcap), "{FFFFFF}%s Tuning Menu", gggGlobalVehicleNames[themodel - 400]);
		    
			// create a dynamic PawnPlus list to populate with models.
		    // you don't need to worry about deleting this list, it's handled by the include once it's passed to it
		    new List:Copms = list_new();
		
			new count = 0, slots[MAX_INF];
			//strcat(slots, "\\c{FFFFFF}Type\tPrice");
			for(new cid = 1000; cid < 1194; cid++)
			{
				//new c = cid - 1000;
				if(!strcmp(gCompSlot[index], componentlist[cid - 1000][comppart], true))
				{
					//printf("pID = %d, vID = %d, mID = %d, cid = %d, c = %d, listitem = %d, gCompSlot[listitem] = %s, componentlist[c][comppart] = %s, count = %d, activecomponents[vehid][count] = %d, slots = %s, digcap = %s", playerid, vehid, themodel, cid, c, listitem, gCompSlot[listitem], componentlist[c][comppart], count, activecomponents[vehid][count], slots, digcap);
					if(VehicleCanHaveComponent(themodel, cid))
					{
						new temp[MAX_ROWS];
						activecomponents[vehid][count] = cid; // Save component cid in the first slot of activecomponents
				        format(temp, sizeof(temp), "\n%i\t%s\t$%d", cid, componentlist[cid - 1000][comptype], componentlist[cid - 1000][compcost]);
						strcat(slots, temp);
						count++;
						nocomps[vehid] = false;
						AddModelMenuItem(Copms, cid, temp);
					}
					if(count == MAX_ROWS)
		            {
		                break;
		            }
		            else continue;
			    }
			}
			if(count == 0)
			{
				strcat(slots, "\nTHIS VEHICLE DON'T HAVE ANY COMPONENTS");
				nocomps[vehid] = true;
				AddModelMenuItem(Copms, 0, slots);
			}
		/*		
		    // add skin IDs 0, 1, 29 and 60 with "cool people only" text above skin ID 29.
		    AddModelMenuItem(Copms, 0);
		    AddModelMenuItem(Copms, 1);
		    AddModelMenuItem(Copms, 29, "Cool people only");
		    AddModelMenuItem(Copms, 60);
		*/
		    // show the menu to the player
		    ShowModelSelectionMenu(playerid, digcap, MODEL_SELECTION_COMP_MENU, Copms);
		}
    }
	return 1;
}

stock ShowMainDialog(playerid)
{
	if(!IsPlayerInAnyVehicle(playerid)) return SendClientMessage(playerid, -1, "GET A VEHICLE!.");
	new vehid = GetPlayerVehicleID(playerid);
	new themodel = GetVehicleModel(vehid);
	new digcap[64];
	format(digcap, sizeof(digcap), "{FFFFFF}%s Tuning Menu", gggGlobalVehicleNames[themodel - 400]);
	Dialog_Show(playerid, TMEN, DIALOG_STYLE_LIST, digcap, "{FFFFFF}SPOILER\nHOOD\nROOF\nSIDESKIRT\nLAMPS\nNITRO\nEXHAUST\nWHEELS\nSTEREO\nHYDRAULICS\nFRONT BUMPER\nREAR BUMPER\nVents\nFRONT BULLBAR\nREAR BULLBAR\nFront Sign\nBullbar\nPaint Jobs\nColors\nNeons", "OK", "CLOSE");
	return 1;
}

CMD:tuneme(playerid, params[])
{
	ShowMainDialog(playerid);
	return true;
}

Dialog:TMEN(playerid, response, listitem, inputtext[]) 
{
	ShowCompModelMenu(playerid, listitem);
	return true;
}

CMD:tdselect(playerid, params[])
{
	    SelectTextDraw(playerid, 0x00FF00FF); // Highlight green when hovering over
        SendClientMessage(playerid, 0xFFFFFFFF, "SERVER: Please select a textdraw!");
        return 1;
}

*/
/*
//PreviewModelDialog.inc
#include <PluginFreeVersion>
#include <MemoryPluginVersion.inc>
//works with easy dialog , didnt work with mdialog

#include <easyDialog>


/*
stock ShowMainDialog(playerid)
{
	if(!IsPlayerInAnyVehicle(playerid)) return SendClientMessage(playerid, -1, "GET A VEHICLE!.");
	new vehid = GetPlayerVehicleID(playerid);
	new themodel = GetVehicleModel(vehid);
	new digcap[64];
	format(digcap, sizeof(digcap), "{FFFFFF}%s Tuning Menu", gggGlobalVehicleNames[themodel - 400]);
	Dialog_Show(playerid, TMEN, DIALOG_STYLE_LIST, digcap, "{FFFFFF}SPOILER\nHOOD\nROOF\nSIDESKIRT\nLAMPS\nNITRO\nEXHAUST\nWHEELS\nSTEREO\nHYDRAULICS\nFRONT BUMPER\nREAR BUMPER\nVents\nFRONT BULLBAR\nREAR BULLBAR\nFront Sign\nBullbar\nPaint Jobs\nColors\nNeons", "OK", "CLOSE");
	return 1;
}

CMD:tuneme(playerid, params[])
{
	ShowMainDialog(playerid);
	return true;
}

// SA-MP LIMITS
#define MAX_ROWS 255
#define MAX_COLUMN 127
#define MAX_CAP 63
#define MAX_INF 3500

new bool:nocomps[MAX_VEHICLES];

Dialog:TMEN(playerid, response, listitem, inputtext[]) 
{
    if (response) 
	{
		if(!IsPlayerInAnyVehicle(playerid)) return SendClientMessage(playerid, -1, "GET A VEHICLE!.");
		new digcap[MAX_CAP];
		new vehid = GetPlayerVehicleID(playerid);
		new themodel = GetVehicleModel(vehid);
		format(digcap, sizeof(digcap), "{FFFFFF}%s %s Tuning Menu", gggGlobalVehicleNames[themodel - 400], gCompSlot[listitem]);
		new count = 0, slots[MAX_INF];
		strcat(slots, "\\c{FFFFFF}Type\tPrice");
		for(new cid = 1000; cid < 1194; cid++)
		{
			//new c = cid - 1000;
			if(!strcmp(gCompSlot[listitem], componentlist[cid - 1000][comppart], true))
			{
				//printf("pID = %d, vID = %d, mID = %d, cid = %d, c = %d, listitem = %d, gCompSlot[listitem] = %s, componentlist[c][comppart] = %s, count = %d, activecomponents[vehid][count] = %d, slots = %s, digcap = %s", playerid, vehid, themodel, cid, c, listitem, gCompSlot[listitem], componentlist[c][comppart], count, activecomponents[vehid][count], slots, digcap);
				if(VehicleCanHaveComponent(themodel, cid))
				{
					new temp[MAX_ROWS];
					activecomponents[vehid][count] = cid; // Save component cid in the first slot of activecomponents
			        format(temp, sizeof(temp), "\n%i\t%s\t$%d", cid, componentlist[cid - 1000][comptype], componentlist[cid - 1000][compcost]);
					strcat(slots, temp);
					count++;
					nocomps[vehid] = false;
				}
				if(count == MAX_ROWS)
	            {
	                break;
	            }
	            else continue;
		    }
		}
		if(count == 0)
		{
			strcat(slots, "\nTHIS VEHICLE DON'T HAVE ANY COMPONENTS");
			nocomps[vehid] = true;
		}
		Dialog_Show(playerid, TSO, DIALOG_STYLE_PREVIEW_MODEL, digcap, slots, "OK", "Back");
	}
	return 1;
}

new confmoney[MAX_PLAYERS];
new confcompid[MAX_VEHICLES];

Dialog:TSO(playerid, response, listitem, inputtext[]) 
{
    if (response) 
	{
		new vid = GetPlayerVehicleID(playerid);
		if(nocomps[vid] == true) return ShowMainDialog(playerid);
		AddVehicleComponent(vid, activecomponents[vid][listitem]);
		new Float:posX, Float:posY, Float:posZ;
		GetPlayerPos(playerid, posX, posY, posZ);
		PlayerPlaySound(playerid, 1133, posX, posY, posZ);
		confmoney[playerid] = componentlist[activecomponents[vid][listitem]][compcost];
		confcompid[vid] = activecomponents[vid][listitem];
		Dialog_Show(playerid, CONFIRM_PURCHASE, DIALOG_STYLE_MSGBOX, "{FFFFFF}CONFIRM PURCHASE", "{FFFFFF}CONFIRM PURCHASE", "PURCHASE", "Back");  
    }
	else
	{
		ShowMainDialog(playerid);
	}
    return 1;
}

Dialog:CONFIRM_PURCHASE(playerid, response, listitem, inputtext[]) 
{
	if (response) 
	{
		GivePlayerMoney(playerid, -confmoney[playerid]);
	}
	else
	{
		new vid = GetPlayerVehicleID(playerid);
		RemoveVehicleComponent(vid, confcompid[vid]);
		ShowMainDialog(playerid);
	}
    return 1;
}
*/
/*
CMD:skine(playerid) {
    const MAX_SKINS = 312;
    new subString[16];
    static string[MAX_SKINS * sizeof(subString)];
    if (string[0] == EOS) {
        for (new i; i < MAX_SKINS; i++) {
            format(subString, sizeof(subString), "%i\tID: %i\n", i, i);
            strcat(string, subString);
        }
    }
    return Dialog_Show(playerid, skine, DIALOG_STYLE_PREVIEW_MODEL, "Skin Selection Dialog", string, "Select", "Cancel");
}

Dialog:skine(playerid, dialogid, response, listitem, inputtext[]) {
    if (dialogid == 0) {
        if (response) {
            SetPlayerSkin(playerid, listitem);
            GameTextForPlayer(playerid, "~g~Skin Changed!", 3000, 3);
        }
    }
    return 1;
} 
*/
/*
enum E_WEAPON_SHOP_DATA {
    WEAPON_MODELID,
    WEAPON_NAME[35],
    WEAPON_PRICE,
    WEAPON_AMMO,
    WEAPON_ID
};
new const WEAPON_SHOP[][E_WEAPON_SHOP_DATA] = {
    {335, "Knife", 0, 1, WEAPON_KNIFE},
    {341, "Chainsaw", 1500, 1, WEAPON_CHAINSAW},
    {342, "Grenade", 1545, 1, WEAPON_GRENADE},
    {343, "Moltove", 1745, 1, WEAPON_MOLTOV},
    {347, "Silenced 9mm", 1500, 150, WEAPON_SILENCED},
    {348, "Desert Eagle", 3199, 150, WEAPON_DEAGLE},
    {350, "Sawed Off Shotgun", 4999, 100, WEAPON_SAWEDOFF},
    {351, "Spas12 Shotgun", 3870, 100, WEAPON_SHOTGSPA},
    {352, "Micro-UZI", 3500, 300, WEAPON_UZI},
    {353, "MP5", 2999, 200, WEAPON_MP5},
    {372, "Tec-9", 3500, 300, WEAPON_TEC9},
    {358, "Sniper Rifle", 4999, 50, WEAPON_SNIPER},
    {355, "Ak47", 2999, 200, WEAPON_AK47},
    {356, "M4", 3155, 200, WEAPON_M4},
    {359, "RPG", 1999, 1, WEAPON_ROCKETLAUNCHER},
    {361, "Flamethrower", 3500, 350, WEAPON_FLAMETHROWER},
    {362, "Minigun", 10000, 350, WEAPON_MINIGUN},
    {363, "Satchel Charge", 1999, 2, WEAPON_SATCHEL},
    {365, "Spray Can", 800, 200, WEAPON_SPRAYCAN},
    {366, "Fire Extinguisher", 855, 200, WEAPON_FIREEXTINGUISHER}
};
CMD:weapons(playerid) {
    new subString[64];
    static string[sizeof(WEAPON_SHOP) * sizeof(subString)];
    if (string[0] == EOS) {
        for (new i; i < sizeof(WEAPON_SHOP); i++) {
            format(subString, sizeof(subString), "%i(0.0, 0.0, -50.0, 1.5)\t%s~n~~g~~h~$%i\n", WEAPON_SHOP[i][WEAPON_MODELID], WEAPON_SHOP[i][WEAPON_NAME], WEAPON_SHOP[i][WEAPON_PRICE]);
            strcat(string, subString);
        }
    }
    return ShowPlayerDialog(playerid, 1, DIALOG_STYLE_PREVIEW_MODEL, "Weapon Shop Dialog", string, "Purchase", "Cancel");
}
public OnDialogResponse(playerid, dialogid, response, listitem, inputtext[]) {
    if (dialogid == 1) {
        if (response) {
            if (GetPlayerMoney(playerid) < WEAPON_SHOP[listitem][WEAPON_PRICE]) {
                SendClientMessage(playerid, 0xAA0000FF, "Not enough money to purchase this gun!");
                return cmd_weapons(playerid);
            }
            
            GivePlayerMoney(playerid, -WEAPON_SHOP[listitem][WEAPON_PRICE]);
            GivePlayerWeapon(playerid, WEAPON_SHOP[listitem][WEAPON_ID], WEAPON_SHOP[listitem][WEAPON_AMMO]);
            
            GameTextForPlayer(playerid, "~g~Gun Purchased!", 3000, 3);
        }
    }
    return 1;
} 
*/

