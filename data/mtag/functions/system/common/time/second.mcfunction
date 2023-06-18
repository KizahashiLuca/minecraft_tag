###############################
## Minecraft Version 1.20
## Minecraft Tag
## Author : KizahashiLuca
## Date   : 18 Jun 2023
## Version: alpha-0.4
###############################

## Calculate time
scoreboard players remove #mtag Second 1
execute if predicate mtag:system/common/time/second/minus run scoreboard players set #mtag Second 59

## Set give item time
scoreboard players operation #mtag GiveItemTime = #mtag Second
scoreboard players add #mtag GiveItemTime 1
scoreboard players operation #mtag GiveItemTime %= #mtag 100
execute if predicate mtag:phase/ongame if predicate mtag:system/common/time/second/give_item run function mtag:system/item/main

## Store time for bossbar
execute if predicate mtag:phase/preparation run bossbar set mtag:bossbar name [{"text":"潜伏時間  残り "},{"score":{"name":"#mtag","objective":"Second"}},{"text":" 秒"}]
execute if predicate mtag:phase/ongame run bossbar set mtag:bossbar name [{"text":"制限時間  残り "},{"score":{"name":"#mtag","objective":"Second"}},{"text":" 秒"}]

## Set bossbar style
execute if predicate mtag:system/common/time/bossbar/green run bossbar set mtag:bossbar color green
execute if predicate mtag:system/common/time/bossbar/yellow run bossbar set mtag:bossbar color yellow
execute if predicate mtag:system/common/time/bossbar/red run bossbar set mtag:bossbar color red

## Process the sound system
execute if predicate mtag:system/common/time/bossbar/yellow as @a at @s run playsound minecraft:item.trident.return master @s ~ ~ ~ 1 1 1
execute if predicate mtag:system/common/time/bossbar/red as @a at @s run playsound minecraft:item.trident.throw master @s ~ ~ ~ 1 1 1