###############################
## Minecraft Version 1.15.2
## Minecraft Tag
## Author : KizahashiLuca
## Date   : 03 Apr 2020
## Version: alpha-0.2
###############################

## Send messages
tellraw @a[tag=Tagged] ["",{"text":"\n----------------------------------","color":"white"}]
tellraw @a[tag=Tagged] ["",{"text":"  あなたは ","color":"white"},{"text":"鬼","bold":true,"color":"red"},{"text":" を ","color":"white"},{"selector":"@s","bold":true,"color":"red"},{"text":" に押しつけました。","color":"white"}]
tellraw @a[tag=Tagged] ["",{"text":"----------------------------------\n","color":"white"}]

## Set effects
effect clear @a[tag=Tagged]
effect give @a[tag=Tagged] minecraft:resistance 1000000 4 true

## Reset title
title @a[tag=Tagged] clear

## Remove tag
tag @a[tag=Tagged] remove Tagged

## Add tag
tag @s add Tagged

## Set effects
effect give @s minecraft:slowness 5 100 true
effect give @s minecraft:blindness 5 100 true
effect give @s minecraft:speed 1000000 1 true

## Add tag times
scoreboard players add @s TAG_TIMES 1

## Send messages
tellraw @s ["",{"text":"\n----------------------------------","color":"white"}]
tellraw @s ["",{"text":"  あなたは ","color":"white"},{"text":"鬼","bold":true,"color":"red"},{"text":" になりました。","color":"white"}]
tellraw @s ["",{"text":"----------------------------------\n","color":"white"}]
