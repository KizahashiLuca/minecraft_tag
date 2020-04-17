###############################
## Minecraft Version 1.15.2
## Minecraft Tag
## Author : KizahashiLuca
## Date   : 03 Apr 2020
## Version: alpha-0.2
###############################

## Process the timer system
function mtag:system/time/time

## Start the game
execute if score Time TICK matches 0 if score Time SECOND matches 0 run function mtag:system/preparation/title