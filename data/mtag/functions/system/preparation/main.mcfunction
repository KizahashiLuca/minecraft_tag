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
execute if score Time NUM matches ..0 run function mtag:system/termination/shortage_players

## Prepare the waiting time
execute if score Time NUM matches 1.. run function mtag:system/preparation/waiting_start