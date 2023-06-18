###############################
## Minecraft Version 1.20
## Minecraft Tag
## Author : KizahashiLuca
## Date   : 18 Jun 2023
## Version: alpha-0.4
###############################

## Add a tag for snowball
tag @s add DetectSnowball

## Set snowball number
execute if score @s SnowballNumber matches 0 run scoreboard players add #mtag SnowballNumber 1
execute if score @s SnowballNumber matches 0 run scoreboard players operation @s SnowballNumber = #mtag SnowballNumber

## Kill cloud
scoreboard players operation #mtag TempSnowballNum = @s SnowballNumber
execute as @e[type=minecraft:area_effect_cloud,tag=Snowball] if score @s SnowballNumber = #mtag TempSnowballNum run kill @s

## Summon cloud
execute if score #mtag TempSnowballNum matches 1.. run function mtag:system/ongame/snowball/summon_cloud