###############################
## Minecraft Version 1.18
## Minecraft Tag
## Author : KizahashiLuca
## Date   : 27 Jan 2022
## Version: alpha-0.3
###############################

## Change gamerules
gamerule maxCommandChainLength 65536
gamerule commandBlockOutput false
gamerule doMobSpawning false
gamerule announceAdvancements false

## Send messages
tellraw @a ["",{"text":"\n----------------------------------","color":"white"}]
tellraw @a ["",{"text":"      Minecraft Tag alpha-0.3","color":"red","bold":true}]
tellraw @a ["",{"text":"         Thank you for Downloading","color":"white"}]
tellraw @a ["",{"text":"----------------------------------","color":"white"}]
tellraw @a ["",{"text":"  当ゲームの必要人数は","color":"white"},{"text":" 3 ","color":"red","bold":true},{"text":"人からです。","color":"white"}]
tellraw @a ["",{"text":"  以下のコマンドで、ゲームを開始してください。","color":"white"}]
tellraw @a ["",{"text":"    ","color":"white"},{"text":"/function #mtag:start","color":"light_purple"}]
tellraw @a ["",{"text":"----------------------------------\n","color":"white"}]