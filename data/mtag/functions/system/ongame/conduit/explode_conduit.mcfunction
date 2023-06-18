###############################
## Minecraft Version 1.20
## Minecraft Tag
## Author : KizahashiLuca
## Date   : 18 Jun 2023
## Version: alpha-0.4
###############################

## Explode conduit
particle minecraft:explosion ~ ~0.2 ~ 1 1 1 0.5 100
playsound minecraft:entity.generic.explode master @a ~ ~ ~ 1.5 1.5
effect give @a[predicate=mtag:player/team,distance=..2] minecraft:slowness 10 7 false
effect give @a[predicate=mtag:player/team,distance=..2] minecraft:glowing 10 1 true
kill @s