//
// Spawn Banner
// Activate Spawn
//
void main()
{
    object oPC = GetPCSpeaker();
    object oSpawn = GetLocalObject(OBJECT_SELF, "ParentSpawn");
    SetLocalInt(oSpawn, "SpawnDeactivated", FALSE);
    DestroyObject(OBJECT_SELF);
    object oBanner = CreateObject(OBJECT_TYPE_PLACEABLE, "spawn_ban_a", GetLocation(oSpawn));
    SetLocalObject(oBanner, "ParentSpawn", oSpawn);
    FloatingTextStringOnCreature("Spawn Activated", oPC);
}
