# LASERTAG item spawner
## sfx loop


particle minecraft:block minecraft:purple_stained_glass ~ ~ ~ 0 1.3 0 0.1 1

scoreboard players add @s temp_store.item_spawner_sfx_time 1

execute if score @s temp_store.item_spawner_sfx_time matches 25.. run playsound minecraft:block.amethyst_block.chime player @a
execute if score @s temp_store.item_spawner_sfx_time matches 25.. run scoreboard players set @s temp_store.item_spawner_sfx_time 0