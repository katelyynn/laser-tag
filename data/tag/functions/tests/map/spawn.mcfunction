execute as @e[tag=spawn_point,sort=random,distance=..200,limit=1,tag=!spawn_point.cleared] run tag @s add spawn_point.temp
execute as @e[tag=spawn_point.temp,limit=1] run tag @s add spawn_point.cleared
execute at @e[tag=spawn_point.temp,limit=1] run spawnpoint @s ~ ~ ~
execute as @e[tag=spawn_point.temp,limit=1] run tag @s remove spawn_point.temp
tellraw @s [{"nbt":"SpawnX","entity":"@s"}," ",{"nbt":"SpawnY","entity":"@s"}," ",{"nbt":"SpawnZ","entity":"@s"}]
kill @s