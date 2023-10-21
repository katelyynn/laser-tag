# LASERTAG lobby controller
## game map


execute if score game_map global matches -1 run data merge entity @s {CustomName:'{"text":"Map: Test","italic":false}'}
execute if score game_map global matches 0 run data merge entity @s {CustomName:'{"text":"Map: Test2","italic":false}'}
execute if score game_map global matches 1 run data merge entity @s {CustomName:'{"text":"Map: New WIP","italic":false}'}
execute if score game_map global matches 2 run data merge entity @s {CustomName:'{"text":"Map: Forest","italic":false}'}
execute if score game_map global matches 3 run data merge entity @s {CustomName:'{"text":"Map: Backrooms","italic":false}'}
execute if score game_map global matches 4 run data merge entity @s {CustomName:'{"text":"Map: Pumpkin Patch","italic":false}'}


scoreboard players operation game_map_temp internal = game_map global