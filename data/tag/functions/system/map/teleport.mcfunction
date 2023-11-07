# LASERTAG map
## teleport player to map
## refer to system/lobby/main for info


execute if score game_map global matches -1 run tp @s -200 150 -200
execute if score game_map global matches 0 run tp @s 200 150 200
execute if score game_map global matches 1 run tp @s 400 150 400
execute if score game_map global matches 2 run tp @s -400 150 -400
execute if score game_map global matches 3 run tp @s -800 150 -800
execute if score game_map global matches 4 run tp @s -1100 150 -1100
execute if score game_map global matches 5 run tp @s 800 150 800