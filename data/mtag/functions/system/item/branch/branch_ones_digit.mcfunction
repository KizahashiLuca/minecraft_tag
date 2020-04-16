###############################
## Minecraft Version 1.15.2
## Minecraft Tag
## Author : KizahashiLuca
## Date   : 03 Apr 2020
## Version: alpha-0.2
###############################

## Store Valiable
scoreboard players set Time TEMP_DIGIT 0

## Branch ones digit
execute if score Time AddedStick matches 1 if score Time ONES_DIGIT >= Time TEMP_DIGIT as @r[tag=!PassItem,tag=NoItem] run function mtag:system/item/special/stick
execute if score Time AddedStick matches 1 run scoreboard players add Time TEMP_DIGIT 1

execute if score Time AddedPearl matches 1 if score Time ONES_DIGIT >= Time TEMP_DIGIT as @r[tag=!PassItem,tag=NoItem] run function mtag:system/item/special/pearl
execute if score Time AddedPearl matches 1 run scoreboard players add Time TEMP_DIGIT 1

execute if score Time AddedConduit matches 1 if score Time ONES_DIGIT >= Time TEMP_DIGIT as @r[tag=!PassItem,tag=NoItem] run function mtag:system/item/special/conduit
execute if score Time AddedConduit matches 1 run scoreboard players add Time TEMP_DIGIT 1

execute if score Time AddedCrossbow matches 1 if score Time ONES_DIGIT >= Time TEMP_DIGIT as @r[tag=!PassItem,tag=NoItem] run function mtag:system/item/special/crossbow
execute if score Time AddedCrossbow matches 1 run scoreboard players add Time TEMP_DIGIT 1

execute if score Time AddedSnowball matches 1 if score Time ONES_DIGIT >= Time TEMP_DIGIT as @r[tag=!PassItem,tag=NoItem] run function mtag:system/item/special/snowball
execute if score Time AddedSnowball matches 1 run scoreboard players add Time TEMP_DIGIT 1

execute if score Time AddedGoldSword matches 1 if score Time ONES_DIGIT >= Time TEMP_DIGIT as @r[tag=!PassItem,tag=NoItem] run function mtag:system/item/special/golden_sword
execute if score Time AddedGoldSword matches 1 run scoreboard players add Time TEMP_DIGIT 1

execute if score Time AddedEnderEye matches 1 if score Time ONES_DIGIT >= Time TEMP_DIGIT as @r[tag=!PassItem,tag=NoItem] run function mtag:system/item/special/ender_eye
execute if score Time AddedEnderEye matches 1 run scoreboard players add Time TEMP_DIGIT 1

execute if score Time AddedInvis matches 1 if score Time ONES_DIGIT >= Time TEMP_DIGIT as @r[tag=!PassItem,tag=NoItem] run function mtag:system/item/special/potion_invisible
execute if score Time AddedInvis matches 1 run scoreboard players add Time TEMP_DIGIT 1

execute if score Time AddedSpeed matches 1 if score Time ONES_DIGIT >= Time TEMP_DIGIT as @r[tag=!PassItem,tag=NoItem] run function mtag:system/item/special/potion_speed
execute if score Time AddedSpeed matches 1 run scoreboard players add Time TEMP_DIGIT 1

execute if score Time AddedJump matches 1 if score Time ONES_DIGIT >= Time TEMP_DIGIT as @r[tag=!PassItem,tag=NoItem] run function mtag:system/item/special/potion_jump
execute if score Time AddedJump matches 1 run scoreboard players add Time TEMP_DIGIT 1