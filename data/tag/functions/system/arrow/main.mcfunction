# LASERTAG arrow binding
## main loop


tag @e[type=#arrows,tag=!arrow.has_uuid,sort=random,limit=1] add arrow.checking

# get uuid
execute store result score @e[tag=arrow.checking] temp_store.uuid.0 run data get entity @e[tag=arrow.checking,limit=1] Owner[0]
execute store result score @e[tag=arrow.checking] temp_store.uuid.1 run data get entity @e[tag=arrow.checking,limit=1] Owner[1]
execute store result score @e[tag=arrow.checking] temp_store.uuid.2 run data get entity @e[tag=arrow.checking,limit=1] Owner[2]
execute store result score @e[tag=arrow.checking] temp_store.uuid.3 run data get entity @e[tag=arrow.checking,limit=1] Owner[3]

execute as @a[tag=player.has_uuid] run function tag:system/arrow/check_player
tag @e[tag=arrow.checking] remove arrow.checking