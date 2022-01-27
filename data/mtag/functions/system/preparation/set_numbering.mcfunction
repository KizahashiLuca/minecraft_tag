###############################
## Minecraft Version 1.15.2
## Minecraft Tag
## Author : KizahashiLuca
## Date   : 03 Apr 2020
## Version: alpha-0.2
###############################

## Number the players
scoreboard players operation @p[predicate=mtag:system/preparation/not_numbered,sort=random] PlayerNumber = #mtag PlayerNumber
execute as @a[predicate=mtag:system/preparation/not_numbered] if score @s PlayerNumber = #mtag PlayerNumber run tag @s add MTAG_NumberedPlayer

## Loop
scoreboard players add #mtag PlayerNumber 1
execute if score #mtag PlayerNumber <= #mtag CountOfPlayers run function mtag:system/preparation/set_numbering
