//
// Spawn : Corpse Death Script
//

#include "spawn_functions"

// Declare Functions from Includes
void TransferAllItems(object oCreature, object oTarget, int nCreatureItems, int nEquippedItems);

void main()
{
    object oDeadNPC = OBJECT_SELF;
    object oLootCorpse, oBlood;
    location lCorpseLoc = GetLocation(oDeadNPC);
    float fCorpseDecay = GetLocalFloat(oDeadNPC, "CorpseDecay");
    int nCorpseDecayType = GetLocalInt(oDeadNPC, "CorpseDecayType");
    int nCorpseGold, nCorpseInv, nCorpseEquip;

    object oKiller = GetLastDamager();
    if (oKiller == OBJECT_INVALID)
    {
        oKiller = GetLastKiller();
    }

    if (fCorpseDecay > 0.0)
    {
        //Protect our corpse from decaying
        SetIsDestroyable(FALSE, FALSE, FALSE);

        // Create Corpse and Lootable Corpse
        oLootCorpse = CreateObject(OBJECT_TYPE_PLACEABLE, "invis_corpse_obj", lCorpseLoc, FALSE);

        SetLocalObject(oLootCorpse, "HostBody", oDeadNPC);
        SetLocalObject(oDeadNPC, "Corpse", oLootCorpse);

        switch (nCorpseDecayType)
        {
            // Type 0:
            // Inventory Items
            case 0:
                nCorpseGold = TRUE;
                nCorpseInv = TRUE;
                nCorpseEquip = FALSE;
            break;

            // Type 1:
            // Inventory & Equipped Items
            case 1:
                nCorpseGold = TRUE;
                nCorpseInv = TRUE;
                nCorpseEquip = TRUE;
            break;

            // Type 2:
            // Inventory Items, if PC Killed
            case 2:
                if (GetIsPC(oKiller) == TRUE || GetIsPC(GetMaster(oKiller)) == TRUE)
                {
                    nCorpseGold = TRUE;
                    nCorpseInv = TRUE;
                    nCorpseEquip = FALSE;
                }
            break;

            // Type 3:
            // Inventory & Equipped Items, if PC Killed
            case 3:
                if (GetIsPC(oKiller) == TRUE || GetIsPC(GetMaster(oKiller)) == TRUE)
                {
                    nCorpseGold = TRUE;
                    nCorpseInv = TRUE;
                    nCorpseEquip = TRUE;
                }
            break;
        }

        // Get Gold
        if (nCorpseGold == TRUE)
        {
            int nAmtGold = GetGold(oDeadNPC);
            if(nAmtGold)
            {
                object oGold = CreateItemOnObject("nw_it_gold001", oLootCorpse, nAmtGold);
                AssignCommand(oLootCorpse, TakeGoldFromCreature(nAmtGold, oDeadNPC,TRUE));
            }
        }

        // Get Inventory & Equipment
        if (nCorpseInv == TRUE)
        {
            TransferAllItems(oDeadNPC, oLootCorpse, FALSE, nCorpseEquip);
        }

        // Set Corpse to Decay
        DelayCommand(fCorpseDecay, SetLocalInt(oLootCorpse, "DecayTimerExpired", TRUE));
        DelayCommand(fCorpseDecay, ExecuteScript("spawn_corpse_dcy", oLootCorpse));
    }
}
