###############################
## Minecraft Version 1.15.2
## Minecraft Tag
## Author : KizahashiLuca
## Date   : 03 Apr 2020
## Version: alpha-0.2
###############################

execute if score @s SNOWBALL matches 0 run scoreboard players add Time SNOWBALL 1
execute if score @s SNOWBALL matches 0 run scoreboard players operation @s SNOWBALL = Time SNOWBALL

scoreboard players operation Time TEMP_SNOWBALL = @s SNOWBALL
execute as @e[type=minecraft:area_effect_cloud,tag=Snowball] if score @s SNOWBALL = Time TEMP_SNOWBALL run kill @s
execute if score Time TEMP_SNOWBALL matches 1.. at @s run summon minecraft:area_effect_cloud ~ ~ ~ {Tags:["Snowball","NoHit"],NoGravity:1b,Particle:"block air",Radius:0.5f,Duration:20}
execute as @e[type=minecraft:area_effect_cloud,tag=Snowball,tag=NoHit,sort=nearest,limit=1] if score Time TEMP_SNOWBALL matches 1.. run scoreboard players operation @s SNOWBALL = Time TEMP_SNOWBALL
execute as @e[type=minecraft:area_effect_cloud,tag=Snowball,tag=NoHit,sort=nearest,limit=1] if score Time TEMP_SNOWBALL matches 1.. run tag @s remove NoHit