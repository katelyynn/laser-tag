# LASERTAG map selector
## page 0 (default)


# selection
#execute if score selection temp_store.map_selector matches 0 run say 0

#execute if score selection temp_store.map_selector matches 2 run scoreboard players set game_map global -1
#execute if score selection temp_store.map_selector matches 3 run scoreboard players set game_map global 0
execute if score selection temp_store.map_selector matches 2 run scoreboard players set game_map global 1
execute if score selection temp_store.map_selector matches 3 run scoreboard players set game_map global 2
execute if score selection temp_store.map_selector matches 4 run scoreboard players set game_map global 3
execute if score selection temp_store.map_selector matches 5 run scoreboard players set game_map global 4
execute if score selection temp_store.map_selector matches 6 run scoreboard players set game_map global 5
execute if score selection temp_store.map_selector matches 7 run scoreboard players set game_map global 6
execute if score selection temp_store.map_selector matches 8 run scoreboard players set game_map global 7
execute if score selection temp_store.map_selector matches 9 run scoreboard players set game_map global 8


# notify
#execute if score selection temp_store.map_selector matches 2..5 run function tag:system/lobby/map_selector/announce