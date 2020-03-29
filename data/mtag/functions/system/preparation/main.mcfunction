###############################
## Minecraft Version 1.15.2
## Minecraft Tag
## Author : KizahashiLuca
## Date   : 22 Feb 2020
## Version: alpha-0.1
###############################

## Set scoreboards
function mtag:system/preparation/set_scoreboard

## Stop the game wheather shortage of players
execute if score Time NUM matches ..2 run function mtag:system/termination/shortage_players

## Prepare the waiting time
execute if score Time NUM matches 3.. run function mtag:system/preparation/waiting_start