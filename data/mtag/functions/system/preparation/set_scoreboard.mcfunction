###############################
## Minecraft Version 1.15.2
## Minecraft Tag
## Author : KizahashiLuca
## Date   : 01 Apr 2020
## Version: alpha-0.2
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
scoreboard objectives add TEMP_SECOND dummy
scoreboard objectives add 100 dummy
scoreboard objectives add 20 dummy
## Add variables for the tagged system
scoreboard objectives add TAG_TIMES dummy "鬼"
scoreboard objectives add TAG_TIMES_SWAP dummy
scoreboard objectives setdisplay sidebar.team.red TAG_TIMES

## Set variables
scoreboard players set Time GAME 10
scoreboard players set Time NUM 0
scoreboard players set Time WaitingTime 30
scoreboard players set Time TimeLimit 300
scoreboard players set Time SECOND 60
scoreboard players set Time TICK 0
scoreboard players set Time 100 100
scoreboard players set Time 20 20
scoreboard players set @a SECOND 0
scoreboard players set @a TICK 0

## Set team
team add Player
team join Player @a[gamemode=!spectator]
team modify Player nametagVisibility never
team modify Player seeFriendlyInvisibles false
team modify Player friendlyFire true
team add Tagged
team modify Tagged color red
team modify Tagged nametagVisibility never
team modify Tagged seeFriendlyInvisibles false
team modify Tagged friendlyFire true

## Set gamemode
gamemode adventure @a[team=Player]
gamemode adventure @a[team=Tagged]
difficulty peaceful
clear @a

## Set effects
effect give @a[team=Player] minecraft:resistance 1000000 4 true
effect give @a[team=Tagged] minecraft:resistance 1000000 4 true

## Reset an advancement
advancement revoke @a only mtag:attacked_from_tagged

## Count number of players
execute as @a[team=Player] run scoreboard players add Time NUM 1
execute as @a[team=Tagged] run scoreboard players add Time NUM 1