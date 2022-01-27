###############################
## Minecraft Version 1.15.2
## Minecraft Tag
## Author : KizahashiLuca
## Date   : 03 Apr 2020
## Version: alpha-0.2
###############################

## Write statistics
execute if entity @s[predicate=mtag:player/not_tagged] if score @s Tick matches 0..5 run tellraw @a ["",{"text":"    ","color":"white"},{"selector":"@s","color":"green"},{"text":" : ","color":"white"},{"score":{"name":"@s","objective":"TaggedTimes"}},{"text":" 回    "},{"score":{"name":"@s","objective":"Second"}},{"text":".0"},{"score":{"name":"@s","objective":"Tick"}},{"text":" 秒"}]
execute if entity @s[predicate=mtag:player/not_tagged] unless score @s Tick matches 0..5 run tellraw @a ["",{"text":"    ","color":"white"},{"selector":"@s","color":"green"},{"text":" : ","color":"white"},{"score":{"name":"@s","objective":"TaggedTimes"}},{"text":" 回    "},{"score":{"name":"@s","objective":"Second"}},{"text":"."},{"score":{"name":"@s","objective":"Tick"}},{"text":" 秒"}]

execute if entity @s[predicate=mtag:player/tagged] if score @s Tick matches 0..5 run tellraw @a ["",{"text":"    ","color":"white"},{"selector":"@s","color":"red"},{"text":" : ","color":"white"},{"score":{"name":"@s","objective":"TaggedTimes"}},{"text":" 回    "},{"score":{"name":"@s","objective":"Second"}},{"text":".0"},{"score":{"name":"@s","objective":"Tick"}},{"text":" 秒"}]
execute if entity @s[predicate=mtag:player/tagged] unless score @s Tick matches 0..5 run tellraw @a ["",{"text":"    ","color":"white"},{"selector":"@s","color":"red"},{"text":" : ","color":"white"},{"score":{"name":"@s","objective":"TaggedTimes"}},{"text":" 回    "},{"score":{"name":"@s","objective":"Second"}},{"text":"."},{"score":{"name":"@s","objective":"Tick"}},{"text":" 秒"}]