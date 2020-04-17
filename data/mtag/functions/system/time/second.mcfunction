###############################
## Minecraft Version 1.15.2
## Minecraft Tag
## Author : KizahashiLuca
## Date   : 03 Apr 2020
## Version: alpha-0.2
###############################

## Calculate time
scoreboard players remove Time SECOND 1
execute if score Time SECOND matches ..-1 run scoreboard players set Time SECOND 0

## Store time for bossbar
execute store result bossbar bossbar value run scoreboard players get Time SECOND
execute if score Time GAME matches 10 run bossbar set bossbar name [{"text":"潜伏時間  残り "},{"score":{"name":"Time","objective":"SECOND"}},{"text":" 秒"}]
execute if score Time GAME matches 20 run bossbar set bossbar name [{"text":"制限時間  残り "},{"score":{"name":"Time","objective":"SECOND"}},{"text":" 秒"}]

## Process the sound system
execute if score Time SECOND matches 4..10 as @a run playsound minecraft:item.trident.return master @s ~ ~ ~ 1 1 1
execute if score Time SECOND matches 1..3 as @a run playsound minecraft:item.trident.throw master @s ~ ~ ~ 1 1 1
execute if score Time SECOND matches 0 as @a run playsound minecraft:item.trident.thunder master @s ~ ~ ~ 1 1 1

## Reset tick
execute unless score Time SECOND matches 0 run scoreboard players set Time TICK 20