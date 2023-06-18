###############################
## Minecraft Version 1.20
## Minecraft Tag
## Author : KizahashiLuca
## Date   : 18 Jun 2023
## Version: alpha-0.4
###############################

## Set tagged time
scoreboard players add @s Tick 1
scoreboard players operation @s Tick %= #mtag 20
execute if score @s Tick matches 0 run scoreboard players add @s Second 1