###############################
## Minecraft Version 1.15.2
## Minecraft Tag
## Author : KizahashiLuca
## Date   : 22 Feb 2020
## Version: alpha-0.1
###############################

## Process the timer system
function mtag:system/time

## Process the tagging system
execute as @a[team=Player,advancements={mtag:attacked_from_tagged=true}] run function mtag:system/ongame/tag_system

## Reset an advancement
advancement revoke @a[team=Player] only mtag:attacked_from_tagged

## Process the sound system
execute as @a if score Time TICK matches 19 if score Time SECOND matches 4..10 run playsound minecraft:item.trident.return master @s ~ ~ ~ 1 1 1
execute as @a if score Time TICK matches 19 if score Time SECOND matches 1..3 run playsound minecraft:item.trident.throw master @s ~ ~ ~ 1 1 1
execute as @a if score Time TICK matches 0 if score Time SECOND matches 1 run playsound minecraft:item.trident.thunder master @s ~ ~ ~ 1 1 1

## Terminate the game
execute if score Time TICK matches 0 if score Time SECOND matches 1 run function mtag:system/termination/title