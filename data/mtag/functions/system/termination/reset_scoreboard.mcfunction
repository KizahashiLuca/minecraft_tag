###############################
## Minecraft Version 1.15.2
## Minecraft Tag
## Author : KizahashiLuca
## Date   : 22 Feb 2020
## Version: alpha-0.1
###############################

## Remove variables for the game system
scoreboard objectives remove GAME
scoreboard objectives remove NUM
scoreboard objectives remove WaitingTime
scoreboard objectives remove TimeLimit
## Remove variables for the time system
scoreboard objectives remove SECOND
scoreboard objectives remove TICK
scoreboard objectives remove 20
## Remove players
scoreboard players reset Time

## Remove bossbar
bossbar remove bossbar

## Remove effects
effect clear @a[team=Player]

## Remove team
team remove Player

## Kill entities
effect clear @a
clear @a

## Remove tags
tag @a remove Host
tag @a remove Tagged

## Change gamerules
gamemode adventure @a
gamerule showDeathMessages true
gamerule sendCommandFeedback true
gamerule doLimitedCrafting false