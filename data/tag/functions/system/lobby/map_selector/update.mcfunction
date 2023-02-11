# LASERTAG map selector
## update container


data modify block -10 150 0 Items set value {}

# fill container
execute if score page temp_store.map_selector matches 0 run function tag:system/lobby/map_selector/page/0/items
#execute if score page temp_store.map_selector matches 1 run function tag:system/lobby/map_selector/page/1/items