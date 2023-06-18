###############################
## Minecraft Version 1.20
## Minecraft Tag
## Author : KizahashiLuca
## Date   : 18 Jun 2023
## Version: alpha-0.4
###############################

## Login midtime
execute as @a[predicate=mtag:player/login_midtime] run function mtag:system/ongame/login_midtime 

## Process the timer system
function mtag:system/common/time/tick

## Start the game
execute if predicate mtag:system/common/time/zero run function mtag:system/preparation/title