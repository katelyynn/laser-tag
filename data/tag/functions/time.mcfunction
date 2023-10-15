# LASERTAG time
## game clock


function kate:clock


# earn coins passively
scoreboard players add coin_time internal 1
## execute
execute if score coin_time internal >= passive_coin_time internal as @a run scoreboard players operation @s temp_store.coins += coins.passive global
execute if score coin_time internal >= passive_coin_time internal as @a if score dev_mode internal matches 77 run function tag:system/coins/query
execute if score coin_time internal >= passive_coin_time internal as @a run scoreboard players set coin_time internal 0


# item spawners
execute as @e[tag=item_spawner.generic] at @s run function tag:system/spawner/main