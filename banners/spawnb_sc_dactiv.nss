//
// Spawn Banner
// Deactivate Spawn
//
void main()
{
    object oPC = GetPCSpeaker();
    object oSpawn = GetLocalObject(OBJECT_SELF, "ParentSpawn");
    SetLocalInt(oSpawn, "SpawnDeactivated", TRUE);
    DestroyObject(OBJECT_SELF);
    object oBanner = CreateObject(OBJECT_TYPE_PLACEABLE, "spawn_ban_d", GetLocation(oSpawn));
    SetLocalObject(oBanner, "ParentSpawn", oSpawn);
    FloatingTextStringOnCreature("Spawn Deactivated", oPC);
}
