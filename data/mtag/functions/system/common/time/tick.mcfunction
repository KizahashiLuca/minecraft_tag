###############################
## Minecraft Version 1.15.2
## Minecraft Tag
## Author : KizahashiLuca
## Date   : 03 Apr 2020
## Version: alpha-0.2
###############################

## Calculate time every second
execute if predicate mtag:system/common/time/tick/zero run function mtag:system/common/time/second

## Calculate time every tick
scoreboard players remove #mtag Tick 1
execute if predicate mtag:system/common/time/tick/minus run scoreboard players set #mtag Tick 19

## Set tagged time
execute as @a[predicate=mtag:player/tagged] run function mtag:system/common/time/tagged

## Set bossbar
scoreboard players set #mtag BossbarVal 20
scoreboard players operation #mtag BossbarVal *= #mtag Second
scoreboard players operation #mtag BossbarVal += #mtag Tick
execute store result bossbar mtag:bossbar value run scoreboard players get #mtag BossbarVal