###############################
## Minecraft Version 1.18
## Minecraft Tag
## Author : KizahashiLuca
## Date   : 27 Jan 2022
## Version: alpha-0.3
###############################

## Set snowball number
execute as @e[type=minecraft:snowball] at @s run function mtag:system/ongame/snowball/set_snowball_number

## Detect hit snowball
execute as @e[type=minecraft:area_effect_cloud,tag=Snowball,scores={SnowballNumber=1..}] run function mtag:system/ongame/snowball/detect_hit_snowball

## Reset scoreboard
scoreboard players set #mtag TempSnowballNum 0