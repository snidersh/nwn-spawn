

   SpawnBanners v1.0
   SpawnB_Readme


   Neshke Narovken
   neshke@anamnaeireann.org


 USAGE:

   Add Following to Module OnActivateItem:

     Sample Script:   'spawnb_sample_ai'

     #include "spawnb_main"
     void main()
     {
         object oPC = GetItemActivator();
         object oItem = GetItemActivated();
         object oTarget = GetItemActivatedTarget();
         location lTarget = GetItemActivatedTargetLocation();
         if (GetTag(oItem) == "RodofSpawnBanners")
         {
            SpawnBanner(oPC, oItem, oTarget, lTarget);
         }
     }

  Create Rod of Spawn Banners using DM Creator
  Category : Items : Miscellaneous : Other

  Use on Ground to Show/Hide Spawn Banners
  Use on Spawn Banner to control Spawn

