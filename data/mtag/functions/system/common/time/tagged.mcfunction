###############################
## Minecraft Version 1.15.2
## Minecraft Tag
## Author : KizahashiLuca
## Date   : 03 Apr 2020
## Version: alpha-0.2
###############################

## Set tagged time
scoreboard players add @s Tick 1
scoreboard players operation @s Tick %= #mtag 20
execute if score @s Tick matches 0 run scoreboard players add @s Second 1