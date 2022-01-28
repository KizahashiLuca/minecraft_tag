###############################
## Minecraft Version 1.18
## Minecraft Tag
## Author : KizahashiLuca
## Date   : 27 Jan 2022
## Version: alpha-0.3
###############################

## Tag host player
tag @p[sort=nearest] add MTAG_Host

## Add variables
## the game system
scoreboard objectives add GamePhase dummy
scoreboard objectives add CountOfPlayers dummy
scoreboard objectives add WaitingTime dummy
scoreboard objectives add TimeLimit dummy
scoreboard objectives add PlayerNumber dummy
## the time system
scoreboard objectives add BossbarMax dummy
scoreboard objectives add BossbarVal dummy
scoreboard objectives add Second dummy
scoreboard objectives add Tick dummy
scoreboard objectives add GiveItemTime dummy
scoreboard objectives add 100 dummy
scoreboard objectives add 20 dummy
## the item system
scoreboard objectives add KindOfItems dummy
scoreboard objectives add KindsOnesDigit dummy
scoreboard objectives add KindsTensDigit dummy
scoreboard objectives add KindsTempDigit dummy
scoreboard objectives add AddedStick dummy
scoreboard objectives add AddedPearl dummy
scoreboard objectives add AddedConduit dummy
scoreboard objectives add AddedCrossbow dummy
scoreboard objectives add AddedSnowball dummy
scoreboard objectives add AddedGoldSword dummy
scoreboard objectives add AddedCarrotStick dummy
scoreboard objectives add AddedInvis dummy
scoreboard objectives add AddedSpeed dummy
scoreboard objectives add AddedJump dummy
## the tagged system
scoreboard objectives add TaggedTimes dummy
## the snowball system
scoreboard objectives add SnowballNumber dummy
scoreboard objectives add TempSnowballNum dummy
## the mine system
scoreboard objectives add DropConduit minecraft.dropped:minecraft.conduit
## the glowing system
scoreboard objectives add UseCarrotStick minecraft.used:minecraft.carrot_on_a_stick

## Set variables
## the game system
scoreboard players set #mtag GamePhase 10
scoreboard players set #mtag CountOfPlayers 0
scoreboard players set #mtag WaitingTime 30
scoreboard players set #mtag TimeLimit 300
scoreboard players set #mtag PlayerNumber 1
scoreboard players set @a PlayerNumber 0
## the time system
scoreboard players set #mtag Second 60
scoreboard players set #mtag Tick 0
scoreboard players set #mtag 100 100
scoreboard players set #mtag 20 20
scoreboard players set @a Second 0
scoreboard players set @a Tick 0
## the item system
scoreboard players set #mtag KindOfItems 0
scoreboard players set #mtag AddedStick 1
scoreboard players set #mtag AddedPearl 1
scoreboard players set #mtag AddedConduit 1
scoreboard players set #mtag AddedCrossbow 1
scoreboard players set #mtag AddedSnowball 1
scoreboard players set #mtag AddedGoldSword 1
scoreboard players set #mtag AddedCarrotStick 1
scoreboard players set #mtag AddedInvis 1
scoreboard players set #mtag AddedSpeed 1
scoreboard players set #mtag AddedJump 1
scoreboard players set @a AddedStick 0
scoreboard players set @a AddedPearl 0
scoreboard players set @a AddedConduit 0
scoreboard players set @a AddedCrossbow 0
scoreboard players set @a AddedSnowball 0
scoreboard players set @a AddedGoldSword 0
scoreboard players set @a AddedCarrotStick 0
scoreboard players set @a AddedInvis 0
scoreboard players set @a AddedSpeed 0
scoreboard players set @a AddedJump 0
## the tagged system
scoreboard players set @a TaggedTimes 0
## the mine system
scoreboard players set @a DropConduit 0
## the glowing system
scoreboard players set @a UseCarrotStick 0

## Set team
team add MTAG_Player
team join MTAG_Player @a[gamemode=!spectator]
team modify MTAG_Player nametagVisibility never
team modify MTAG_Player seeFriendlyInvisibles false
team modify MTAG_Player friendlyFire true

## Set gamemode
gamemode adventure @a[predicate=mtag:player/team]

## Set gamerule
gamerule keepInventory true
gamerule announceAdvancements false
gamerule showDeathMessages false
gamerule sendCommandFeedback false
gamerule doLimitedCrafting true
difficulty peaceful

## Clear inventory
clear @a

## Set effects
effect give @a[predicate=mtag:player/team] minecraft:resistance 1000000 4 true

## Count number of players
execute as @a[predicate=mtag:player/team] run scoreboard players add #mtag CountOfPlayers 1
execute if entity @p[tag=MTAG_test] run scoreboard players add #mtag CountOfPlayers 5