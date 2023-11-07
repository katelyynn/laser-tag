# LASERTAG map
## set spawn for players on map
## refer to system/lobby/main for info


execute if score game_map global matches -1 run spawnpoint @s -200 150 -200
execute if score game_map global matches 0 run spawnpoint @s 200 150 200
execute if score game_map global matches 1 run spawnpoint @s 400 150 400
execute if score game_map global matches 2 run spawnpoint @s -400 150 -400
execute if score game_map global matches 3 run spawnpoint @s -800 150 -800
execute if score game_map global matches 4 run spawnpoint @s -1100 150 -1100
execute if score game_map global matches 5 run spawnpoint @s 797 150 799