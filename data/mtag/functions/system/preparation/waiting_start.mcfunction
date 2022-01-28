###############################
## Minecraft Version 1.18
## Minecraft Tag
## Author : KizahashiLuca
## Date   : 27 Jan 2022
## Version: alpha-0.3
###############################

## Title of waiting time
title @a times 10 1160 30
title @a title ["",{"text":"潜伏時間","color":"red","bold":true}]
title @a subtitle ["",{"text":"Waiting Time","color":"white","bold":true}]

## Send messages
tellraw @a ["",{"text":"\n----------------------------------","color":"white"}]
tellraw @a ["",{"text":"      Minecraft Tag alpha-0.3","color":"red","bold":true}]
tellraw @a ["",{"text":"                   ","color":"white"},{"text":"潜伏時間開始","color":"green","bold":true}]
tellraw @a ["",{"text":"                 ","color":"white"},{"text":"Waiting Start","color":"green","bold":true}]
tellraw @a ["",{"text":"----------------------------------\n","color":"white"}]

## Set scoreboards
scoreboard players set #mtag Tick 0
scoreboard players operation #mtag Second = #mtag WaitingTime
scoreboard players set #mtag GamePhase 10

## Set bossbar
bossbar add mtag:bossbar [{"text":"潜伏時間  残り "},{"score":{"name":"#mtag","objective":"Second"}},{"text":" 秒"}]
bossbar set mtag:bossbar players @a
scoreboard players set #mtag BossbarMax 20
scoreboard players operation #mtag BossbarMax *= #mtag WaitingTime
scoreboard players set #mtag BossbarVal 20
scoreboard players operation #mtag BossbarVal *= #mtag Second
execute store result bossbar mtag:bossbar max run scoreboard players get #mtag BossbarMax
execute store result bossbar mtag:bossbar value run scoreboard players get #mtag BossbarVal
## Set bossbar style
bossbar set mtag:bossbar style notched_10
bossbar set mtag:bossbar color green