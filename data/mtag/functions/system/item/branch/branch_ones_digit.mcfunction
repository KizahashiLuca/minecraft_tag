###############################
## Minecraft Version 1.15.2
## Minecraft Tag
## Author : KizahashiLuca
## Date   : 27 Jan 2022
## Version: alpha-0.3
###############################

## Store Valiable
scoreboard players set #mtag KindsTempDigit 0

## Branch ones digit
execute if predicate mtag:system/common/item/give/stick as @p[predicate=mtag:system/common/item/passed/stick,sort=random] run function mtag:system/item/special/stick
execute if predicate mtag:system/common/item/choose/stick run scoreboard players add #mtag KindsTempDigit 1

execute if predicate mtag:system/common/item/give/ender_pearl as @p[predicate=mtag:system/common/item/passed/ender_pearl,sort=random] run function mtag:system/item/special/pearl
execute if predicate mtag:system/common/item/choose/ender_pearl run scoreboard players add #mtag KindsTempDigit 1

execute if predicate mtag:system/common/item/give/conduit as @p[predicate=mtag:system/common/item/passed/conduit,sort=random] run function mtag:system/item/special/conduit
execute if predicate mtag:system/common/item/choose/conduit run scoreboard players add #mtag KindsTempDigit 1

execute if predicate mtag:system/common/item/give/crossbow as @p[predicate=mtag:system/common/item/passed/crossbow,sort=random] run function mtag:system/item/special/crossbow
execute if predicate mtag:system/common/item/choose/crossbow run scoreboard players add #mtag KindsTempDigit 1

execute if predicate mtag:system/common/item/give/snowball as @p[predicate=mtag:system/common/item/passed/snowball,sort=random] run function mtag:system/item/special/snowball
execute if predicate mtag:system/common/item/choose/snowball run scoreboard players add #mtag KindsTempDigit 1

execute if predicate mtag:system/common/item/give/golden_sword as @p[predicate=mtag:system/common/item/passed/golden_sword,sort=random] run function mtag:system/item/special/golden_sword
execute if predicate mtag:system/common/item/choose/golden_sword run scoreboard players add #mtag KindsTempDigit 1

execute if predicate mtag:system/common/item/give/carrot_on_a_stick as @p[predicate=mtag:system/common/item/passed/carrot_on_a_stick,sort=random] run function mtag:system/item/special/carrot_on_a_stick
execute if predicate mtag:system/common/item/choose/carrot_on_a_stick run scoreboard players add #mtag KindsTempDigit 1

execute if predicate mtag:system/common/item/give/potion_invisible as @p[predicate=mtag:system/common/item/passed/potion_invisible,sort=random] run function mtag:system/item/special/potion_invisible
execute if predicate mtag:system/common/item/choose/potion_invisible run scoreboard players add #mtag KindsTempDigit 1

execute if predicate mtag:system/common/item/give/potion_speed as @p[predicate=mtag:system/common/item/passed/potion_speed,sort=random] run function mtag:system/item/special/potion_speed
execute if predicate mtag:system/common/item/choose/potion_speed run scoreboard players add #mtag KindsTempDigit 1

execute if predicate mtag:system/common/item/give/potion_jump as @p[predicate=mtag:system/common/item/passed/potion_jump,sort=random] run function mtag:system/item/special/potion_jump
execute if predicate mtag:system/common/item/choose/potion_jump run scoreboard players add #mtag KindsTempDigit 1