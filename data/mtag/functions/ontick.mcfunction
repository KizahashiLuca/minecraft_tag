###############################
## Minecraft Version 1.15.2
## Minecraft Tag
## Author : KizahashiLuca
## Date   : 01 Apr 2020
## Version: alpha-0.2
###############################

## Run every tick
execute if score Time GAME matches 10 run function mtag:system/preparation/waiting_time
execute if score Time GAME matches 20 run function mtag:system/ongame/main