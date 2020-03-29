###############################
## Minecraft Version 1.15.2
## Minecraft Tag
## Author : KizahashiLuca
## Date   : 22 Feb 2020
## Version: alpha-0.1
###############################

## Send messages
tellraw @a[tag=Tagged] ["",{"text":"\n----------------------------------","color":"white"}]
tellraw @a[tag=Tagged] ["",{"text":"  あなたは ","color":"white"},{"text":"鬼","bold":true,"color":"red"},{"text":" を ","color":"white"},{"selector":"@s","bold":true,"color":"red"},{"text":" に押しつけました。","color":"white"}]
tellraw @a[tag=Tagged] ["",{"text":"----------------------------------","color":"white"}]

## Set effects
effect clear @a[tag=Tagged]
effect give @a[tag=Tagged] minecraft:resistance 1000000 4 true

## Process the tagging system
tag @a[tag=Tagged] remove Tagged
tag @s add Tagged

## Set effects
effect give @s minecraft:slowness 5 100 true
effect give @s minecraft:blindness 5 100 true
effect give @s minecraft:speed 1000000 1 true

## Send messages
tellraw @s ["",{"text":"\n----------------------------------","color":"white"}]
tellraw @s ["",{"text":"  あなたは ","color":"white"},{"text":"鬼","bold":true,"color":"red"},{"text":" になりました。","color":"white"}]
tellraw @s ["",{"text":"----------------------------------","color":"white"}]
