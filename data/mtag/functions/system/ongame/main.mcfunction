###############################
## Minecraft Version 1.18
## Minecraft Tag
## Author : KizahashiLuca
## Date   : 27 Jan 2022
## Version: alpha-0.3
###############################

## Login midtime
execute as @a[predicate=mtag:player/login_midtime] run function mtag:system/ongame/login_midtime 

## Process the timer system
function mtag:system/common/time/tick

## Title action bar
title @a[predicate=mtag:player/tagged] actionbar ["",{"text":"あなたは"},{"text":"鬼","color":"red","bold":true},{"text":"です"}]
title @a[predicate=mtag:player/not_team] actionbar ["",{"text":"鬼","color":"red","bold":true},{"text":"は "},{"selector":"@a[predicate=mtag:player/tagged]","color":"red","bold":true},{"text":" です"}]

## Merge data to arrows
execute as @e[predicate=mtag:system/ongame/arrow] run data merge entity @s {pickup:2b}

## the snowball system
execute if predicate mtag:system/ongame/snowball/main run function mtag:system/ongame/snowball/main

## the mine system
execute if predicate mtag:system/ongame/conduit/main run function mtag:system/ongame/conduit/main

## Detect the glowing system
execute if predicate mtag:system/ongame/carrot_on_a_stick/main run function mtag:system/ongame/carrot_on_a_stick/main

## Process the tagging system
execute as @a[predicate=mtag:player/not_tagged,advancements={mtag:attacked_from_tagged=true}] run function mtag:system/ongame/tag_system

## Reset an advancement
advancement revoke @a only mtag:attacked_from_tagged

## Terminate the game
execute if predicate mtag:system/common/time/zero run function mtag:system/termination/title