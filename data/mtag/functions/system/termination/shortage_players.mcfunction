###############################
## Minecraft Version 1.15.2
## Minecraft Tag
## Author : KizahashiLuca
## Date   : 03 Apr 2020
## Version: alpha-0.2
###############################

## Send messages
tellraw @a ["",{"text":"\n----------------------------------","color":"white"}]
tellraw @a ["",{"text":"      Minecraft Tag alpha-0.2","color":"red","bold":true}]
tellraw @a ["",{"text":"                     ","color":"white"},{"text":"Error","color":"yellow","bold":true}]
tellraw @a ["",{"text":"----------------------------------","color":"white"}]
tellraw @a ["",{"text":"  人数条件をクリアしていません","color":"white"}]
tellraw @a ["",{"text":"  必要な人数は","color":"white"},{"text":" 3 ","bold":true,"color":"red"},{"text":"人からです。","color":"white"}]
tellraw @a ["",{"text":"----------------------------------\n","color":"white"}]

## Reset the scoreboard
title @a clear
function mtag:system/termination/reset_scoreboard
