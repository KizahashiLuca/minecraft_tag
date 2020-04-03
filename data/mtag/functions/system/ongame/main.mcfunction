###############################
## Minecraft Version 1.15.2
## Minecraft Tag
## Author : KizahashiLuca
## Date   : 03 Apr 2020
## Version: alpha-0.2
###############################

## Process the timer system
function mtag:system/time

## Detect mines (conduits)
execute as @e[type=item,nbt={OnGround:1b,Item:{id:"minecraft:conduit",tag:{display:{Name:"\"地雷\"",Tag:"\"Mine\""}}}}] at @s if entity @p[distance=..2] run function mtag:system/ongame/mine_system

## Process the tagging system
execute as @a[team=Player,advancements={mtag:attacked_from_tagged=true}] run function mtag:system/ongame/tag_system

## Reset an advancement
advancement revoke @a only mtag:attacked_from_tagged

## Give items
scoreboard players operation Time TEMP_SECOND = Time SECOND
scoreboard players operation Time TEMP_SECOND %= Time 100
execute if score Time TICK matches 0 if score Time TEMP_SECOND matches 0 run function mtag:system/item/item_branch

## Process the sound system
execute as @a if score Time TICK matches 0 if score Time SECOND matches 4..10 run playsound minecraft:item.trident.return master @s ~ ~ ~ 1 1 1
execute as @a if score Time TICK matches 0 if score Time SECOND matches 1..3 run playsound minecraft:item.trident.throw master @s ~ ~ ~ 1 1 1
execute as @a if score Time TICK matches 0 if score Time SECOND matches 1 run playsound minecraft:item.trident.thunder master @s ~ ~ ~ 1 1 1

## Terminate the game
execute if score Time TICK matches 0 if score Time SECOND matches 0 run function mtag:system/termination/title