###############################
## Minecraft Version 1.20
## Minecraft Tag
## Author : KizahashiLuca
## Date   : 18 Jun 2023
## Version: alpha-0.4
###############################

## Number the players
scoreboard players operation @p[predicate=mtag:system/preparation/not_numbered,sort=random] PlayerNumber = #mtag PlayerNumber
execute as @a[predicate=mtag:system/preparation/not_numbered] if score @s PlayerNumber = #mtag PlayerNumber run tag @s add MTAG_NumberedPlayer

## Loop
scoreboard players add #mtag PlayerNumber 1
execute if score #mtag PlayerNumber <= #mtag CountOfPlayers run function mtag:system/preparation/set_numbering
