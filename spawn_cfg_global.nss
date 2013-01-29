//
// Spawn Global Defaults
//

void SetGlobalDefaults()
{
//
// Only Make Modifications Between These Lines
// -------------------------------------------


    // IS
    // InitialState
    int nInitialState = 1;
    int nInitialDelay = -1;

    // FT
    // FlagTable
    int nFlagTable = -1;
    int nFlagTableNumber = 0;

    // SD00|M00
    // SpawnDelay
    int nSpawnDelay = 0;
    int nDelayRandom = -1;
    int nDelayMinimum = 0;

    // SN00|M00
    // SpawnNumber
    int nSpawnNumber = 1;
    int nSpawnNumberMin = -1;
    int nSpawnAllAtOnce = FALSE;
    int nSpawnNumberAtOnce = 0;

    // DO|D
    // DayOnly
    int nDayOnly = FALSE;
    int nDayOnlyDespawn = FALSE;

    // NO|D
    // NightOnly
    int nNightOnly = FALSE;
    int nNightOnlyDespawn = FALSE;

    // DY00|T00
    // SpawnDay
    int nSpawnDayStart = -1;
    int nSpawnDayEnd = -1;

    // HR00|T00
    // SpawnHour
    int nSpawnHourStart = -1;
    int nSpawnHourEnd = -1;

    // RW|R00
    // RandomWalk
    int nRandomWalk = FALSE;
    int nWanderRange = 0;

    // RH|D00
    // ReturnHome
    int nReturnHome = FALSE;
    int nReturnHomeRange = 1;

    // PC|00|R
    // PCCheck
    int nPCCheck = -1;
    int nPCCheckDelay = 0;
    int nPCReset = FALSE;

    // RG000|C00
    // RandomGold
    int nRandomGold = 0;
    int nGoldChance = 100;

    // FX000|D000
    // SpawnEffects
    int nSpawnEffect = 0;
    int nDespawnEffect = 0;

    // PR00|T0
    // PatrolRoutes
    int nPatrolRoute = -1;
    int nRouteType = 0;

    // PL0|T00
    // Placeables
    int nPlaceable = -1;
    int nPlaceableType = 0;
    int nTrapDisabled = 100;

    // SG
    // SpawnGroup
    int nSpawnGroup = FALSE;

    // LT00
    // LootTable
    int nLootTable = -1;

    // DS0|S000
    // SpawnDeactivation
    int nDeactivateSpawn = -1;
    int nDeactivateScript = -1;

    // DI00
    // DeactivationInfo
    int nDeactivationInfo = -1;

    // CL00|M00
    // ChildLifespan
    int nChildLifespanMax = -1;
    int nChildLifespanMin = -1;

    // SR00|M00
    // SpawnRadius
    int nSpawnRadius = 0;
    int nSpawnRadiusMin = 0;

    // SU00
    // SpawnUnseen
    int nSpawnUnseen = 0;

    // CD000|T0
    // CorpseDecay
    int nCorpseDecay = 0;
    int nCorpseDecayType = 0;

    // CM|D000
    // SpawnCamp
    int nSpawnCamp = FALSE;
    int nCampDecay = 0;

    // SS000|D000
    // SpawnScript
    int nSpawnScript = -1;
    int nDespawnScript = -1;

    // DT000
    // DeathScript
    int nDeathScript = -1;

    // CC00
    // SpawnCheckCustom
    int nSpawnCheckCustom = -1;

    // CP00|R00
    // SpawnCheckPCs
    int nSpawnCheckPCs = -1;
    int nCheckPCsRadius = -1;

    // TR00|D00
    // SpawnTrigger
    int nSpawnTrigger = 0;
    int nDespawnTrigger = 0;

    // AE000|D000
    // AreaEffect
    int nSpawnAreaEffect = 0;
    int nAreaEffectDuration = 5;

    // OE000|D000
    // ObjectEffect
    int nObjectEffect = 0;
    int nObjectEffectDuration = -1;

    // RS00
    // RandomSpawn
    int nRandomSpawn = 100;

    // FC0
    // SpawnFaction
    int nSpawnFaction = -1;

    // AL0|S00
    int nSpawnAlignment = -1;
    int nAlignmentShift = 10;

    // HB000
    // HeartbeatScript
    int nHeartbeatScript = -1;

    // SL00|R00
    // SpawnLocation
    int nSpawnLocation = -1;
    int nSpawnLocationMin = -1;

    // SF
    // SpawnFacing
    int nSpawnFacing = FALSE;

    // EE0|R00
    // EntranceExit
    int nEntranceExit = -1;
    int nEntranceExitMin = -1;
    int nExit = -1;
    int nExitMin = -1;

    // HL
    // HealChildren
    int nHealChildren = 0;

    // IT
    // SpawnItem
    int nSpawnItem = FALSE;

    // ST
    // SpawnSit
    int nSpawnSit = FALSE;

    // PT
    // SpawnPlot
    int nSpawnPlot = FALSE;

    // SM
    // SpawnMerchant
    int nSpawnMerchant = FALSE;

    // Sittable Tag
    string sSeatTag = "Seat";


// -------------------------------------------
// Only Make Modifications Between These Lines
//

    // Record Values
    object oModule = GetModule();
    SetLocalInt(oModule, "df_InitialState", nInitialState);
    SetLocalInt(oModule, "df_InitialDelay", nInitialDelay);
    SetLocalInt(oModule, "df_FlagTable", nFlagTable);
    SetLocalInt(oModule, "df_FlagTableNumber", nFlagTableNumber);
    SetLocalInt(oModule, "df_SpawnDelay", nSpawnDelay);
    SetLocalInt(oModule, "df_DelayRandom", nDelayRandom);
    SetLocalInt(oModule, "df_DelayMinimum", nDelayMinimum);
    SetLocalInt(oModule, "df_SpawnNumber", nSpawnNumber);
    SetLocalInt(oModule, "df_SpawnNumberMin", nSpawnNumberMin);
    SetLocalInt(oModule, "df_SpawnAllAtOnce", nSpawnAllAtOnce);
    SetLocalInt(oModule, "df_SpawnNumberAtOnce", nSpawnNumberAtOnce);
    SetLocalInt(oModule, "df_DayOnly", nDayOnly);
    SetLocalInt(oModule, "df_DayOnlyDespawn", nDayOnlyDespawn);
    SetLocalInt(oModule, "df_NightOnly", nNightOnly);
    SetLocalInt(oModule, "df_NightOnlyDespawn", nNightOnlyDespawn);
    SetLocalInt(oModule, "df_SpawnDayStart", nSpawnDayStart);
    SetLocalInt(oModule, "df_SpawnDayEnd", nSpawnDayEnd);
    SetLocalInt(oModule, "df_SpawnHourStart", nSpawnHourStart);
    SetLocalInt(oModule, "df_SpawnHourEnd", nSpawnHourEnd);
    SetLocalInt(oModule, "df_RandomWalk", nRandomWalk);
    SetLocalInt(oModule, "df_WanderRange", nWanderRange);
    SetLocalInt(oModule, "df_ReturnHome", nReturnHome);
    SetLocalInt(oModule, "df_ReturnHomeRange", nReturnHomeRange);
    SetLocalInt(oModule, "df_PCCheck", nPCCheck);
    SetLocalInt(oModule, "df_PCCheckDelay", nPCCheckDelay);
    SetLocalInt(oModule, "df_PCReset", nPCReset);
    SetLocalInt(oModule, "df_RandomGold", nRandomGold);
    SetLocalInt(oModule, "df_GoldChance", nGoldChance);
    SetLocalInt(oModule, "df_SpawnEffect", nSpawnEffect);
    SetLocalInt(oModule, "df_DespawnEffect", nDespawnEffect);
    SetLocalInt(oModule, "df_PatrolRoute", nPatrolRoute);
    SetLocalInt(oModule, "df_RouteType", nRouteType);
    SetLocalInt(oModule, "df_Placeable", nPlaceable);
    SetLocalInt(oModule, "df_PlaceableType", nPlaceableType);
    SetLocalInt(oModule, "df_TrapDisabled", nTrapDisabled);
    SetLocalInt(oModule, "df_SpawnGroup", nSpawnGroup);
    SetLocalInt(oModule, "df_LootTable", nLootTable);
    SetLocalInt(oModule, "df_DeactivateSpawn", nDeactivateSpawn);
    SetLocalInt(oModule, "df_DeactivateScript", nDeactivateScript);
    SetLocalInt(oModule, "df_DeactivationInfo", nDeactivationInfo);
    SetLocalInt(oModule, "df_ChildLifespanMax", nChildLifespanMax);
    SetLocalInt(oModule, "df_ChildLifespanMin", nChildLifespanMin);
    SetLocalInt(oModule, "df_SpawnRadius", nSpawnRadius);
    SetLocalInt(oModule, "df_SpawnRadiusMin", nSpawnRadiusMin);
    SetLocalInt(oModule, "df_SpawnUnseen", nSpawnUnseen);
    SetLocalInt(oModule, "df_CorpseDecay", nCorpseDecay);
    SetLocalInt(oModule, "df_CorpseDecayType", nCorpseDecayType);
    SetLocalInt(oModule, "df_SpawnCamp", nSpawnCamp);
    SetLocalInt(oModule, "df_CampDecay", nCampDecay);
    SetLocalInt(oModule, "df_SpawnScript", nSpawnScript);
    SetLocalInt(oModule, "df_DespawnScript", nDespawnScript);
    SetLocalInt(oModule, "df_DeathScript", nDeathScript);
    SetLocalInt(oModule, "df_SpawnCheckCustom", nSpawnCheckCustom);
    SetLocalInt(oModule, "df_SpawnCheckPCs", nSpawnCheckPCs);
    SetLocalInt(oModule, "f_CheckPCsRadius", nCheckPCsRadius);
    SetLocalInt(oModule, "df_SpawnTrigger", nSpawnTrigger);
    SetLocalInt(oModule, "df_DespawnTrigger", nDespawnTrigger);
    SetLocalInt(oModule, "df_SpawnAreaEffect", nSpawnAreaEffect);
    SetLocalInt(oModule, "df_AreaEffectDuration", nAreaEffectDuration);
    SetLocalInt(oModule, "df_ObjectEffect", nObjectEffect);
    SetLocalInt(oModule, "df_ObjectEffectDuration", nObjectEffectDuration);
    SetLocalInt(oModule, "df_RandomSpawn", nRandomSpawn);
    SetLocalInt(oModule, "df_SpawnFaction", nSpawnFaction);
    SetLocalInt(oModule, "df_SpawnAlignment", nSpawnAlignment);
    SetLocalInt(oModule, "df_AlignmentShift", nAlignmentShift);
    SetLocalInt(oModule, "df_HeartbeatScript", nHeartbeatScript);
    SetLocalInt(oModule, "df_SpawnLocation", nSpawnLocation);
    SetLocalInt(oModule, "df_SpawnLocationMin", nSpawnLocationMin);
    SetLocalInt(oModule, "df_SpawnFacing", nSpawnFacing);
    SetLocalInt(oModule, "df_EntranceExit", nEntranceExit);
    SetLocalInt(oModule, "df_EntranceExitMin", nEntranceExitMin);
    SetLocalInt(oModule, "df_Exit", nExit);
    SetLocalInt(oModule, "df_ExitMin", nExitMin);
    SetLocalInt(oModule, "df_HealChildren", nHealChildren);
    SetLocalInt(oModule, "df_SpawnItem", nSpawnItem);
    SetLocalInt(oModule, "df_SpawnSit", nSpawnSit);
    SetLocalInt(oModule, "df_SpawnPlot", nSpawnPlot);
    SetLocalInt(oModule, "df_SpawnMerchant", nSpawnMerchant);
    SetLocalString(oModule, "df_SeatTag", sSeatTag);

    // Record Initialization
    SetLocalInt(oModule, "GlobalDefaultsInitialized", TRUE);
}
