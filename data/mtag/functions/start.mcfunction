###############################
## Minecraft Version 1.20
## Minecraft Tag
## Author : KizahashiLuca
## Date   : 18 Jun 2023
## Version: alpha-0.4
###############################

## Detect whether holding the game
execute if entity @p[predicate=mtag:player/host] run function mtag:system/termination/reject_game/on_holding_game
execute unless entity @p[predicate=mtag:player/host] run function mtag:system/preparation/main