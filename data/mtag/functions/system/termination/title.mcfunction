###############################
## Minecraft Version 1.20
## Minecraft Tag
## Author : KizahashiLuca
## Date   : 18 Jun 2023
## Version: alpha-0.4
###############################

## Sound
execute as @a at @s run playsound minecraft:item.trident.thunder master @s ~ ~ ~ 1 1 1

## Title of starting game
title @a times 5 40 20
title @a title ["",{"text":"Minecrat Tag","color":"red","bold":true}]
title @a subtitle ["",{"text":"END","color":"white","bold":true}]

## Set tick
scoreboard players set #mtag 20 5
scoreboard players operation @a Tick *= #mtag 20

## Send messages
tellraw @a ["",{"text":"\n----------------------------------","color":"white"}]
tellraw @a ["",{"text":"      Minecraft Tag alpha-0.4","color":"red","bold":true}]
tellraw @a ["",{"text":"                     ","color":"white"},{"text":"END","color":"yellow","bold":true}]
tellraw @a ["",{"text":"----------------------------------","color":"white"}]
tellraw @a ["",{"text":"  結果","color":"white"}]
tellraw @a ["",{"text":"    ","color":"white"},{"text":"最後の鬼は ","color":"white"},{"selector":"@a[predicate=mtag:player/tagged]","bold":true,"color":"red"},{"text":" でした。","color":"white"}]
tellraw @a ["",{"text":"","color":"white"}]
tellraw @a ["",{"text":"  統計","color":"white"}]
execute as @a run function mtag:system/termination/statistics
tellraw @a ["",{"text":"----------------------------------\n","color":"white"}]

## Reset scoreboards
function mtag:system/termination/reset_scoreboard
