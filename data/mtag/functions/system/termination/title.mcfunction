###############################
## Minecraft Version 1.15.2
## Minecraft Tag
## Author : KizahashiLuca
## Date   : 03 Apr 2020
## Version: alpha-0.2
###############################

## Title of starting game
title @a times 5 40 20
title @a title ["",{"text":"Minecrat Tag","color":"red","bold":true}]
title @a subtitle ["",{"text":"END","color":"white","bold":true}]

## Set tick
scoreboard players set Time 20 5
scoreboard players operation @a TICK *= Time 20

## Set tagged times
execute as @a[tag=Tagged] run scoreboard players operation @s TAG_TIMES_SWAP = @s TAG_TIMES
execute as @a[team=Player] run scoreboard players operation @s TAG_TIMES = @s TAG_TIMES_SWAP

## Send messages
tellraw @a ["",{"text":"\n----------------------------------","color":"white"}]
tellraw @a ["",{"text":"      Minecraft Tag alpha-0.2","color":"red","bold":true}]
tellraw @a ["",{"text":"                     ","color":"white"},{"text":"END","color":"yellow","bold":true}]
tellraw @a ["",{"text":"----------------------------------","color":"white"}]
tellraw @a ["",{"text":"  結果","color":"white"}]
tellraw @a ["",{"text":"    ","color":"white"},{"text":"最後の鬼は ","color":"white"},{"selector":"@a[tag=Tagged]","bold":true,"color":"red"},{"text":" でした。","color":"white"}]
tellraw @a ["",{"text":"","color":"white"}]
tellraw @a ["",{"text":"  統計","color":"white"}]
execute as @a run function mtag:system/termination/statistics
tellraw @a ["",{"text":"----------------------------------\n","color":"white"}]

## Reset scoreboards
function mtag:system/termination/reset_scoreboard
