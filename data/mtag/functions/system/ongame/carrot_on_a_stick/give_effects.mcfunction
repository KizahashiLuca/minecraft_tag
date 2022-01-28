###############################
## Minecraft Version 1.18
## Minecraft Tag
## Author : KizahashiLuca
## Date   : 27 Jan 2022
## Version: alpha-0.3
###############################

## Set the glowing system
execute as @s[predicate=mtag:player/tagged] run effect give @a[predicate=mtag:player/not_tagged] minecraft:glowing 15 1 true
execute as @s[predicate=mtag:player/not_tagged] run effect give @a[predicate=mtag:player/tagged] minecraft:glowing 15 1 true
loot replace entity @s weapon.mainhand loot mtag:items/common/air
playsound minecraft:entity.item.break block @a ~ ~ ~ 1 1 1
scoreboard players set @a UseCarrotStick 0