###############################
## Minecraft Version 1.15.2
## Minecraft Tag
## Author : KizahashiLuca
## Date   : 27 Jan 2022
## Version: alpha-0.3
###############################

## Set tagged time
scoreboard players add @s Tick 1
scoreboard players operation @s Tick %= #mtag 20
execute if score @s Tick matches 0 run scoreboard players add @s Second 1