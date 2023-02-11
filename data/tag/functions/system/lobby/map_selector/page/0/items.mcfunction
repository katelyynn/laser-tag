# LASERTAG map selector
## page 0 (default)


# selection
#execute if score selection temp_store.map_selector matches 0 run say 0
execute if score selection temp_store.map_selector matches 18 run scoreboard players add map_dev_mode internal 1

execute if score selection temp_store.map_selector matches 2 run scoreboard players set game_map global -1
execute if score selection temp_store.map_selector matches 3 run scoreboard players set game_map global 0
execute if score selection temp_store.map_selector matches 4 run scoreboard players set game_map global 1


# reset
execute if score selection temp_store.map_selector matches 0.. run tellraw @a ["new map sel selection is ",{"score":{"name":"selection","objective":"temp_store.map_selector"}}]
execute if score selection temp_store.map_selector matches 0.. run function tag:system/lobby/map_selector/page/0/main