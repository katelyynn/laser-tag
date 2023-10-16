# LASERTAG time
## game clock


function kate:clock


# earn coins passively
scoreboard players add coin_time internal 1
execute if score coin_time internal >= passive_coin_time internal run function tag:system/coins/passive


# item spawners
execute as @e[tag=item_spawner.generic] at @s run function tag:system/spawner/main