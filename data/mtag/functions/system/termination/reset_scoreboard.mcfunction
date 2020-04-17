###############################
## Minecraft Version 1.15.2
## Minecraft Tag
## Author : KizahashiLuca
## Date   : 03 Apr 2020
## Version: alpha-0.2
###############################

## Remove variables for the game system
scoreboard objectives remove GAME
scoreboard objectives remove NUM
scoreboard objectives remove WaitingTime
scoreboard objectives remove TimeLimit
## Remove variables for the time system
scoreboard objectives remove SECOND
scoreboard objectives remove TICK
scoreboard objectives remove TEMP_SECOND
scoreboard objectives remove TEMP_TICK
scoreboard objectives remove 100
scoreboard objectives remove 20
## Remove variables for the tagged system
scoreboard objectives remove TAG_TIMES
## Remove variables for the tagged number
scoreboard objectives remove TAG_NUMBER
## Remove variables for the snowball system
scoreboard objectives remove SNOWBALL
scoreboard objectives remove TEMP_SNOWBALL
## Remove variables for the glowing system
scoreboard objectives remove CARROTSTICK
## Remove players
scoreboard players reset Time
scoreboard players reset @a

## Remove bossbar
bossbar remove bossbar

## Reset title
title @a[tag=Tagged] actionbar [""]

## Remove team
team remove Player

## Kill entities
kill @e[type=minecraft:area_effect_cloud]
kill @e[type=minecraft:snowball]
kill @e[type=minecraft:spectral_arrow]
kill @e[type=minecraft:arrow]
kill @e[type=minecraft:item]
effect clear @a
clear @a

## Remove tags
tag @a remove Host
tag @a remove Tagged
tag @a remove PassItem
tag @a remove NoItem
tag @a remove NoHit
tag @a remove DetectHit
tag @a remove Snowball

## Change gamerules
gamemode adventure @a
gamerule showDeathMessages true
gamerule sendCommandFeedback true
gamerule doLimitedCrafting false