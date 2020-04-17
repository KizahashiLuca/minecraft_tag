###############################
## Minecraft Version 1.15.2
## Minecraft Tag
## Author : KizahashiLuca
## Date   : 03 Apr 2020
## Version: alpha-0.2
###############################

## Title action bar
title @a[team=Player,tag=Tagged] actionbar ["",{"text":"あなたは"},{"text":"鬼","color":"red","bold":true},{"text":"です"}]
title @a[team=!Player] actionbar ["",{"text":"鬼","color":"red","bold":true},{"text":"は "},{"selector":"@a[tag=Tagged]","color":"red","bold":true},{"text":" です"}]

## Merge data to arrows
execute as @e[type=minecraft:arrow] run data merge entity @s {pickup:2b}
execute as @e[type=minecraft:spectral_arrow] run data merge entity @s {pickup:2b}

## Detect the mines system
execute as @e[type=minecraft:item,nbt={OnGround:1b,Item:{id:"minecraft:conduit",tag:{display:{Name:"\"\\u00a7r地雷\"",Tag:"\"Mine\""}}}}] at @s if entity @p[team=Player,distance=..2] run function mtag:system/ongame/mine_system

## Detect the snowball system
execute as @e[type=minecraft:snowball] run function mtag:system/ongame/snowball/snowball_main
execute as @e[type=minecraft:area_effect_cloud,tag=Snowball,scores={SNOWBALL=1..}] run function mtag:system/ongame/snowball/snowball_sub

## Detect the glowing system
execute as @a[team=Player,nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick"}}] if score @s CARROTSTICK matches 1 run function mtag:system/ongame/glowing_system

## Process the tagging system
execute as @a[team=Player,tag=!Tagged,advancements={mtag:attacked_from_tagged=true}] run function mtag:system/ongame/tag_system

## Reset an advancement
advancement revoke @a only mtag:attacked_from_tagged

## Process the timer system
function mtag:system/time/time

## Give items
scoreboard players operation Time TEMP_TICK = Time TICK
scoreboard players operation Time TEMP_SECOND = Time SECOND
scoreboard players operation Time TEMP_TICK %= Time 20
scoreboard players operation Time TEMP_SECOND %= Time 100
execute if score Time TEMP_TICK matches 0 if score Time TEMP_SECOND matches 0 run function mtag:system/item/item_branch

## Terminate the game
execute if score Time TICK matches 0 if score Time SECOND matches 0 run function mtag:system/termination/title