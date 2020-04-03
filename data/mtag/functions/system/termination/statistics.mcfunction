###############################
## Minecraft Version 1.15.2
## Minecraft Tag
## Author : KizahashiLuca
## Date   : 03 Apr 2020
## Version: alpha-0.2
###############################

## Write statistics
execute if entity @s[team=Player] if score @s TICK matches 0..5 run tellraw @a ["",{"text":"    ","color":"white"},{"selector":"@s","color":"green"},{"text":" : ","color":"white"},{"score":{"name":"@s","objective":"TAG_TIMES"}},{"text":" 回    "},{"score":{"name":"@s","objective":"SECOND"}},{"text":".0"},{"score":{"name":"@s","objective":"TICK"}},{"text":" 秒"}]
execute if entity @s[team=Player] unless score @s TICK matches 0..5 run tellraw @a ["",{"text":"    ","color":"white"},{"selector":"@s","color":"green"},{"text":" : ","color":"white"},{"score":{"name":"@s","objective":"TAG_TIMES"}},{"text":" 回    "},{"score":{"name":"@s","objective":"SECOND"}},{"text":"."},{"score":{"name":"@s","objective":"TICK"}},{"text":" 秒"}]
execute if entity @s[team=Tagged] if score @s TICK matches 0..5 run tellraw @a ["",{"text":"    ","color":"white"},{"selector":"@s","color":"red"},{"text":" : ","color":"white"},{"score":{"name":"@s","objective":"TAG_TIMES"}},{"text":" 回    "},{"score":{"name":"@s","objective":"SECOND"}},{"text":".0"},{"score":{"name":"@s","objective":"TICK"}},{"text":" 秒"}]
execute if entity @s[team=Tagged] unless score @s TICK matches 0..5 run tellraw @a ["",{"text":"    ","color":"white"},{"selector":"@s","color":"red"},{"text":" : ","color":"white"},{"score":{"name":"@s","objective":"TAG_TIMES"}},{"text":" 回    "},{"score":{"name":"@s","objective":"SECOND"}},{"text":"."},{"score":{"name":"@s","objective":"TICK"}},{"text":" 秒"}]