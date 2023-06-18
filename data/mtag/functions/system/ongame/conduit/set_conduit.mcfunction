###############################
## Minecraft Version 1.20
## Minecraft Tag
## Author : KizahashiLuca
## Date   : 18 Jun 2023
## Version: alpha-0.4
###############################

## Detect conduit set
execute unless score @e[predicate=mtag:system/ongame/conduit/detect_position,sort=nearest,limit=1] PlayerNumber matches 1.. run scoreboard players operation @e[predicate=mtag:system/ongame/conduit/detect_position,sort=nearest,limit=1] PlayerNumber = @s PlayerNumber

## Set scoreboard
scoreboard players remove @s[predicate=mtag:system/ongame/conduit/detect_user_score] DropConduit 1