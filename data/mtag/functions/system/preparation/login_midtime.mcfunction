###############################
## Minecraft Version 1.15.2
## Minecraft Tag
## Author : KizahashiLuca
## Date   : 03 Apr 2020
## Version: alpha-0.2
###############################

## Log-in midtime of preparation
team join MTAG_Player @s[tag=!MTAG_Host,gamemode=!spectator]
gamemode adventure @s[tag=!MTAG_Host]
clear @s[tag=!MTAG_Host]

## Bossbar
bossbar set mtag:bossbar players @s

## Add a tag
tag @s add MTAG_NotInitialized
