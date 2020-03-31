###############################
## Minecraft Version 1.15.2
## Minecraft Tag
## Author : KizahashiLuca
## Date   : 22 Feb 2020
## Version: alpha-0.1
###############################

## Calculate time
scoreboard players remove Time TICK 1
execute if score Time TICK matches -1 run scoreboard players remove Time SECOND 1

## Store time for bossbar
execute store result bossbar bossbar value run scoreboard players get Time SECOND
execute if score Time TICK matches -1 if score Time GAME matches 10 run bossbar set bossbar name [{"text":"潜伏時間  残り "},{"score":{"name":"Time","objective":"SECOND"}},{"text":" 秒"}]
execute if score Time TICK matches -1 if score Time GAME matches 20 run bossbar set bossbar name [{"text":"制限時間  残り "},{"score":{"name":"Time","objective":"SECOND"}},{"text":" 秒"}]

## Reset tick
execute if score Time TICK matches -1 run scoreboard players set Time TICK 19