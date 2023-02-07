# LASERTAG map selector
## check if eligible with item


execute store result score has_map_item temp_store.map_selector run clear @s #tag:map_selector{mapItem: 1b} 0
execute if score has_map_item temp_store.map_selector matches 1.. run function tag:system/lobby/map_selector/main