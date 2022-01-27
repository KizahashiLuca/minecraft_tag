###############################
## Minecraft Version 1.15.2
## Minecraft Tag
## Author : KizahashiLuca
## Date   : 03 Apr 2020
## Version: alpha-0.2
###############################

## Sound
execute as @a at @s run playsound minecraft:item.trident.thunder master @s ~ ~ ~ 1 1 1

## Tag for random player
tag @p[predicate=mtag:player/not_tagged,sort=random] add MTAG_Tagged

## Title of starting game
title @a times 10 100 30
title @a title ["",{"text":"Minecrat Tag","color":"red","bold":true}]
title @a subtitle ["",{"text":"START","color":"white","bold":true}]

## Send messages & tagged player
tellraw @a ["",{"text":"\n----------------------------------","color":"white"}]
tellraw @a ["",{"text":"      Minecraft Tag alpha-0.2","color":"red","bold":true}]
tellraw @a ["",{"text":"                  ","color":"white"},{"text":"Game Start","color":"green","bold":true}]
tellraw @a ["",{"text":"----------------------------------","color":"white"}]
tellraw @a ["",{"text":"   鬼は ","color":"white"},{"selector":"@a[predicate=mtag:player/tagged]","bold":true,"color":"red"},{"text":" です。","color":"white"}]
tellraw @a ["",{"text":"----------------------------------\n","color":"white"}]

## Set scoreboard
scoreboard players set @a[predicate=mtag:player/tagged] TaggedTimes 1

## Set scoreboards
scoreboard players set #mtag Tick 0
scoreboard players operation #mtag Second = #mtag TimeLimit
scoreboard players set #mtag GamePhase 20

## Number the Members
execute as @a[predicate=mtag:player/team] run function mtag:system/preparation/set_numbering
tag @a remove MTAG_NumberedPlayer

## Count number of players
scoreboard players set #mtag CountOfPlayers 0
execute as @a[predicate=mtag:player/team] run scoreboard players add #mtag CountOfPlayers 1
execute if entity @p[tag=MTAG_test] run scoreboard players add #mtag CountOfPlayers 5

## Set bossbar
bossbar set mtag:bossbar name [{"text":"制限時間  残り "},{"score":{"name":"#mtag","objective":"Second"}},{"text":" 秒"}]
bossbar set mtag:bossbar players @a
scoreboard players set #mtag BossbarMax 20
scoreboard players operation #mtag BossbarMax *= #mtag TimeLimit
scoreboard players set #mtag BossbarVal 20
scoreboard players operation #mtag BossbarVal *= #mtag Second
execute store result bossbar mtag:bossbar max run scoreboard players get #mtag BossbarMax
execute store result bossbar mtag:bossbar value run scoreboard players get #mtag BossbarVal
## Set bossbar style
bossbar set mtag:bossbar style notched_10
bossbar set mtag:bossbar color green

## Set effects
effect give @a[predicate=mtag:player/team] minecraft:resistance 1000000 4 true
effect give @a[predicate=mtag:player/tagged] minecraft:speed 1000000 1 true

## Set advancement
advancement revoke @a only mtag:attacked_from_tagged

## Give items
loot replace entity @a[predicate=mtag:player/team] hotbar.0 2 loot mtag:items/common