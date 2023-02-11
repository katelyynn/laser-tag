# LASERTAG map
## teleport player to map
## refer to system/lobby/main for info


execute if score game_map global matches -1 run tp @s -200 150 -200
execute if score game_map global matches 0 run tp @s 200 150 200
execute if score game_map global matches 1 run tp @s 400 150 400