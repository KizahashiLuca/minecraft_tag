###############################
## Minecraft Version 1.18
## Minecraft Tag
## Author : KizahashiLuca
## Date   : 27 Jan 2022
## Version: alpha-0.3
###############################

## Give Special Items 
execute if score #mtag KindsTensDigit matches 1.. run function mtag:system/item/branch/branch_ones_digit

## Remove Number of Player Item Gived
execute if score #mtag KindsTensDigit matches 1.. run scoreboard players remove #mtag KindsTensDigit 1
scoreboard players operation #mtag KindsOnesDigit = #mtag KindOfItems
scoreboard players remove #mtag KindsOnesDigit 1