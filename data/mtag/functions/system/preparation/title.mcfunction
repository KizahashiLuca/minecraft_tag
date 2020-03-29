###############################
## Minecraft Version 1.15.2
## Minecraft Tag
## Author : KizahashiLuca
## Date   : 22 Feb 2020
## Version: alpha-0.1
###############################

## Tag for random player
tag @p[team=Player,sort=random] add Tagged

## Set scoreboards
scoreboard players set Time TICK 0
scoreboard players operation Time SECOND = Time TimeLimit
scoreboard players set Time GAME 20

## Set bossbar
execute store result bossbar bossbar max run scoreboard players get Time TimeLimit
execute store result bossbar bossbar value run scoreboard players get Time SECOND
bossbar set bossbar name [{"text":"制限時間  残り "},{"score":{"name":"Time","objective":"SECOND"}},{"text":" 秒"}]

## Title of starting game
title @a times 10 100 30
title @a title ["",{"text":"Minecrat Tag","color":"red","bold":true}]
title @a subtitle ["",{"text":"START","color":"white","bold":true}]

## Send messages & tagged player
tellraw @a ["",{"text":"\n----------------------------------","color":"white"}]
tellraw @a ["",{"text":"      Minecraft Tag alpha-0.1","color":"red","bold":true}]
tellraw @a ["",{"text":"                  ","color":"white"},{"text":"Game Start","color":"green","bold":true}]
tellraw @a ["",{"text":"----------------------------------","color":"white"}]
tellraw @a ["",{"text":"   鬼は ","color":"white"},{"selector":"@a[tag=Tagged]","bold":true,"color":"red"},{"text":" です。","color":"white"}]
tellraw @a ["",{"text":"----------------------------------\n","color":"white"}]

## Set effects
effect give @a[tag=Tagged] minecraft:slowness 5 100 true
effect give @s[tag=Tagged] minecraft:blindness 5 100 true
effect give @s[tag=Tagged] minecraft:speed 1000000 1 true

## Give items
give @a[team=Player] minecraft:bow{display:{Name:"\"弓\""},Unbreakable:1,Enchantments:[{id:"minecraft:punch",lvl:2},{id:"minecraft:vanishing_curse",lvl:1},{id:"minecraft:infinity",lvl:1}],HideFlags:39} 1
give @a[team=Player] minecraft:arrow{display:{Name:"\"矢\""},Enchantments:[{id:"minecraft:vanishing_curse",lvl:1}],HideFlags:39} 1