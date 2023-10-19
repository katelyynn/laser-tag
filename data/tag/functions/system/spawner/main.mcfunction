# LASERTAG item spawner
## main loop


# range check
execute unless score @s item_spawner.state matches 0..1 run scoreboard players set @s item_spawner.state -1

# item present
execute if entity @e[type=item,tag=item_spawner.item,distance=..1.5] run scoreboard players set @s item_spawner.state 1

# no item present
execute unless entity @e[type=item,tag=item_spawner.item,distance=..1.5] run scoreboard players set @s item_spawner.state 0

# sfx
function tag:system/spawner/sfx


# replenish times
execute if entity @s[tag=item_spawner.crossbow_normal] run scoreboard players operation @s item_spawner.replenish = crossbow_normal item_spawner.replenish
execute if entity @s[tag=item_spawner.crossbow_machine] run scoreboard players operation @s item_spawner.replenish = crossbow_machine item_spawner.replenish
execute if entity @s[tag=item_spawner.crossbow_rocket] run scoreboard players operation @s item_spawner.replenish = crossbow_rocket item_spawner.replenish
execute if entity @s[tag=item_spawner.apple] run scoreboard players operation @s item_spawner.replenish = apple item_spawner.replenish

# item loop
execute if entity @s[tag=item_spawner.has_item,tag=!item_spawner.lobby] unless score @s item_spawner.state matches 1 run function tag:system/spawner/item_loop
execute if entity @s[tag=item_spawner.has_item,tag=item_spawner.lobby,scores={item_spawner.state=0}] run function tag:system/spawner/summon/go