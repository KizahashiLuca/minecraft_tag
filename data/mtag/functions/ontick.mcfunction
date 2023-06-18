###############################
## Minecraft Version 1.20
## Minecraft Tag
## Author : KizahashiLuca
## Date   : 18 Jun 2023
## Version: alpha-0.4
###############################

## Run every tick
execute if predicate mtag:phase/preparation run function mtag:system/preparation/waiting_time
execute if predicate mtag:phase/ongame run function mtag:system/ongame/main