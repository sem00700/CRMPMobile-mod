#if defined _SYSTEM_VEHICLE
	#endinput
#endif
#define _SYSTEM_VEHICLE

// ------------------------------------
#define GetVehicleInfo(%0,%1)		g_vehicle_info[%0][%1]
#define GetVehicleName(%0)			GetVehicleInfo(GetVehicleData(%0, V_MODELID)-400, VI_NAME)

// ------------------------------------
#define GetVehicleData(%0,%1)		g_vehicle_data[%0][%1]
#define SetVehicleData(%0,%1,%2)	g_vehicle_data[%0][%1] = %2
#define ClearVehicleData(%0)		g_vehicle_data[%0] = g_vehicle_default_values
#define IsValidVehicleID(%0)		(1 <= %0 < MAX_VEHICLES)

// ------------------------------------
#define GetVehicleParamEx(%0,%1) g_vehicle_params[%0][%1]

// ------------------------------------
#define VEHICLE_ACTION_TYPE_NONE 	-1
#define VEHICLE_ACTION_ID_NONE 		-1

// ------------------------------------
#define VEHICLE_PARAM_ON	(1)
#define VEHICLE_PARAM_OFF	(0)

// ------------------------------------
native IsValidVehicle(vehicleid);

// ------------------------------------
enum E_VEHICLE_STRUCT
{
	V_MODELID,
	Float: V_SPAWN_X,
	Float: V_SPAWN_Y,
	Float: V_SPAWN_Z,
	Float: V_SPAWN_ANGLE,
	V_COLOR_1,
	V_COLOR_2,
	V_RESPAWN_DELAY,
	V_ADDSIREN,
	// -------------
	V_ACTION_TYPE,
	V_ACTION_ID,
	// -------------
	V_DRIVER_ID,
	// -------------
	V_LIMIT,
	V_ALARM,
	Float: V_FUEL,
	Float: V_MILEAGE,
	// -------------
	Text3D: V_LABEL,
	// -------------
	Float: V_HEALTH,
	V_LAST_LOAD_TIME,
	V_ACTION_OWNER,
};

// ------------------------------------
enum E_VEHICLE_PARAMS_STRUCT
{
	V_ENGINE, 	// ���������
	V_LIGHTS, 	// ����
	V_ALARM,	// ������������
	V_LOCK, 	// ������� ��
	V_BONNET, 	// �����
	V_BOOT, 	// ��������
	V_OBJECTIVE // ���������� ������� ��� ����qa
};

// ------------------------------------
enum E_VEHICE_INFO_STRUCT
{
	VI_NAME[21],	// ��������
	VI_PRICE,		// ���. ���������
	VT_RENT_PRICE,	// ��������� ������
	VI_TYPE			// ���
};

// ------------------------------------
new g_vehicle_data[MAX_VEHICLES][E_VEHICLE_STRUCT];
new 
	g_vehicle_default_values[E_VEHICLE_STRUCT] = 
{
	0,
	0.0,
	0.0,
	0.0,
	0.0,
	0,
	0,
	0,
	0,
	VEHICLE_ACTION_TYPE_NONE,
	VEHICLE_ACTION_ID_NONE,
	INVALID_PLAYER_ID,
	false,
	false,
	40.0,
	0.0,
	Text3D:-1,
	1000.0,
	0
};
new g_vehicle_params[MAX_VEHICLES][E_VEHICLE_PARAMS_STRUCT];

new const
    g_vehicle_info[212][E_VEHICE_INFO_STRUCT] = 
{
    {"BMW X5",              850000,     8500,   2},     // 400
    {"��� 2101",             50000,      500,    0},     // 401
    {"Opel Omega",          600000,     6000,   2},     // 402
    {"��� �����",           0,          0,      0},     // 403
    {"��� 2107",            80000,      800,    0},     // 404
    {"Mitsubishi Lancer",   800000,     8000,   1},     // 405
    {"��� 131 ��������",    0,          0,      0},     // 406
    {"�������",             0,          0,      0},     // 407
    {"���������",           0,          0,      0},     // 408
    {"��� 14",              20000000,   200000, 2},     // 409
    {"Mitsubishi Eclipse",  780000,     7800,   1},     // 410
    {"Lada Kalina",         380000,     3800,   0},     // 411
    {"Toyota Crown",            60000,      600,    0},     // 412
    {"��� 672",             0,          0,      0},     // 413
    {"���� 5256",           0,          0,      0},     // 414
    {"Cheetah",             1500000,    15000,  2},     // 415
    {"������",              0,          0,      0},     // 416
    {"Leviathn",            0,          0,      0},     // 417
    {"Moonbeam",            640000,     6400,   0},     // 418
    {"Toyota Camry",           500000,     5000,   1},     // 419
    {"�����",               0,          0,      0},     // 420
    {"Washington",          800000,     8000,   2},     // 421
    {"Chevrolet",         100000,     1000,   0},     // 422
    {"MrWhoop",             0,          0,      0},     // 423
    {"CM�",                 10000,      100,    0},     // 424
    {"Hunter",              0,          0,      0},     // 425
    {"��� 4101",            3800000,    38000,  2},     // 426
    {"Enforcer",            0,          0,      0},     // 427
    {"���������",           0,          0,      0},     // 428
    {"��� 21",              1800000,    18000,  0},     // 429
    {"Predator",            0,          0,      0},     // 430
    {"���� 677",            0,          0,      0},     // 431
    {"����",                0,          0,      0},     // 432
    {"��� 131 ����",        0,          0,      0},     // 433
    {"Hotknife",            700000,     7000,   1},     // 434
    {"������",              0,          0,      0},     // 435
    {"Toyota Mark",         1650000,    16500,  1},     // 436
    {"������",              0,          0,      0},     // 437
    {"�����",               0,          0,      0},     // 438
    {"������� 412",         35000,      350,    0},     // 439
    {"Rumpo",               600000,     0,      0},     // 440
    {"RCcar",               0,          0,      0},     // 441
    {"��� �1",              60000,      100,    0},     // 442
    {"�������",             0,          0,      0},     // 443
    {"������",              0,          0,      0},     // 444
    {"��� 24",              240000,     2400,   0},     // 445
    {"Squalo",              0,          0,      0},     // 446
    {"������ ����",         0,          0,      0},     // 447
    {"Pizzaboy",            0,          0,      0},     // 448
    {"��������",            0,          0,      0},     // 449
    {"������",              0,          0,      0},     // 450
    {"Turismo",             2200000,    22000,  2},     // 451
    {"Speeder",             0,          0,      0},     // 452
    {"Reefer",              0,          0,      0},     // 453
    {"����",                0,          0,      0},     // 454
    {"�������",             0,          0,      0},     // 455
    {"��� 3309",            0,          0,      0},     // 456
    {"����� ���",           0,          0,      0},     // 457
    {"��� 2114",           240000,     2400,   0},     // 458
    {"Topfun",              0,          0,      0},     // 459
    {"���� �������",        0,          0,      0},     // 460
    {"Jawa 350",            70000,      700,    0},     // 461
    {"����������",          18000,      200,    0},     // 462
    {"Harley",              120000,     1200,   1},     // 463
    {"RCplane",             0,          0,      0},     // 464
    {"RCheli",              0,          0,      0},     // 465
    {"BMW 535",             2800000,    28000,  2},     // 466
    {"�� 412",              35000,      350,    0},     // 467
    {"CZ 125",              40000,      400,    0},     // 468
    {"Sparrow",             0,          0,      0},     // 469
    {"�����",               0,          0,      0},     // 470
    {"����������",          120000,     1200,   1},     // 471
    {"Coastg",              0,          0,      0},     // 472
    {"Dinghy",              0,          0,      0},     // 473
    {"��� 2115",              60000,      600,    0},     // 474
    {"Mitsubishi Pajero",   1450000,    14500,  1},     // 475
    {"�����������",         0,          0,      0},     // 476
    {"ZR 350",              900000,     9000,   2},     // 477
    {"�� 27151",            45000,      450,    0},     // 478
    {"��� 24-02",           240000,     2400,   0},     // 479
    {"Comet",               2800000,    28000,  2},     // 480
    {"��������� ����",      4000,       100,    0},     // 481
    {"��� Next",             520000,     520000, 0},     // 482
    {"��� 3205",            0,          0,      0},     // 483
    {"��������",            0,          0,      0},     // 484
    {"��� ����",            0,          0,      0},     // 485
    {"���������",           0,          0,      0},     // 486
    {"����",                0,          0,      0},     // 487
    {"News ����",           0,          0,      0},     // 488
    {"Chevrolet Niva",      1900000,    19000,  1},     // 489
    {"Chevrolet Suburban",  5900000,    59000,  0},     // 490
    {"Virgo",               800000,     8000,   1},     // 491
    {"Flat",            180000,     1800,   0},     // 492
    {"Jetmax",              0,          0,      0},     // 493
    {"Hotring",             5600000,    56000,  0},     // 494
    {"����� ����",          1500000,    15000,  1},     // 495
    {"������",              70000,      700,    0},     // 496
    {"��� ����",            0,          0,      0},     // 497
    {"��� 695",             0,          0,      0},     // 498
    {"��� 53",              0,          0,      0},     // 499
    {"��� 69",              40000,      400,    0},     // 500
    {"RCgobl",              0,          0,      0},     // 501
    {"Hotring",             5600000,    56000,  0},     // 502
    {"Hotring",             5600000,    56000,  0},     // 503
    {"Bloodra",             0,          0,      0},     // 504
    {"Rnchlure",            4200000,    42000,  2},     // 505
    {"Super GT",            2900000,    29000,  2},     // 506
    {"��� 24",              240000,     2400,   0},     // 507
    {"��� �������",         100000,     1000,   0},     // 508
    {"��������� '����'",    6000,       150,    0},     // 509
    {"������ ���������",    10000,      300,    0},     // 510
    {"Beagle",              0,          0,      0},     // 511
    {"Cropdast",            0,          0,      0},     // 512
    {"Stunt",               0,          0,      0},     // 513
    {"����� 54115",         0,          0,      0},     // 514
    {"���",                 0,          0,      0},     // 515
    {"Toyota",           180000,     1800,   0},     // 516
    {"��� ������",          150000,     1500,   0},     // 517
    {"���� 977",            100000,     1000,   0},     // 518
    {"Shamal",              0,          0,      0},     // 519
    {"�����������",         0,          0,      0},     // 520
    {"�� �������-5",        35000,      350,    0},     // 521
    {"NRG 500",             600000,     6000,   2},     // 522
    {"������ 5",            32000,      320,    0},     // 523
    {"����������",          0,          0,      0},     // 524
    {"���������",           0,          0,      0},     // 525
    {"Fortune",             160000,     1600,   0},     // 526
    {"Cadrona",             240000,     2400,   0},     // 527
    {"��������",            0,          0,      0},     // 528
    {"Willard",             250000,     2500,   0},     // 529
    {"���������",           0,          0,      0},     // 530
    {"�������",             0,          0,      0},     // 531
    {"�������",             0,          0,      0},     // 532
    {"Feltzer",             1500000,    15000,  1},     // 533
    {"Remington",           400000,     4000,   1},     // 534
    {"Slamvan",             400000,     4000,   1},     // 535
    {"Blade",               350000,     3500,   1},     // 536
    {"�����",               0,          0,      0},     // 537
    {"�����",               0,          0,      0},     // 538
    {"���� �������",        0,          0,      0},     // 539
    {"��� 3111",            180000,     1800,   0},     // 540
    {"Bullet",              4200000,    42000,  2},     // 541
    {"��� 2121",            130000,     1300,   0},     // 542
    {"Sadler",              4800000,    48000,  0},     // 543
    {"�������",             0,          0,      0},     // 544
    {"������� 400",         60000,      100,    0},     // 545
    {"�� �����",            60000,      600,    0},     // 546
    {"���� 2140",           60000,      600,    0},     // 547
    {"���� ����",           0,          0,      0},     // 548
    {"��� 968",             35000,      35,     0},     // 549
    {"Sunrise",             240000,     1400,   0},     // 550
    {"��� 31105",           130000,     110,    0},     // 551
    {"������ �����",        210000,     2100,   0},     // 552
    {"����������",          0,          0,      0},     // 553
    {"��� 3303",            0,          0,      0},     // 554
    {"��� 968",             25000,      50,     0},     // 555
    {"������",              0,          0,      0},     // 556
    {"������",              0,          0,      0},     // 557
    {"Uranus",              450000,     4500,   1},     // 558
    {"Tojota Celica",       1600000,    16000,  1},     // 559
    {"Sultan",              2650000,    26500,  1},     // 560
    {"������� 427",         60000,      600,    0},     // 561
    {"Elegy",               2500000,    25000,  2},     // 562
    {"���� ����",           0,          0,      0},     // 563
    {"RCtank",              0,          0,      0},     // 564
    {"��� 2108",            170000,     1700,   0},     // 565
    {"��� 2104",            100000,     1000,   0},     // 566
    {"Savana",              200000,     2000,   0},     // 567
    {"Bandito",             50000,      500,    0},     // 568
    {"�����",               0,          0,      0},     // 569
    {"�����",               0,          0,      0},     // 570
    {"����",                0,          0,      0},     // 571
    {"�������������",       0,          0,      0},     // 572 
    {"����� ��������",      2000000,    20000,  0},     // 573
    {"����� ����",          0,          0,      0},     // 574
    {"��� 20",              60000,      600,    0},     // 575
    {"���� 408",            60000,      600,    0},     // 576
    {"AT 400",              0,          0,      0},     // 577
    {"��� ����",            0,          0,      0},     // 578
    {"Huntley",             4800000,    48000,  0},     // 579
    {"��� 13",              2000000,    15000,  0},     // 580
    {"BF 400",              70000,      700,    0},     // 581
    {"����� ����",          0,          0,      0},     // 582
    {"Tug",                 0,          0,      0},     // 583
    {"��������",            0,          0,      0},     // 584
    {"Emperor",             280000,     2800,   0},     // 585
    {"�������� '������'",   40000,      400,    0},     // 586
    {"Euros",               2400000,    24000,  0},     // 587
    {"���� ����",           0,          0,      0},     // 588
    {"Club",                1240000,    12400,  0},     // 589
    {"�����",               0,          0,      0},     // 590
    {"������",              0,          0,      0},     // 591
    {"Androm",              0,          0,      0},     // 592
    {"Dodo",                0,          0,      0},     // 593
    {"RCcam",               0,          0,      0},     // 594
    {"Launch",              0,          0,      0},     // 595
    {"��� ���",             0,          0,      0},     // 596
    {"��� ���",             0,          0,      0},     // 597
    {"��� ���",             0,          0,      0},     // 598
    {"��� ���",             0,          0,      0},     // 599
    {"���� 2335",           80000,      800,    0},     // 600
    {"����",                0,          0,      0},     // 601
    {"�lpha",               3400000,    34000,  0},     // 602
    {"Phoenix",             1700000,    17000,  0},     // 603
    {"Glenshit",            0,          0,      0},     // 604
    {"������ ���",          0,          0,      0},     // 605
    {"������ ",             0,          0,      0},     // 606
    {"������ ",             0,          0,      0},     // 607
    {"��������",            0,          0,      0},     // 608
    {"����",                0,          0,      0},     // 609
    {"����",                0,          0,      0},     // 610
    {"������ �����",        0,          0,      0}      // 611
};

// ------------------------------------

stock SetVehicleDataAll(vehicleid, modelid, Float:x, Float:y, Float:z, Float:angle, color1, color2, respawn_delay, addsiren=0, action_type, action_id)
{
	if(IsValidVehicleID(vehicleid))
	{
		SetVehicleData(vehicleid, V_MODELID, modelid);
		
		SetVehicleData(vehicleid, V_SPAWN_X, 		x);
		SetVehicleData(vehicleid, V_SPAWN_Y, 		y);
		SetVehicleData(vehicleid, V_SPAWN_Z, 		z);
		SetVehicleData(vehicleid, V_SPAWN_ANGLE, 	angle);
		
		SetVehicleData(vehicleid, V_COLOR_1, 	color1);
		SetVehicleData(vehicleid, V_COLOR_2, 	color2);
		
		SetVehicleData(vehicleid, V_RESPAWN_DELAY, 	respawn_delay);
		SetVehicleData(vehicleid, V_ADDSIREN, 		addsiren);
		
		SetVehicleData(vehicleid, V_ACTION_TYPE, 	action_type);
		SetVehicleData(vehicleid, V_ACTION_ID, 		action_id);
		SetVehicleData(vehicleid, V_DRIVER_ID, 		INVALID_PLAYER_ID);
		
		SetVehicleData(vehicleid, V_FUEL, 40.0);
		SetVehicleData(vehicleid, V_MILEAGE, 0.0);
		SetVehicleData(vehicleid, V_LIMIT, true);

		SetVehicleData(vehicleid, V_HEALTH, 1000.0);
	
		SetVehicleParamsEx(vehicleid, IsABike(vehicleid) ? VEHICLE_PARAM_ON : VEHICLE_PARAM_OFF, VEHICLE_PARAM_OFF, VEHICLE_PARAM_OFF, VEHICLE_PARAM_OFF, VEHICLE_PARAM_OFF, VEHICLE_PARAM_OFF, VEHICLE_PARAM_OFF);
	}
}

stock n_veh_AddStaticVehicleEx(modelid, Float:x, Float:y, Float:z, Float:angle, color1, color2, respawn_delay, addsiren=0, action_type=VEHICLE_ACTION_TYPE_NONE, action_id=VEHICLE_ACTION_ID_NONE)
{
	static n_veh_vehicleid = INVALID_VEHICLE_ID;
	
	n_veh_vehicleid = AddStaticVehicleEx(modelid, x, y, z, angle, color1, color2, respawn_delay);
	SetVehicleDataAll(n_veh_vehicleid, modelid, x, y, z, angle, color1, color2, respawn_delay, addsiren, action_type, action_id);

	return n_veh_vehicleid;
	
	// The vehicle ID of the vehicle created (1 - MAX_VEHICLES).
	// INVALID_VEHICLE_ID (65535) if vehicle was not created (vehicle limit reached or invalid vehicle model ID passed).
}
#if defined _ALS_AddStaticVehicleEx
    #undef AddStaticVehicleEx
#else
    #define _ALS_AddStaticVehicleEx
#endif
#define AddStaticVehicleEx n_veh_AddStaticVehicleEx

stock n_veh_AddStaticVehicle(modelid, Float:x, Float:y, Float:z, Float:angle, color1, color2, action_type=VEHICLE_ACTION_TYPE_NONE, action_id=VEHICLE_ACTION_ID_NONE)
{
	static n_veh_vehicleid = INVALID_VEHICLE_ID;
	
	n_veh_vehicleid = AddStaticVehicle(modelid, x, y, z, angle, color1, color2);
	SetVehicleDataAll(n_veh_vehicleid, modelid, x, y, z, angle, color1, color2, 0, 0, action_type, action_id);

	return n_veh_vehicleid;
	
	// The vehicle ID of the vehicle created (1 - MAX_VEHICLES).
	// INVALID_VEHICLE_ID (65535) if vehicle was not created (vehicle limit reached or invalid vehicle model ID passed).
}
#if defined _ALS_AddStaticVehicle
    #undef AddStaticVehicle
#else
    #define _ALS_AddStaticVehicle
#endif
#define AddStaticVehicle n_veh_AddStaticVehicle

stock n_veh_CreateVehicle(modelid, Float:x, Float:y, Float:z, Float:angle, color1, color2, respawn_delay, addsiren=0, action_type=VEHICLE_ACTION_TYPE_NONE, action_id=VEHICLE_ACTION_ID_NONE)
{
	static n_veh_vehicleid = INVALID_VEHICLE_ID;
	
	n_veh_vehicleid = CreateVehicle(modelid, x, y, z, angle, color1, color2, respawn_delay);
	SetVehicleDataAll(n_veh_vehicleid, modelid, x, y, z, angle, color1, color2, respawn_delay, addsiren, action_type, action_id);

	return n_veh_vehicleid;
	
	// The vehicle ID of the vehicle created (1 - MAX_VEHICLES).
	// INVALID_VEHICLE_ID (65535) if vehicle was not created (vehicle limit reached or invalid vehicle model ID passed).
}
#if defined _ALS_CreateVehicle
    #undef CreateVehicle
#else
    #define _ALS_CreateVehicle
#endif
#define CreateVehicle n_veh_CreateVehicle

stock n_veh_DestroyVehicle(vehicleid)
{
	if(IsValidVehicleID(vehicleid))
	{
		ClearVehicleData(vehicleid);
		DestroyVehicleLabel(vehicleid);
	}
	return DestroyVehicle(vehicleid);
}
#if defined _ALS_DestroyVehicle
    #undef DestroyVehicle
#else
    #define _ALS_DestroyVehicle
#endif
#define DestroyVehicle n_veh_DestroyVehicle

public OnGameModeInit()
{
    for(new idx = 0; idx < MAX_VEHICLES; idx ++)
	{
		ClearVehicleData(idx);
	}
	
#if defined n_veh_OnGameModeInit
    n_veh_OnGameModeInit();
#endif
    return 1;
}
#if defined _ALS_OnGameModeInit
    #undef OnGameModeInit
#else
    #define _ALS_OnGameModeInit
#endif
#define OnGameModeInit n_veh_OnGameModeInit
#if defined n_veh_OnGameModeInit
forward n_veh_OnGameModeInit();
#endif  

// ---------------------------------------------------
stock SetVehicleParamsInit(vehicleid)
{	
	GetVehicleParamsEx
	(
		vehicleid, 
		g_vehicle_params[vehicleid][V_ENGINE],
		g_vehicle_params[vehicleid][V_LIGHTS],
		g_vehicle_params[vehicleid][V_ALARM],
		g_vehicle_params[vehicleid][V_LOCK],
		g_vehicle_params[vehicleid][V_BONNET],
		g_vehicle_params[vehicleid][V_BOOT],
		g_vehicle_params[vehicleid][V_OBJECTIVE]
	);
}

stock GetVehicleParam(vehicleid, E_VEHICLE_PARAMS_STRUCT:paramid)
{
	SetVehicleParamsInit(vehicleid);
	return g_vehicle_params[vehicleid][paramid];
}

stock SetVehicleParam(vehicleid, E_VEHICLE_PARAMS_STRUCT:paramid, set_value)
{
	SetVehicleParamsInit(vehicleid);
	g_vehicle_params[vehicleid][paramid] = bool: set_value;
	
	SetVehicleParamsEx
	(
		vehicleid,
		g_vehicle_params[vehicleid][V_ENGINE],
		g_vehicle_params[vehicleid][V_LIGHTS],
		g_vehicle_params[vehicleid][V_ALARM],
		g_vehicle_params[vehicleid][V_LOCK],
		g_vehicle_params[vehicleid][V_BONNET],
		g_vehicle_params[vehicleid][V_BOOT],
		g_vehicle_params[vehicleid][V_OBJECTIVE]
	);
}

stock CreateVehicleLabel(vehicleid, text[], color, Float:x, Float:y, Float:z, Float:drawdistance, testlos = 0, worldid = -1, interiorid = -1, playerid = -1, Float:streamdistance = STREAMER_3D_TEXT_LABEL_SD)
{
	if(IsValidVehicle(vehicleid))
	{
		SetVehicleData(vehicleid, V_LABEL, CreateDynamic3DTextLabel(text, color, x, y, z, drawdistance, INVALID_PLAYER_ID, vehicleid, testlos, worldid, interiorid, playerid, streamdistance));
	}
	return 1;
}

stock UpdateVehicleLabel(vehicleid, color, text[])
{
	if(IsValidVehicleID(vehicleid))
	{
		if(IsValidDynamic3DTextLabel(GetVehicleData(vehicleid, V_LABEL)))
		{
			UpdateDynamic3DTextLabelText(GetVehicleData(vehicleid, V_LABEL), color, text);
		}
	}
	return 1;
}

stock DestroyVehicleLabel(vehicleid)
{
	if(IsValidVehicleID(vehicleid))
	{
		if(IsValidDynamic3DTextLabel(GetVehicleData(vehicleid, V_LABEL)))
		{
			DestroyDynamic3DTextLabel(GetVehicleData(vehicleid, V_LABEL));
			SetVehicleData(vehicleid, V_LABEL, Text3D: -1);
		}
	}
	return 1;
}