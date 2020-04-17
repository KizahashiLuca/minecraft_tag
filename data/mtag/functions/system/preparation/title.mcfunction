###############################
## Minecraft Version 1.15.2
## Minecraft Tag
## Author : KizahashiLuca
## Date   : 03 Apr 2020
## Version: alpha-0.2
###############################

## Tag for random player
tag @p[team=Player,tag=!Tagged,sort=random] add Tagged
scoreboard players set @a[tag=Tagged] TAG_TIMES 1

## Set scoreboards
scoreboard players set Time TICK 20
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
tellraw @a ["",{"text":"      Minecraft Tag alpha-0.2","color":"red","bold":true}]
tellraw @a ["",{"text":"                  ","color":"white"},{"text":"Game Start","color":"green","bold":true}]
tellraw @a ["",{"text":"----------------------------------","color":"white"}]
tellraw @a ["",{"text":"   鬼は ","color":"white"},{"selector":"@a[tag=Tagged]","bold":true,"color":"red"},{"text":" です。","color":"white"}]
tellraw @a ["",{"text":"----------------------------------\n","color":"white"}]

## Set effects
effect give @a[tag=Tagged] minecraft:speed 1000000 1 true

## Give items
function mtag:system/item/item_branch
execute as @a[team=Player] run function mtag:system/item/common/bow
execute as @a[team=Player] run function mtag:system/item/common/arrow