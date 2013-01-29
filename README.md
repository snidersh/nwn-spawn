

   Spawn v6.7
   Spawn_Readme


   Neshke Narovken
   neshke@anamnaeireann.org


 INCLUDES:

   Do NOT Modify Main Script:

     Spawn:           'spawn_main'

   Do NOT Modify Helper Scripts:

     Information:     'spawn__readme'
     Functions:       'spawn_functions'
     Corpse Death:    'spawn_corpse_dth'
     Corpse Decay:    'spawn_corpse_dcy'


 CONFIGURATION:

   Modify Configuration Includes if Needed
   Only where Specified in Each File:

     Spawn Flags:     'spawn_cfg_flag'
     Spawn Groups:    'spawn_cfg_group'
     Loot Tables:     'spawn_cfg_loot'
     Spawn Camps:     'spawn_cfg_camp'
     Spawn Effects:   'spawn_cfg_fxsp'
     Area Effects:    'spawn_cfg_fxae'
     Object Effects:  'spawn_cfg_fxobj'

   Modify Check Includes if Needed
   Only where Specified in each File:

     Check PCs:       'spawn_chk_pcs'
     Custom Check:    'spawn_chk_custom'

   Modify Scripting Includes if Needed
   Only where Specified in Each File:

     Spawn/Despawn:   'spawn_sc_spawn'
     Heartbeat:       'spawn_sc_hbeat'
     Death:           'spawn_sc_death'
     Deactivation:    'spawn_sc_deactiv'
     Camp Trigger:    'spawn_sc_cmptrig'
     Patrol Stops:    'spawn_sc_patrol'


 USAGE:

   Add Following to Area Heartbeat:

     Sample Script:   'spawn_sample_hb'

     #include "spawn_main"
     Spawn();

   Add Spawn Waypoints
   All Switches Optional

   Waypoint Name:
     SP_<Spawn Flags>

   Waypoint Tag:
     Child Object Tag/ResRef
     Group Designation
     Camp Designation

   Note:
     For Custom Creatures
     You must use the ResRef

   Available Flags:
     SP00_IS0D000_ID00_FT00_SN00M00_SA00_SR00M00P_SD00M00_CL00M00_RG000C00
     _RWR00_DY00T00_HR00T00_DOD_NOD_PC00R_SF_SU00_FX000D000_PR00T0
     _PL0T00_EE00R00_EX00R00_SG_CD000T0_LT00_DS0S000_DI00_CMD000
     _SS000D000_CC00_CP00R00_TR00D00_AE000D000_OE000D000_RS00_FC0
     _AL0S00_HB000_SL00R00_RHD00_DT000_HL_IT_ST_PT_SM_CF


   Format:
     Flag|OptionalFlag


   SP|00
   : Designates Spawn Waypoint
   : SP is Required on all Spawn Waypoints
   : Performs Spawning every SP01 to SP99 heartbeats
   : Default is SP, 01 Heartbeat : 6 Seconds
   : SP00 Defaults to SP01

   IS0|D000
   : Initial State
   : Type 0 : Inactive
   : Type 1 : Default : Active
   : Optional Flag: D000
   :   Delay Initial Spawn D000 Minutes

   ID00
   : SpawnID
   : Sets LocalInt "SpawnID" to SpawnID
   : On Spawn Waypoint Object

   FT00
   : Flag Table
   : Use Flags from Table FT00
   : Flags are Defined in 'spawn_cfg_flag'


   SN00|M00
   : Spawn Number
   : Maintains a Spawn of SN00 to SN99 Children
   : Despawns Extra Children
   : Optional Flag: M00
   :   Minimum Children
   :   Will Randomly Spawn between M00 and SN00 Children

   SA|00
   : Spawn All at Once
   : Default is Spawn One Child per Cycle
   : Optional Flag: 00
   :   Spawn 00 Children per Cycle

   SR00|M00|P
   : Spawn Radius
   : Randomly Spawns Children in a
   : Location SR00 to SR99 Meters from Waypoint
   : Optional Flag: M00
   :   Minimum Radius, M00 to SR99 Meters
   : Optional Flag: P
   :   Spawn Center is Near a Random PC in Area

   SD00|M00
   : Spawn Delay
   : Delay SD00 to SD99 Minutes between Spawns
   : Optional Flag: M00
   :   Minimum Delay, M00 to SD99 Minutes

   CL00|M00
   : Child Lifespan
   : Child will Despawn after CL00 Minutes
   : Optional Flag: M00
   :   Child will Despawn after M00 to CL00 Minutes

   DY00|T00
   : Spawn Day
   : Spawn Only on Day DY00 to DY28
   : Children are Despawned during Invalid Days
   : Optional Flag: T00
   :   Spawn from Day DY00 to Day T00

   HR00|T00
   : Spawn Hour
   : Spawn Only during Hour HR00 to HR24
   : Children are Despawned during Invalid Hours
   : Optional Flag: T00
   :  Spawn from Hour HR00 to Hour T00

   DO|D
   : Day Only
   : Only Spawns at Day
   : Optional Flag: D
   :   Despawn Children at Nightfall

   NO|D
   : Night Only
   : Only Spawns at Night
   : Optional Flag: D
   :   Despawn Children at Daybreak

   RW|R00
   : Random Walk
   : Children Wander Randomly
   : Optional Flag: R00
   :   Wander Range, R00 to R99 Meters

   PC|00|R
   : PC Check
   : Only Spawn Children if PCs are in Area
   : Children are Despawned if no PCs in Area
   : Optional Flag: PC00
   :   Depawn if no PCs in Area for PC00 Minutes
   : Optional Flag: R
   :   WARNING:  This is Resource Intensive!!
   :   Reset Spawn Point if no PCs are Present

   RG000|C00
   : Random Gold
   : Generates Random Amount of Gold on Children
   : From RG000 to RG999 Gold
   : Optional Flag: C00
   :   Gold Chance C00% to C99%
   :   Default 100% chance

   SF
   : Spawn Facing
   : Set Facing of Children to Match Waypoint
   : Default Random Facing

   SU00
   : Spawn Unseen
   : Only Spawn if PCs are not within SU00 to SU99 Meters

   FX000|D000
   : Spawn Effect
   : Spawn in with Effect FX001 to FX999
   : Effects are Defined in 'spawn_cfg_fxsp'
   : Optional Flag: D000
   :   Despawn with Effect D001 to D999

   PR00|T0
   : Patrol Route
   : Assign Waypoints Route PR00 to PR99
   : Optional Flag: T0
   :   Route Type
   :   0 - Sequential
   :   1 - Circular
   :   2 - Random
   :   3 - Walk Once/Despawn
   :
   : Route Name: Variable
   : Route Tag: PR00_SN00_PS000_RN_FC_DO_NO_SC000
   :
   : PR - Route Number 00 to 99
   : SN - Stop Number 00 to 99
   : PS - Pause 000 to 999 seconds at Stop
   : RN - Run to Stop
   : SF - Face the Waypoint Direction
   : DO - Only Stop here during the Day
   : NO - Only Stop here during the Night
   : SC - Run script 000 to 999
   :      Scripts are Defined in 'spawn_sc_patrol'

   EE00|R00
   : Entrance/Exit
   : Enter and Exit at Waypoint EE00
   : Optional Flag: R
   :   Choose Random Entrance Exit
   :   from R00 to EE00
   :
   : Entrance/Exit Name: Variable
   : Entrance/Exit Tag: EE00

   EX00|R00
   : Exit
   : Exit at Waypoint EX00
   : Optional Flag: R
   :   Choose Random Exit
   :   from R00 to EX00
   :
   : Exit Name: Variable
   : Exit Tag: EX00

   PL0|T00
   : Placeable Object
   : Spawns a Placeable Object with Behavior
   :   Behavior 0: Default Behavior
   :   Behavior 1: Despawn if Empty
   :   Behavior 2: Refill if Empty
   : Optional Flag: T00
   :   Trap Disabled Chance
   :   00% to 99% chance of Trap Disabled
   :   Trap must already be part of Placeable's Template
   :   Default 100% Chance Trap is Disabled

   SG
   : Spawn Group
   : Spawn Children from Group
   : Waypoint Tag is Defined Group
   : Groups are Defined in 'spawn_cfg_group'

   CD000|T0
   : Corpse Decay
   : Decay Corpse after CD000 to CD999 Seconds
   : Default No Corpse, Standard Loot Bag
   : Optional Flag: T
   :   Corpse Inventory Type
   :   Type 0: Inventory Items
   :   Type 1: Inventory & Equipped Items
   :   Type 2: Inventory Items, if PC Killed
   :   Type 3: Inventory & Equipped Items, if PC Killed

   LT00
   : Loot Table
   : Spawn Loot on Children from Table LT00 to LT99
   : Loot Tables are Defined in 'spawn_cfg_loot'

   DS0|S000
   : Deactivate Spawn
   : Deactivate Spawn based on Condition
   :   Type 0: Deactivate if all Children are Dead
   :   Type 1: Deactivate if Spawn Number has been Spawned
   :   Type 2: Deactive Spawn until all Children are Dead
   :   Type 3: Deactivate Spawn after DI00 Children
   :   Type 4: Deactivate Spawn after DI00 Minutes
   :   Type 5: Deactivate Spawn on Area Load
   : Optional Flag: S000
   :   Run Script 000 to 999 when Spawn Deactivated
   :   Scripts are Defined in 'spawn_sc_deactiv'
   :
   : Can Reactivate by Manually Calling:
   :   SetLocalInt(oSpawn, "SpawnDeactivated", FALSE);

   DI00
   : Deactivation Information

   CM|D000
   : Spawn Camp
   : Spawns Camp of Creatures and Placeables
   : Waypoint Tag is Defined Camp
   : Despawns Camp when all Children Dead
   : Camps are Defined in 'spawn_cfg_camp'
   : Optional Flag: D000
   :   Placeables Decay 000 Seconds after Camp Despawn
   :
   : Camp Children Flags:
   :
   :   RW       : Random Walk
   :   SF       : Spawn Facing Camp
   :   SG       : Spawn Group
   :   LT00     : Loot Table
   :   CD000|T0 : Corpse Decay
   :   PL0|T00  : Placeable Type
   :             Placeable Trap Disabled

   SS000|D000
   : Spawn Script
   : Run Script 001 to 999 on Spawn
   : Scripts are Defined in 'spawn_sc_spawn'
   : Optional Flag: D000
   :   Run Script 001 to 999 on Despawn

   DT000
   : Death Script
   : Run Script 001 to 999 on Death
   : Scripts are Defined in 'spawn_sc_death'

   CP00|R00
   : Spawn Check PCs
   : Check Custom Code to see if Spawn Proceeds
   : Custom Code is Defined in 'spawn_chk_pcs'
   : Optional Flag: R00
   :   Check all PCs in Radius R00
   :   Default Check all PCs in Area

   CC00
   : Spawn Check Custom
   : Check Custom Code to see if Spawn Proceeds
   : Custom Code is Defined in 'spawn_chk_custom'

   TR00|D00
   : Spawn Trigger
   : Only Spawns if PC is within 00 Meters
   : Optional Flag: D00
   :   Despawns if PC is not within D00 Meters

   AE000|D000
   : Spawn Area Effect
   : Area Effects are Defined in 'spawn_cfg_fxae'
   : Waypoint Tag can be "AE" to Spawn only Area Effect
   : Optional Flag: D000
   :   Area Effect Duration of 000 to 999 Seconds
   :   Duration of 000 means Permanent Area Effect
   :   Default Duration is 005 Seconds

   OE000|D000
   : Object Effect
   : Object Effects are Defined in 'spawn_cfg_fxobj'
   : Optional Flag: D000
   :   Object Effect Duration of 000 to 999 Seconds
   :   Duration of 000 means Permanent Object Effect
   :   Default Duration is Permanent

   RS00
   : Random Spawn
   : Percentage Chance Spawn will Occur
   : Default 100% Chance

   FC0
   : Spawn Faction
   : Change Faction of Children:
   :   Faction 0: COMMONER
   :   Faction 1: DEFENDER
   :   Faction 2: MERCHANT
   :   Faction 3: HOSTILE
   :   Faction 4: CUSTOM
   :     Change Faction to Same as Nearest
   :     Object with Tag 'SpawnFaction'

   AL0|S00
   : Spawn Alignment
   : Shift Alignment of Children
   :   Alignment 0: Neutral
   :   Alignment 1: Law
   :   Alignment 2: Chaos
   :   Alignment 3: Good
   :   Alignment 4: Evil
   :   Alignment 5: All
   : Optional Flag: S00
   :   Shift Alignment by S00
   :   Default Shift by 10

   HB000
   : Heartbeat Script
   : Children will Run Script HB000 each Cycle
   : Scripts are Defined in 'spawn_sc_hbeat'

   SL00|R00
   : Spawn Location
   : Spawn Children at Waypoint SL00
   : Optional Flag: R
   :   Choose Random Location
   :   from R00 to SL00
   :
   : Location Name: Variable
   : Location Tag: SL00

   RH|D00
   : Return Home
   : Child will always Return to Home
   : Optional Flag: D00
   :   Child will Return to Home
   :   Only if further than D00 Meters

   HL|00
   : Heal Children if Not in Combat
   : Optional Value: 00
   :   Heal 00% per Cycle

   IT
   : Spawn Item
   : Spawnpoint Tag is Item Template

   ST
   : Spawn Sit
   : Children will Sit in Nearest Unoccupied Sittable
   : Sittable's Tag must be 'Seat'

   PT
   : Spawn Plot
   : Sets Children as Plot

   SM
   : Spawn Merchant
   : Spawnpoint Tag is Merchant Template

   CF
   : Custom Flag
   : Everything in Spawn Name after CF
   : Is Stored in LocalString "CustomFlag"
   : On Each Spawned Child




 Some Tips and Pointers
 - with Thanks to Eliha for Creating this Section

 1. The .erf script files we import for NWN usually contain .nss, .ncs and
 .utp files.

 1.1. The .nss files are the Nwn Source Scripts that are in plain text that
 we manipulate in the script editor.

 1.2. The .ncs files are the Nwn Compiled Scripts that the game engine reads
 but are garbage characters to us. Since you haven't compiled your new .nss
 files yet it can't find the corresponding .ncs files thus the errors which
 should be ignored.

 1.3. The .utp file(s) are objects such as an invisible corpse object that
 automatically gets put in the right column of the toolset where you select
 the creatures, doors, placeables, etc. under the custom button.

 2. After importing the .erf and ignoring that it couldn't find the .ncs files
 you'll need to save your module then reopen it for the new scripts to appear
 in the left column (due to the lack of a refresh button).

 3. When working in the various configuration scripts you only need to save
 them, not compile them. They are just add-ons to the main spawn_sample_hb.nss
 script and attempts to compile them will result in errors. The spawn_sc_xxxx
 files will compile but even they should just be saved like all the other
 spawn_cfg_xxxx scripts.

 4. When finished editing and saving the various configuration scripts you
 will then need to open the spawn_sample_hb script and compile it to integrate
 your new changes into the system. If you customized your scripts, saved them,
 saved the module, then loaded the game and find nothings working....chances are
 you forgot to compile the spawn_sample_hb script after making your changes.

 5. You can usually tell which script needs to be compiled by noticing which
 one needs to be put in an area heartbeat or on an object somewhere, etc.. In
 this case, we are adding the spawn_sample_hb to the area heartbeat so it is the
 main file and requires compiling.
