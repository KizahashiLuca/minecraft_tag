###############################
## Minecraft Version 1.15.2
## Minecraft Tag
## Author : KizahashiLuca
## Date   : 03 Apr 2020
## Version: alpha-0.2
###############################

## Summon cloud
summon minecraft:area_effect_cloud ~ ~ ~ {Tags:["Snowball","NoHitSnowball"],NoGravity:1b,Particle:"block air",Radius:0.5f,Duration:20}

## Set snowball number
scoreboard players operation @e[type=minecraft:area_effect_cloud,tag=Snowball,tag=NoHitSnowball,sort=nearest,limit=1] SnowballNumber = #mtag TempSnowballNum

## Remove a tag
tag @e[type=minecraft:area_effect_cloud,tag=Snowball,tag=NoHitSnowball,sort=nearest,limit=1] remove NoHitSnowball