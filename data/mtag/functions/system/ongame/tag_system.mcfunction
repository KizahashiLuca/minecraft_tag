###############################
## Minecraft Version 1.15.2
## Minecraft Tag
## Author : KizahashiLuca
## Date   : 01 Apr 2020
## Version: alpha-0.2
###############################

## Send messages
tellraw @a[team=Tagged] ["",{"text":"\n----------------------------------","color":"white"}]
tellraw @a[team=Tagged] ["",{"text":"  あなたは ","color":"white"},{"text":"鬼","bold":true,"color":"red"},{"text":" を ","color":"white"},{"selector":"@s","bold":true,"color":"red"},{"text":" に押しつけました。","color":"white"}]
tellraw @a[team=Tagged] ["",{"text":"----------------------------------\n","color":"white"}]

## Set effects
effect clear @a[team=Tagged]
effect give @a[team=Tagged] minecraft:resistance 1000000 4 true

## Swap tag times
scoreboard players operation @a[team=Tagged] TAG_TIMES_SWAP = @a[team=Tagged] TAG_TIMES
scoreboard players reset @a[team=Tagged] TAG_TIMES

## Process the tagging system
team join Player @a[team=Tagged]
team join Tagged @s

## Set effects
effect give @s minecraft:slowness 5 100 true
effect give @s minecraft:blindness 5 100 true
effect give @s minecraft:speed 1000000 1 true

## Add tag times
scoreboard players operation @s TAG_TIMES = @s TAG_TIMES_SWAP
scoreboard players add @s TAG_TIMES 1

## Send messages
tellraw @s ["",{"text":"\n----------------------------------","color":"white"}]
tellraw @s ["",{"text":"  あなたは ","color":"white"},{"text":"鬼","bold":true,"color":"red"},{"text":" になりました。","color":"white"}]
tellraw @s ["",{"text":"----------------------------------\n","color":"white"}]
