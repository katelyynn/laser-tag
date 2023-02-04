# LASERTAG time
## game clock


function fm:clock


# earn coins passively
scoreboard players add coin_time internal 1
## execute
execute if score coin_time internal >= passive_coin_time internal as @a run scoreboard players operation @s temp_store.coins += coins.passive global
execute if score coin_time internal >= passive_coin_time internal as @a run scoreboard players set coin_time internal 0