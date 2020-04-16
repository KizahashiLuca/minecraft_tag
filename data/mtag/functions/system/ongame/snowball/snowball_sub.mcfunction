###############################
## Minecraft Version 1.15.2
## Minecraft Tag
## Author : KizahashiLuca
## Date   : 03 Apr 2020
## Version: alpha-0.2
###############################

tag @s add DetectHit
scoreboard players operation Time TEMP_SNOWBALL = @s SNOWBALL
execute as @e[type=minecraft:snowball] if score @s SNOWBALL = Time TEMP_SNOWBALL run tag @e[type=minecraft:area_effect_cloud,tag=Snowball,tag=DetectHit,limit=1] remove DetectHit
execute as @e[type=minecraft:area_effect_cloud,tag=Snowball,tag=DetectHit,limit=1] run function mtag:system/ongame/snowball/snowball_cloud_effect
scoreboard players set Time TEMP_SNOWBALL 0