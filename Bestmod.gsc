
#include maps/mp/zombies/_zm_utility;
#include maps/mp/_utility;
#include common_scripts/utility;
#include maps/mp/zombies/_zm_perks;
init(){if(getdvar("mapname")=="zm_tomb"){level thread onplayerconnect();}}onplayerconnect(){for(;;){level waittill("connecting",player);player thread onplayerspawned();}}onplayerspawned(){level endon("game_ended");self endon("disconnect");for(;;){self waittill("spawned_player");self flag_wait("initial_blackscreen_passed");for(;;){self give_perk("specialty_quickrevive");self dodamage(self.health+69,self.origin);self waittill("player_revived");}}}
