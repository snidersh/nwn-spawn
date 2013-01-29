//
// Spawn: Corpse Decay Script
//
void main()
{
    object oLootCorpse = OBJECT_SELF;
    object oHostBody = GetLocalObject(oLootCorpse, "HostBody");
    object oItem;

    // Don't Decay while Someone is Looting
    if (GetIsOpen(oLootCorpse) == TRUE)
    {
        return;
    }

    // Don't Decay if not Empty and Timer not Expired
    oItem = GetFirstItemInInventory(oLootCorpse);
    int nDecayTimerExpired = GetLocalInt(oLootCorpse, "DecayTimerExpired");
    if (oItem != OBJECT_INVALID && nDecayTimerExpired == FALSE)
    {
        return;
    }

    // Decay Body
    if (GetHasInventory(oHostBody) == TRUE)
    {
        oItem = GetFirstItemInInventory(oHostBody);
        while (oItem != OBJECT_INVALID)
        {
            DestroyObject(oItem);
            oItem = GetNextItemInInventory(oHostBody);
        }
    }
    AssignCommand(oHostBody, SetIsDestroyable(TRUE, FALSE, FALSE));
    DestroyObject(oHostBody);

    // Decay Corpse
    if (GetHasInventory(oLootCorpse) == TRUE)
    {
        oItem = GetFirstItemInInventory(oLootCorpse);
        while (oItem != OBJECT_INVALID)
        {
            DestroyObject(oItem);
            oItem = GetNextItemInInventory(oLootCorpse);
        }
    }
    DestroyObject(oLootCorpse);
}
