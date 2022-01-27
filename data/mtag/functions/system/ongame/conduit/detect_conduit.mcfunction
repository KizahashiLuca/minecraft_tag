###############################
## Minecraft Version 1.15.2
## Minecraft Tag
## Author : KizahashiLuca
## Date   : 03 Apr 2020
## Version: alpha-0.2
###############################

## Add a tag
tag @s add SetConduit

## Detect player
execute at @e[predicate=mtag:system/ongame/conduit/detect_position_set,tag=SetConduit,limit=1] as @a[predicate=mtag:player/team,distance=..2] unless score @s PlayerNumber = @e[predicate=mtag:system/ongame/conduit/detect_position_set,tag=SetConduit,limit=1,scores={PlayerNumber=1..}] PlayerNumber run tag @e[predicate=mtag:system/ongame/conduit/detect_position_set,tag=SetConduit,limit=1] add ExplodeConduit
execute as @e[predicate=mtag:system/ongame/conduit/detect_position_set,tag=ExplodeConduit] at @s run function mtag:system/ongame/conduit/explode_conduit

## Remove a tag
tag @s remove SetConduit
tag @e[tag=ExplodeConduit] remove ExplodeConduit