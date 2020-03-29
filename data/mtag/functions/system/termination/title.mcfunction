###############################
## Minecraft Version 1.15.2
## Minecraft Tag
## Author : KizahashiLuca
## Date   : 22 Feb 2020
## Version: alpha-0.1
###############################

## Title of starting game
title @a times 5 40 20
title @a title ["",{"text":"Minecrat Tag","color":"red","bold":true}]
title @a subtitle ["",{"text":"END","color":"white","bold":true}]

## Send messages
tellraw @a ["",{"text":"\n----------------------------------","color":"white"}]
tellraw @a ["",{"text":"      Minecraft Tag alpha-0.1","color":"red","bold":true}]
tellraw @a ["",{"text":"                     ","color":"white"},{"text":"END","color":"yellow","bold":true}]
tellraw @a ["",{"text":"----------------------------------","color":"white"}]
tellraw @a ["",{"text":"    ","color":"white"},{"text":"最後の鬼は ","color":"white"},{"selector":"@a[tag=Tagged]","bold":true,"color":"red"},{"text":" でした。","color":"white"}]
tellraw @a ["",{"text":"----------------------------------\n","color":"white"}]

## Reset scoreboards
function mtag:system/termination/reset_scoreboard
