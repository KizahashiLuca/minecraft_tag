###############################
## Minecraft Version 1.18
## Minecraft Tag
## Author : KizahashiLuca
## Date   : 27 Jan 2022
## Version: alpha-0.3
###############################

## Detect whether holding the game
execute if entity @p[predicate=mtag:player/host] run function mtag:system/termination/reject_game/on_holding_game
execute unless entity @p[predicate=mtag:player/host] run function mtag:system/preparation/main