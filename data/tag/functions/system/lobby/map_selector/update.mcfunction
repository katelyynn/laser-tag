# LASERTAG map selector
## update container


data modify block -10 150 0 Items set value {}

# fill container
execute if score page temp_store.map_selector matches 0 run function tag:system/lobby/map_selector/page/0/items
#execute if score page temp_store.map_selector matches 1 run function tag:system/lobby/map_selector/page/1/items

# reset
execute if score selection temp_store.map_selector matches 0.. run playsound tag:menu.tick player @a ~ ~ ~
execute if score selection temp_store.map_selector matches 0.. run particle minecraft:glow -10 150.5 0 0 0 0 1 6
#execute if score selection temp_store.map_selector matches 0.. run tellraw @a ["new map sel selection is ",{"score":{"name":"selection","objective":"temp_store.map_selector"}}]

execute if score selection temp_store.map_selector matches 0.. if score page temp_store.map_selector matches 0 run function tag:system/lobby/map_selector/page/0/main
#execute if score selection temp_store.map_selector matches 0.. if score page temp_store.map_selector matches 1 run function tag:system/lobby/map_selector/page/1/main