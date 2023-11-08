# LASERTAG lobby controller
## game map


execute if score game_map global matches -1 run data merge entity @s {CustomName:'[{"translate":"lobby.map_selector.map_status","italic":false},{"translate":"map.-1","italic":false}]'}
execute if score game_map global matches 0 run data merge entity @s {CustomName:'[{"translate":"lobby.map_selector.map_status","italic":false},{"translate":"map.0","italic":false}]'}
execute if score game_map global matches 1 run data merge entity @s {CustomName:'[{"translate":"lobby.map_selector.map_status","italic":false},{"translate":"map.gs_wip","italic":false}]'}
execute if score game_map global matches 2 run data merge entity @s {CustomName:'[{"translate":"lobby.map_selector.map_status","italic":false},{"translate":"map.lt_forest","italic":false}]'}
execute if score game_map global matches 3 run data merge entity @s {CustomName:'[{"translate":"lobby.map_selector.map_status","italic":false},{"translate":"map.lt_backrooms","italic":false}]'}
execute if score game_map global matches 4 run data merge entity @s {CustomName:'[{"translate":"lobby.map_selector.map_status","italic":false},{"translate":"map.lt_pumpkin","italic":false}]'}
execute if score game_map global matches 5 run data merge entity @s {CustomName:'[{"translate":"lobby.map_selector.map_status","italic":false},{"translate":"map.te_rainforest","italic":false}]'}


scoreboard players operation game_map_temp internal = game_map global