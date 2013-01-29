//
//
//   SpawnBanners v1.0
//   SpawnB_Readme
//
//
//   Neshke Narovken
//   neshke@anamnaeireann.org
//
//
// USAGE:
//
//   Add Following to Module OnActivateItem:
//
//     Sample Script:   'spawnb_sample_ai'
//
//     #include "spawnb_main"
//     void main()
//     {
//         object oPC = GetItemActivator();
//         object oItem = GetItemActivated();
//         object oTarget = GetItemActivatedTarget();
//         location lTarget = GetItemActivatedTargetLocation();
//         if (GetTag(oItem) == "RodofSpawnBanners")
//         {
//            SpawnBanner(oPC, oItem, oTarget, lTarget);
//         }
//     }
//
//  Create Rod of Spawn Banners using DM Creator
//  Category : Items : Miscellaneous : Other
//
//  Use on Ground to Show/Hide Spawn Banners
//  Use on Spawn Banner to control Spawn
//


//
// Package Header
//
/*
SpawnBanners v1.0

Neshke Narovken
neshke@anamnaeireann.org

See 'spawnb__readme' for Instructions
Ignore all 'Missing Resource' Errors
See the NWN Forums for More Info

Spawn Package:
- spawnb__readme
- spawnb_main
- spawnb_cc_activ
- spawnb_cc_dactiv
- spawnb_sc_activ
- spawnb_sc_dactiv
- spawnb_sc_disp
- spawnb_sample_ai
- spawn_ban_a
- spawn_ban_d
- spawn_ban_rod
*/
