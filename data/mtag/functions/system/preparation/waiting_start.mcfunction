###############################
## Minecraft Version 1.15.2
## Minecraft Tag
## Author : KizahashiLuca
## Date   : 03 Apr 2020
## Version: alpha-0.2
###############################

## Title of waiting time
title @a times 10 1160 30
title @a title ["",{"text":"潜伏時間","color":"red","bold":true}]
title @a subtitle ["",{"text":"Waiting Time","color":"white","bold":true}]

## Send messages
tellraw @a ["",{"text":"\n----------------------------------","color":"white"}]
tellraw @a ["",{"text":"      Minecraft Tag alpha-0.2","color":"red","bold":true}]
tellraw @a ["",{"text":"                   ","color":"white"},{"text":"潜伏時間開始","color":"green","bold":true}]
tellraw @a ["",{"text":"                 ","color":"white"},{"text":"Waiting Start","color":"green","bold":true}]
tellraw @a ["",{"text":"----------------------------------\n","color":"white"}]

## Set scoreboards
scoreboard players set Time TICK 0
scoreboard players operation Time SECOND = Time WaitingTime
scoreboard players set Time GAME 10

## Set bossbar
bossbar add bossbar [{"text":"潜伏時間  残り "},{"score":{"name":"Time","objective":"SECOND"}},{"text":" 秒"}]
bossbar set bossbar players @a
bossbar set bossbar max 60
bossbar set bossbar value 60
execute store result bossbar bossbar max run scoreboard players get Time WaitingTime
execute store result bossbar bossbar value run scoreboard players get Time SECOND

## Set advancement
advancement revoke @a only mtag:attacked_from_tagged