###############################
## Minecraft Version 1.20
## Minecraft Tag
## Author : KizahashiLuca
## Date   : 18 Jun 2023
## Version: alpha-0.4
###############################

## Set scoreboards
function mtag:system/preparation/set_scoreboard

## Stop the game wheather shortage of players
execute if predicate mtag:player/count/shortage run function mtag:system/termination/reject_game/shortage_players

## Prepare the waiting time
execute if predicate mtag:player/count/enough run function mtag:system/preparation/waiting_start