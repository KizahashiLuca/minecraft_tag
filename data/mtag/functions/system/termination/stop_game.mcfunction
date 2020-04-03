###############################
## Minecraft Version 1.15.2
## Minecraft Tag
## Author : KizahashiLuca
## Date   : 03 Apr 2020
## Version: alpha-0.2
###############################

## Send a message
tellraw @a ["",{"text":"\n----------------------------------","color":"white"}]
tellraw @a ["",{"text":"      Minecraft Tag alpha-0.2","color":"red","bold":true}]
tellraw @a ["",{"text":"                    ","color":"white"},{"text":"Aborted","color":"red","bold":true}]
tellraw @a ["",{"text":"----------------------------------","color":"white"}]
tellraw @a ["",{"text":"  ゲームが中断されました。","color":"white"}]
tellraw @a ["",{"text":"----------------------------------\n","color":"white"}]

## Reset scoreboards
title @a reset
function mtag:system/termination/reset_scoreboard