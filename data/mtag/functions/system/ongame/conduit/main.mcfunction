###############################
## Minecraft Version 1.20
## Minecraft Tag
## Author : KizahashiLuca
## Date   : 18 Jun 2023
## Version: alpha-0.4
###############################

## Conduit
execute as @a[predicate=mtag:system/ongame/conduit/detect_user] at @s run function mtag:system/ongame/conduit/set_conduit
execute as @e[predicate=mtag:system/ongame/conduit/detect_position_set] at @s if entity @p[predicate=mtag:player/team,distance=..2] run function mtag:system/ongame/conduit/detect_conduit