###############################
## Minecraft Version 1.18
## Minecraft Tag
## Author : KizahashiLuca
## Date   : 27 Jan 2022
## Version: alpha-0.3
###############################

## Send messages
tellraw @a[predicate=mtag:player/tagged] ["",{"text":"\n----------------------------------","color":"white"}]
tellraw @a[predicate=mtag:player/tagged] ["",{"text":"  あなたは ","color":"white"},{"text":"鬼","bold":true,"color":"red"},{"text":" を ","color":"white"},{"selector":"@s","bold":true,"color":"red"},{"text":" に押しつけました。","color":"white"}]
tellraw @a[predicate=mtag:player/tagged] ["",{"text":"----------------------------------\n","color":"white"}]

## Remove speed effect
effect clear @a[predicate=mtag:player/tagged]

## Set effect
effect give @a[predicate=mtag:player/tagged] minecraft:resistance 1000000 4 true

## Reset title
title @a[predicate=mtag:player/tagged] actionbar [""]

## Remove tag
tag @a[predicate=mtag:player/tagged] remove MTAG_Tagged

## Add tag
tag @s add MTAG_Tagged

## Set effects
effect give @s minecraft:slowness 5 100 true
effect give @s minecraft:blindness 5 100 true
effect give @s minecraft:speed 1000000 1 true

## Add tag times
scoreboard players add @s TaggedTimes 1

## Send messages
tellraw @s ["",{"text":"\n----------------------------------","color":"white"}]
tellraw @s ["",{"text":"  あなたは ","color":"white"},{"text":"鬼","bold":true,"color":"red"},{"text":" になりました。","color":"white"}]
tellraw @s ["",{"text":"----------------------------------\n","color":"white"}]
