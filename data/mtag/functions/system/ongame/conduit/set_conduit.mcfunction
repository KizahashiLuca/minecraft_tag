###############################
## Minecraft Version 1.18
## Minecraft Tag
## Author : KizahashiLuca
## Date   : 27 Jan 2022
## Version: alpha-0.3
###############################

## Detect conduit set
execute unless score @e[predicate=mtag:system/ongame/conduit/detect_position,sort=nearest,limit=1] PlayerNumber matches 1.. run scoreboard players operation @e[predicate=mtag:system/ongame/conduit/detect_position,sort=nearest,limit=1] PlayerNumber = @s PlayerNumber

## Set scoreboard
scoreboard players remove @s[predicate=mtag:system/ongame/conduit/detect_user_score] DropConduit 1