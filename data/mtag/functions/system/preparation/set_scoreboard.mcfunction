###############################
## Minecraft Version 1.15.2
## Minecraft Tag
## Author : KizahashiLuca
## Date   : 22 Feb 2020
## Version: alpha-0.1
###############################

## Tag host player
tag @p[sort=nearest] add Host

## Add variables for the game system
scoreboard objectives add GAME dummy
scoreboard objectives add NUM dummy
scoreboard objectives add WaitingTime dummy
scoreboard objectives add TimeLimit dummy
## Add variables for the time system
scoreboard objectives add SECOND dummy
scoreboard objectives add TICK dummy
scoreboard objectives add 20 dummy

## Set variables
scoreboard players set Time GAME 10
scoreboard players set Time NUM 0
scoreboard players set Time WaitingTime 60
scoreboard players set Time TimeLimit 600
scoreboard players set Time SECOND 60
scoreboard players set Time TICK 0
scoreboard players set Time 20 20

## Set team
team add Player
team join Player @a[gamemode=!spectator]
team modify Player nametagVisibility never
team modify Player seeFriendlyInvisibles false
team modify Player friendlyFire true

## Set gamemode
gamemode adventure @a[team=Player]
difficulty peaceful

## Set effects
effect give @a[team=Player] minecraft:resistance 1000000 4 true

## Reset an advancement
advancement revoke @a[team=Player] only mtag:attacked_from_tagged

## Count number of players
execute as @a[team=Player] run scoreboard players add Time NUM 1