###############################
## Minecraft Version 1.15.2
## Minecraft Tag
## Author : KizahashiLuca
## Date   : 03 Apr 2020
## Version: alpha-0.2
###############################

## Leave midtime of preparation
execute if score Time GAME matches 1..9 run team leave @a[tag=!Host,team=Player,gamemode=spectator]
execute if score Time GAME matches 10 run team leave @a[team=Player,gamemode=spectator]

## Log-in midtime of preparation
execute if score Time GAME matches 1..10 run team join Player @a[tag=!Host,team=!Player,gamemode=!spectator]
execute if score Time GAME matches 1..10 run gamemode adventure @a[tag=!Host,team=Player]
execute if score Time GAME matches 1..10 run clear @a[tag=!Host,team=Player]

## Log-in midtime of ongame
execute if score Time GAME matches 20 run gamemode spectator @a[team=!Player]
execute if score Time GAME matches 20 run clear @a[team=!Player]

## Log-in midtime of all game
execute if score Time GAME matches 1..20 run bossbar set bossbar players @a
