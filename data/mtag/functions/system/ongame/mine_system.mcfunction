###############################
## Minecraft Version 1.15.2
## Minecraft Tag
## Author : KizahashiLuca
## Date   : 01 Apr 2020
## Version: alpha-0.2
###############################

## Set mine system
particle minecraft:explosion ~ ~0.2 ~ 1 1 1 0.5 100
playsound minecraft:entity.generic.explode master @a ~ ~ ~ 1.5 1.5
effect give @a[distance=..2] minecraft:slowness 10 7 false
effect give @a[distance=..2] minecraft:glowing 10 1 true
kill @s