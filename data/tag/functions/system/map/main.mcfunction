# LASERTAG map
## main loop


# copy over current
execute if score game_map global matches -1 unless score max_height map = max_height map.-1 run scoreboard players operation max_height map = max_height map.-1
execute if score game_map global matches 0 unless score max_height map = max_height map.0 run scoreboard players operation max_height map = max_height map.0
execute if score game_map global matches 1 unless score max_height map = max_height map.1 run scoreboard players operation max_height map = max_height map.1
execute if score game_map global matches 2 unless score max_height map = max_height map.2 run scoreboard players operation max_height map = max_height map.2
execute if score game_map global matches 3 unless score max_height map = max_height map.3 run scoreboard players operation max_height map = max_height map.3
execute if score game_map global matches 4 unless score max_height map = max_height map.4 run scoreboard players operation max_height map = max_height map.4
execute if score game_map global matches 5 unless score max_height map = max_height map.5 run scoreboard players operation max_height map = max_height map.5


# max height
execute unless score map_dev_mode internal matches 1.. as @a at @s if score @s player.y >= max_height map run function tag:system/player/at_max_height

scoreboard players remove max_height map 1
execute unless score map_dev_mode internal matches 1.. as @a at @s if score @s player.y >= max_height map run fill ~ ~2 ~ ~ ~2 ~ barrier replace air