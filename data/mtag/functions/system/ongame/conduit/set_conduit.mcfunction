###############################
## Minecraft Version 1.15.2
## Minecraft Tag
## Author : KizahashiLuca
## Date   : 03 Apr 2020
## Version: alpha-0.2
###############################

## Detect conduit set
execute at @s unless score @e[predicate=mtag:system/ongame/conduit/detect_position,sort=nearest,limit=1] PlayerNumber matches 1.. run scoreboard players operation @e[predicate=mtag:system/ongame/conduit/detect_position,sort=nearest,limit=1] PlayerNumber = @s PlayerNumber
scoreboard players remove @a[predicate=mtag:system/ongame/conduit/detect_user_score] DropConduit 1
scoreboard players reset @a[predicate=mtag:system/ongame/conduit/detect_user_score_error] DropConduit