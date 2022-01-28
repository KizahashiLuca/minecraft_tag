###############################
## Minecraft Version 1.18
## Minecraft Tag
## Author : KizahashiLuca
## Date   : 27 Jan 2022
## Version: alpha-0.3
###############################

## Run every tick
execute if predicate mtag:phase/preparation run function mtag:system/preparation/waiting_time
execute if predicate mtag:phase/ongame run function mtag:system/ongame/main