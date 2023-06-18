###############################
## Minecraft Version 1.20
## Minecraft Tag
## Author : KizahashiLuca
## Date   : 18 Jun 2023
## Version: alpha-0.4
###############################

## Log-in midtime of preparation
team join MTAG_Player @s[tag=!MTAG_Host,gamemode=!spectator]
gamemode adventure @s[tag=!MTAG_Host]
clear @s[tag=!MTAG_Host]

## Bossbar
bossbar set mtag:bossbar players @a

## Add a tag
tag @s add MTAG_NotInitialized
