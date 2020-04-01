###############################
## Minecraft Version 1.15.2
## Minecraft Tag
## Author : KizahashiLuca
## Date   : 01 Apr 2020
## Version: alpha-0.2
###############################

## Detect whether holding the game
execute if entity @p[tag=Host] run function mtag:system/termination/on_holding_game
execute unless entity @p[tag=Host] run function mtag:system/preparation/main