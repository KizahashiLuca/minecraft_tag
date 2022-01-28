###############################
## Minecraft Version 1.18
## Minecraft Tag
## Author : KizahashiLuca
## Date   : 27 Jan 2022
## Version: alpha-0.3
###############################

## Add a tag
tag @s add SetConduit

## Detect player
execute as @a[predicate=mtag:player/team,distance=..2] unless score @s PlayerNumber = @e[predicate=mtag:system/ongame/conduit/detect_position_set,tag=SetConduit,scores={PlayerNumber=1..},limit=1] PlayerNumber run tag @e[predicate=mtag:system/ongame/conduit/detect_position_set,tag=SetConduit,limit=1] add ExplodeConduit
execute as @e[predicate=mtag:system/ongame/conduit/detect_position_set,tag=ExplodeConduit] at @s run function mtag:system/ongame/conduit/explode_conduit

## Remove a tag
tag @s remove SetConduit
tag @e[tag=ExplodeConduit] remove ExplodeConduit