# LASERTAG item spawner
## main loop


# range check
execute unless score @s item_spawner.state matches 0..1 run scoreboard players set @s item_spawner.state 1

# item present
execute if entity @e[type=item,tag=item_spawner.item,distance=..1.5] run scoreboard players set @s item_spawner.state 1

# no item present
execute unless entity @e[type=item,tag=item_spawner.item,distance=..1.5] run scoreboard players set @s item_spawner.state 0