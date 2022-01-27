###############################
## Minecraft Version 1.15.2
## Minecraft Tag
## Author : KizahashiLuca
## Date   : 03 Apr 2020
## Version: alpha-0.2
###############################

## Set scoreboards
function mtag:system/preparation/set_scoreboard

## Stop the game wheather shortage of players
execute if predicate mtag:player/count/shortage run function mtag:system/termination/reject_game/shortage_players

## Prepare the waiting time
execute if predicate mtag:player/count/enough run function mtag:system/preparation/waiting_start