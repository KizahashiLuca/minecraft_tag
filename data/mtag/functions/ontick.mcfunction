###############################
## Minecraft Version 1.15.2
## Minecraft Tag
## Author : KizahashiLuca
## Date   : 01 Apr 2020
## Version: alpha-0.2
###############################

## Run every tick
execute if predicate mtag:phase/preparation run function mtag:system/preparation/waiting_time
execute if predicate mtag:phase/ongame run function mtag:system/ongame/main