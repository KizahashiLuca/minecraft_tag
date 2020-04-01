###############################
## Minecraft Version 1.15.2
## Minecraft Tag
## Author : KizahashiLuca
## Date   : 01 Apr 2020
## Version: alpha-0.2
###############################

## Give Special Items 
execute if score Time TENS_DIGIT matches 1.. run function mtag:system/item/branch/branch_ones_digit

## Remove Number of Player Item Gived
execute if score Time TENS_DIGIT matches 1.. run scoreboard players remove Time TENS_DIGIT 1
scoreboard players operation Time ONES_DIGIT = Time DENOMINATOR
scoreboard players remove Time ONES_DIGIT 1