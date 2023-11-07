# LASERTAG MAP
## map dev mode
## main loop


execute as @a at @s run execute as @e[tag=spawn_point,distance=..150] at @s run function tag:system/map/dev/spawn

execute as @e[tag=item_spawner.coin] at @s run particle minecraft:block gold_block ~ ~ ~ 0 0 0 1 1