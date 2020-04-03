###############################
## Minecraft Version 1.15.2
## Minecraft Tag
## Author : KizahashiLuca
## Date   : 03 Apr 2020
## Version: alpha-0.2
###############################

## Process the timer system
function mtag:system/time

## Process the sound system
execute as @a if score Time TICK matches 19 if score Time SECOND matches 4..10 run playsound minecraft:item.trident.return master @s ~ ~ ~ 1 1 1
execute as @a if score Time TICK matches 19 if score Time SECOND matches 1..3 run playsound minecraft:item.trident.throw master @s ~ ~ ~ 1 1 1
execute as @a if score Time TICK matches 0 if score Time SECOND matches 1 run playsound minecraft:item.trident.thunder master @s ~ ~ ~ 1 1 1

## Start the game
execute if score Time TICK matches 0 if score Time SECOND matches 1 run function mtag:system/preparation/title