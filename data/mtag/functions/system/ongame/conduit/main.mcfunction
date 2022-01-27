###############################
## Minecraft Version 1.15.2
## Minecraft Tag
## Author : KizahashiLuca
## Date   : 27 Jan 2022
## Version: alpha-0.3
###############################

## Conduit
execute as @a[predicate=mtag:system/ongame/conduit/detect_user] run function mtag:system/ongame/conduit/set_conduit
execute as @e[predicate=mtag:system/ongame/conduit/detect_position_set] at @s if entity @p[predicate=mtag:player/team,distance=..2] run function mtag:system/ongame/conduit/detect_conduit