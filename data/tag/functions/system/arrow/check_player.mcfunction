# LASERTAG arrow binding
## check player


execute if score @s temp_store.uuid.0 = @e[tag=arrow.checking,limit=1] temp_store.uuid.0 if score @s temp_store.uuid.1 = @e[tag=arrow.checking,limit=1] temp_store.uuid.1 if score @s temp_store.uuid.2 = @e[tag=arrow.checking,limit=1] temp_store.uuid.2 if score @s temp_store.uuid.3 = @e[tag=arrow.checking,limit=1] temp_store.uuid.3 run tag @s add player.has_arrow

execute if score @s cosmetic.arrow_trail matches 0.. if entity @s[tag=player.has_arrow] run scoreboard players operation @e[tag=arrow.checking] cosmetic.arrow_trail = @s cosmetic.arrow_trail
execute if entity @s[tag=player.has_arrow] run tag @e[tag=arrow.checking] add arrow.has_uuid
tag @s remove player.has_arrow