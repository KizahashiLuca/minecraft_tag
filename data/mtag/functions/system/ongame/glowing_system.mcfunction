###############################
## Minecraft Version 1.15.2
## Minecraft Tag
## Author : KizahashiLuca
## Date   : 03 Apr 2020
## Version: alpha-0.2
###############################

## Set the glowing system
execute if entity @s[tag=Tagged] run effect give @a[team=Player,tag=!Tagged] minecraft:glowing 15 1 true
execute if entity @s[tag=!Tagged] run effect give @a[team=Player,tag=Tagged] minecraft:glowing 15 1 true
replaceitem entity @s weapon.mainhand air
scoreboard players set @a CARROTSTICK 0