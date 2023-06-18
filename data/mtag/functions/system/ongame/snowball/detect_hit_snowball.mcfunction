###############################
## Minecraft Version 1.20
## Minecraft Tag
## Author : KizahashiLuca
## Date   : 18 Jun 2023
## Version: alpha-0.4
###############################

## Add a tag for cloud
tag @s add DetectHitSnowball

## Detect hit snowball
scoreboard players operation #mtag TempSnowballNum = @s SnowballNumber
execute as @e[type=minecraft:snowball] if score @s SnowballNumber = #mtag TempSnowballNum run tag @e[type=minecraft:area_effect_cloud,tag=Snowball,tag=DetectHitSnowball,limit=1] remove DetectHitSnowball
execute as @e[type=minecraft:area_effect_cloud,tag=Snowball,tag=DetectHitSnowball,limit=1] run function mtag:system/ongame/snowball/give_effects