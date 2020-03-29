###############################
## Minecraft Version 1.14
## Minecraft Werewolf Light
## Author : KizahashiLuca
## Date   : 17 September 2019
## Version: beta-1.5
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