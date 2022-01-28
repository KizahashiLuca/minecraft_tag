###############################
## Minecraft Version 1.18
## Minecraft Tag
## Author : KizahashiLuca
## Date   : 27 Jan 2022
## Version: alpha-0.3
###############################

## Summon cloud
summon minecraft:area_effect_cloud ~ ~ ~ {Tags:["Snowball","NoHitSnowball"],NoGravity:1b,Particle:"block air",Radius:0.5f,Duration:20}

## Set snowball number
scoreboard players operation @e[type=minecraft:area_effect_cloud,tag=Snowball,tag=NoHitSnowball,sort=nearest,limit=1] SnowballNumber = #mtag TempSnowballNum

## Remove a tag
tag @e[type=minecraft:area_effect_cloud,tag=Snowball,tag=NoHitSnowball,sort=nearest,limit=1] remove NoHitSnowball