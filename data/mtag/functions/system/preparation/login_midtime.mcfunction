###############################
## Minecraft Version 1.15.2
## Minecraft Tag
## Author : KizahashiLuca
## Date   : 27 Jan 2022
## Version: alpha-0.3
###############################

## Log-in midtime of preparation
team join MTAG_Player @s[tag=!MTAG_Host,gamemode=!spectator]
gamemode adventure @s[tag=!MTAG_Host]
clear @s[tag=!MTAG_Host]

## Bossbar
bossbar set mtag:bossbar players @s

## Add a tag
tag @s add MTAG_NotInitialized
