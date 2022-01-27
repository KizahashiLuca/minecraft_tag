###############################
## Minecraft Version 1.15.2
## Minecraft Tag
## Author : KizahashiLuca
## Date   : 03 Apr 2020
## Version: alpha-0.2
###############################

## Set KindOfItems (Kind of Items)
scoreboard players set #mtag KindOfItems 0
execute if predicate mtag:system/common/item/choose/stick run scoreboard players add #mtag KindOfItems 1
execute if predicate mtag:system/common/item/choose/ender_pearl run scoreboard players add #mtag KindOfItems 1
execute if predicate mtag:system/common/item/choose/conduit run scoreboard players add #mtag KindOfItems 1
execute if predicate mtag:system/common/item/choose/crossbow run scoreboard players add #mtag KindOfItems 1
execute if predicate mtag:system/common/item/choose/snowball run scoreboard players add #mtag KindOfItems 1
execute if predicate mtag:system/common/item/choose/golden_sword run scoreboard players add #mtag KindOfItems 1
execute if predicate mtag:system/common/item/choose/carrot_on_a_stick run scoreboard players add #mtag KindOfItems 1
execute if predicate mtag:system/common/item/choose/potion_invisible run scoreboard players add #mtag KindOfItems 1
execute if predicate mtag:system/common/item/choose/potion_speed run scoreboard players add #mtag KindOfItems 1
execute if predicate mtag:system/common/item/choose/potion_jump run scoreboard players add #mtag KindOfItems 1
## Calculate ones digit
scoreboard players operation #mtag KindsOnesDigit = #mtag CountOfPlayers
scoreboard players remove #mtag KindsOnesDigit 1
scoreboard players operation #mtag KindsOnesDigit %= #mtag KindOfItems
## Calculate tens digit
scoreboard players operation #mtag KindsTensDigit = #mtag CountOfPlayers
scoreboard players remove #mtag KindsTensDigit 1
scoreboard players operation #mtag KindsTensDigit /= #mtag KindOfItems

## Give Special Items
execute if score #mtag KindsTensDigit matches 1.. as @a[predicate=mtag:player/team] run function mtag:system/item/branch/branch_tens_digit
execute if score #mtag KindsTensDigit matches 0 run function mtag:system/item/branch/branch_ones_digit

## Remove a tag
tag @a remove MTAG_ItemPassed