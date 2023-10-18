# LASERTAG item spawner
## summon item
## central point


# based on tag
execute if entity @s[tag=item_spawner.crossbow_normal] run function tag:system/spawner/summon/crossbow_normal
execute if entity @s[tag=item_spawner.crossbow_machine] run function tag:system/spawner/summon/crossbow_machine
execute if entity @s[tag=item_spawner.crossbow_rocket] run function tag:system/spawner/summon/crossbow_rocket

scoreboard players set @s item_spawner.state 1