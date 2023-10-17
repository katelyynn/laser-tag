# LASERTAG map selector
## page 0 (default)


# selection
#execute if score selection temp_store.map_selector matches 0 run say 0

execute if score selection temp_store.map_selector matches 2 run scoreboard players set game_map global -1
execute if score selection temp_store.map_selector matches 3 run scoreboard players set game_map global 0
execute if score selection temp_store.map_selector matches 4 run scoreboard players set game_map global 1
execute if score selection temp_store.map_selector matches 5 run scoreboard players set game_map global 2
execute if score selection temp_store.map_selector matches 6 run scoreboard players set game_map global 3