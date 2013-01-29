//
// Spawn Loot
//
int ParseFlagValue(string sName, string sFlag, int nDigits, int nDefault);
int ParseSubFlagValue(string sName, string sFlag, int nDigits, string sSubFlag, int nSubDigits, int nDefault);
object GetChildByTag(object oSpawn, string sChildTag);
object GetChildByNumber(object oSpawn, int nChildNum);
object GetSpawnByID(int nSpawnID);
void DeactivateSpawn(object oSpawn);
void DeactivateSpawnsByTag(string sSpawnTag);
void DeactivateAllSpawns();
void DespawnChildren(object oSpawn);
void DespawnChildrenByTag(object oSpawn, string sSpawnTag);
void CleanInventory(object oSpawned);
//
//
void LootTable(object oSpawn, object oSpawned, int nLootTable)
{
    // Initialize
    object oItem;
    string sTemplate;
    int nStack;

//
// Only Make Modifications Between These Lines
// -------------------------------------------


    // Table 00
    if (nLootTable == 0)
    {
        // 50% Chance
        if (d100(1) > 50)
        {
            // Created Custom Item with ResRef of magicsword
            sTemplate = "magicsword";
            nStack = 1;
        }
        oItem = CreateItemOnObject(sTemplate, oSpawned, nStack);
    }
    //

    // Random Gold and *Nothing* Else
    if (nLootTable == 1)
    {
        CleanInventory(oSpawned);
        // Add our Items: Gold for Example
        nStack = Random(50) + 1;
        oItem = CreateItemOnObject("nw_it_gold001", oSpawned, nStack);
    }
    //


// -------------------------------------------
// Only Make Modifications Between These Lines
//

}
