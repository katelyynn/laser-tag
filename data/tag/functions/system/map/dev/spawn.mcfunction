# LASERTAG MAP
## map dev mode
## spawn point valid


scoreboard players set @s temp_store.is_spawn_valid 0

execute if block ~ ~ ~ #tag:half_block run tp @s ~ ~1 ~

execute unless block ~ ~-1 ~ #tag:spawn_valid if block ~ ~ ~ #tag:spawn_valid if block ~ ~1 ~ #tag:spawn_valid run scoreboard players set @s temp_store.is_spawn_valid 1

execute unless score @s temp_store.is_spawn_valid matches 1.. run particle minecraft:angry_villager ~ ~ ~ 0 0 0 1 1
execute unless score @s temp_store.is_spawn_valid matches 1.. run particle minecraft:angry_villager ~ ~2 ~ 0 1 0 1 1

execute if score @s temp_store.is_spawn_valid matches 1.. run particle minecraft:totem_of_undying ~ ~ ~ 0 0 0 0 1
execute if score @s temp_store.is_spawn_valid matches 1.. run particle minecraft:totem_of_undying ~ ~2 ~ 0 1 0 0 1