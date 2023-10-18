# LASERTAG item spawner
## item loop


# loop
scoreboard players add @s temp_store.item_spawner_time_t 1
execute if score @s temp_store.item_spawner_time_t matches 20.. run scoreboard players add @s temp_store.item_spawner_time 1
execute if score @s temp_store.item_spawner_time_t matches 20.. run scoreboard players reset @s temp_store.item_spawner_time_t

execute if score @s temp_store.item_spawner_time >= @s item_spawner.replenish run function tag:system/spawner/summon/go
execute if score @s temp_store.item_spawner_time >= @s item_spawner.replenish run scoreboard players reset @s temp_store.item_spawner_time