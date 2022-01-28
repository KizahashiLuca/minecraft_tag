###############################
## Minecraft Version 1.18
## Minecraft Tag
## Author : KizahashiLuca
## Date   : 27 Jan 2022
## Version: alpha-0.3
###############################

## Remove variables
## the game system
scoreboard objectives remove GamePhase
scoreboard objectives remove CountOfPlayers
scoreboard objectives remove WaitingTime
scoreboard objectives remove TimeLimit
scoreboard objectives remove PlayerNumber
## the time system
scoreboard objectives remove BossbarMax
scoreboard objectives remove BossbarVal
scoreboard objectives remove Second
scoreboard objectives remove Tick
scoreboard objectives remove GiveItemTime
scoreboard objectives remove 100
scoreboard objectives remove 20
## the item system
scoreboard objectives remove KindOfItems
scoreboard objectives remove KindsOnesDigit
scoreboard objectives remove KindsTensDigit
scoreboard objectives remove KindsTempDigit
scoreboard objectives remove AddedStick
scoreboard objectives remove AddedPearl
scoreboard objectives remove AddedConduit
scoreboard objectives remove AddedCrossbow
scoreboard objectives remove AddedSnowball
scoreboard objectives remove AddedGoldSword
scoreboard objectives remove AddedCarrotStick
scoreboard objectives remove AddedInvis
scoreboard objectives remove AddedSpeed
scoreboard objectives remove AddedJump
## the tagged system
scoreboard objectives remove TaggedTimes
## the snowball system
scoreboard objectives remove SnowballNumber
scoreboard objectives remove TempSnowballNum
## the mine system
scoreboard objectives remove DropConduit
## the glowing system
scoreboard objectives remove UseCarrotStick
## Remove players
scoreboard players reset #mtag
scoreboard players reset @a

## Remove bossbar
bossbar remove mtag:bossbar

## Reset title
title @a[predicate=mtag:player/tagged] actionbar [""]

## Remove team
team remove MTAG_Player

## Kill entities
kill @e[type=minecraft:area_effect_cloud]
kill @e[type=minecraft:snowball]
kill @e[type=minecraft:spectral_arrow]
kill @e[type=minecraft:arrow]
kill @e[type=minecraft:item]
effect clear @a
clear @a

## Remove tags
tag @a remove MTAG_Host
tag @a remove MTAG_Tagged
tag @a remove MTAG_ItemPassed
tag @a remove NoHit
tag @a remove DetectHit
tag @a remove Snowball

## Set gamemode
gamemode adventure @a

## Clear inventory
clear @a

## Set gamerule
gamerule keepInventory false
gamerule showDeathMessages true
gamerule sendCommandFeedback true
gamerule announceAdvancements true
gamerule doLimitedCrafting false