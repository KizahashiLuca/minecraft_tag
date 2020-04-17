###############################
## Minecraft Version 1.15.2
## Minecraft Tag
## Author : KizahashiLuca
## Date   : 03 Apr 2020
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
scoreboard objectives add TEMP_TICK dummy
scoreboard objectives add 100 dummy
scoreboard objectives add 20 dummy
## Add variables for the tagged system
scoreboard objectives add TAG_TIMES dummy
## Add variables for the tagged number
scoreboard objectives add TAG_NUMBER dummy
## Add variables for the snowball system
scoreboard objectives add SNOWBALL dummy
scoreboard objectives add TEMP_SNOWBALL dummy
## Add variables for the glowing system
scoreboard objectives add CARROTSTICK minecraft.used:minecraft.carrot_on_a_stick

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
scoreboard players set @a TAG_TIMES 0
scoreboard players set @a CARROTSTICK 0

## Set team
team add Player
team join Player @a[gamemode=!spectator]
team modify Player nametagVisibility never
team modify Player seeFriendlyInvisibles false
team modify Player friendlyFire true

## Set gamemode
gamemode adventure @a[team=Player]

## Set gamerule
gamerule keepInventory true
gamerule showDeathMessages false
gamerule sendCommandFeedback false
gamerule doLimitedCrafting true
difficulty peaceful

## Clear inventory
clear @a

## Set effects
effect give @a[team=Player] minecraft:resistance 1000000 4 true

## Count number of players
execute as @a[team=Player] run scoreboard players add Time NUM 1