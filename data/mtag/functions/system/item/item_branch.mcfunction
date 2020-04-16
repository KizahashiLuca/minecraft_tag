###############################
## Minecraft Version 1.15.2
## Minecraft Tag
## Author : KizahashiLuca
## Date   : 03 Apr 2020
## Version: alpha-0.2
###############################

## Add variables for the item system
scoreboard objectives add DENOMINATOR dummy
scoreboard objectives add ONES_DIGIT dummy
scoreboard objectives add TENS_DIGIT dummy
scoreboard objectives add TEMP_DIGIT dummy
scoreboard objectives add AddedStick dummy
scoreboard objectives add AddedPearl dummy
scoreboard objectives add AddedConduit dummy
scoreboard objectives add AddedCrossbow dummy
scoreboard objectives add AddedSnowball dummy
scoreboard objectives add AddedGoldSword dummy
scoreboard objectives add AddedEnderEye dummy
scoreboard objectives add AddedInvis dummy
scoreboard objectives add AddedSpeed dummy
scoreboard objectives add AddedJump dummy
## Set variables for the item system
scoreboard players set Time AddedStick 1
scoreboard players set Time AddedPearl 1
scoreboard players set Time AddedConduit 1
scoreboard players set Time AddedCrossbow 1
scoreboard players set Time AddedSnowball 1
scoreboard players set Time AddedGoldSword 1
scoreboard players set Time AddedEnderEye 0
scoreboard players set Time AddedInvis 1
scoreboard players set Time AddedSpeed 1
scoreboard players set Time AddedJump 1

## Set a tag
tag @a[team=Player] add NoItem

## Set DENOMINATOR (Kind of Items)
scoreboard players set Time DENOMINATOR 0
execute if score Time AddedStick matches 1 run scoreboard players add Time DENOMINATOR 1
execute if score Time AddedPearl matches 1 run scoreboard players add Time DENOMINATOR 1
execute if score Time AddedConduit matches 1 run scoreboard players add Time DENOMINATOR 1
execute if score Time AddedCrossbow matches 1 run scoreboard players add Time DENOMINATOR 1
execute if score Time AddedSnowball matches 1 run scoreboard players add Time DENOMINATOR 1
execute if score Time AddedGoldSword matches 1 run scoreboard players add Time DENOMINATOR 1
execute if score Time AddedEnderEye matches 1 run scoreboard players add Time DENOMINATOR 1
execute if score Time AddedInvis matches 1 run scoreboard players add Time DENOMINATOR 1
execute if score Time AddedSpeed matches 1 run scoreboard players add Time DENOMINATOR 1
execute if score Time AddedJump matches 1 run scoreboard players add Time DENOMINATOR 1
## Calculate ones digit
scoreboard players operation Time ONES_DIGIT = Time NUM
scoreboard players remove Time ONES_DIGIT 1
scoreboard players operation Time ONES_DIGIT %= Time DENOMINATOR
## Calculate tens digit
scoreboard players operation Time TENS_DIGIT = Time NUM
scoreboard players remove Time TENS_DIGIT 1
scoreboard players operation Time TENS_DIGIT /= Time DENOMINATOR

## Give Special Items
execute if score Time TENS_DIGIT matches 1.. as @a[tag=NoItem] run function mtag:system/item/branch/branch_tens_digit
execute if score Time TENS_DIGIT matches 0 run function mtag:system/item/branch/branch_ones_digit

## Remove variables for the item system
scoreboard objectives remove DENOMINATOR
scoreboard objectives remove ONES_DIGIT
scoreboard objectives remove TENS_DIGIT
scoreboard objectives remove TEMP_DIGIT
scoreboard objectives remove AddedStick
scoreboard objectives remove AddedPearl
scoreboard objectives remove AddedConduit
scoreboard objectives remove AddedCrossbow
scoreboard objectives remove AddedSnowball
scoreboard objectives remove AddedGoldSword
scoreboard objectives remove AddedEnderEye
scoreboard objectives remove AddedInvis
scoreboard objectives remove AddedSpeed
scoreboard objectives remove AddedJump

## Remove a tag
tag @a[tag=PassItem] remove PassItem
tag @a[tag=NoItem] remove NoItem