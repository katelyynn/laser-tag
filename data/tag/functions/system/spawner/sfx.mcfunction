# LASERTAG item spawner
## sfx loop


scoreboard players add @s temp_store.item_spawner_sfx_time 1

execute if score @s temp_store.item_spawner_sfx_time matches 35.. run playsound minecraft:block.amethyst_block.resonate player @a
execute if score @s temp_store.item_spawner_sfx_time matches 35.. run scoreboard players set @s temp_store.item_spawner_sfx_time 0