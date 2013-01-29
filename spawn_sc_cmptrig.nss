//
// Camp Trigger Scripts
//
#include "spawn_functions"
//
object GetChildByTag(object oSpawn, string sChildTag);
object GetChildByNumber(object oSpawn, int nChildNum);
object GetSpawnByID(int nSpawnID);
void DeactivateSpawn(object oSpawn);
void DeactivateSpawnsByTag(string sSpawnTag);
void DeactivateAllSpawns();
void DespawnChildren(object oSpawn);
void DespawnChildrenByTag(object oSpawn, string sSpawnTag);
//
//
void main()
{
    // Initialize Variables
    object oSpawned;
    string sObject;
    int iCount, nCampNumP, nCampNumC;

    // Retrieve Script
    int nCampTriggerScript = GetLocalInt(OBJECT_SELF, "CampTriggerScript");

    // Invalid Script
    if (nCampTriggerScript == -1)
    {
        return;
    }

//
// Only Make Modifications Between These Lines
// -------------------------------------------


    // Destroy Camp
    if (nCampTriggerScript == 0)
    {
        // Retrieve Variables
        nCampNumP = GetLocalInt(OBJECT_SELF, "CampNumP");
        nCampNumC = GetLocalInt(OBJECT_SELF, "CampNumC");

        // Destroy Placeables
        for (iCount = 1; iCount <= nCampNumP; iCount++)
        {
            sObject = "CampP" + IntToString(iCount - 1);
            oSpawned = GetLocalObject(OBJECT_SELF, sObject);
            DestroyObject(oSpawned);
        }

        // Destroy Creatures
        for (iCount = 1; iCount <= nCampNumC; iCount++)
        {
            sObject = "CampC" + IntToString(iCount - 1);
            oSpawned = GetLocalObject(OBJECT_SELF, sObject);
            if (GetIsDead(oSpawned) == FALSE)
            {
                ApplyEffectToObject(DURATION_TYPE_INSTANT, EffectDamage(GetCurrentHitPoints(oSpawned)), oSpawned, 0.0);
                ExecuteScript("spawn_corpse_dth", oSpawned);
            }
        }

        // Destroy Placeholder
        DestroyObject(OBJECT_SELF, 1.0);
    }
    //


// -------------------------------------------
// Only Make Modifications Between These Lines
//
}
