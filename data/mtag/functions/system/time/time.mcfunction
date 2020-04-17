###############################
## Minecraft Version 1.15.2
## Minecraft Tag
## Author : KizahashiLuca
## Date   : 03 Apr 2020
## Version: alpha-0.2
###############################

## Calculate time every tick
scoreboard players remove Time TICK 1
execute if score Time TICK matches ..-1 run scoreboard players set Time TICK 0

## Calculate time every second
execute if score Time TICK matches 0 run function mtag:system/time/second

## Set tagged time
execute as @a[tag=Tagged] run function mtag:system/time/tagged