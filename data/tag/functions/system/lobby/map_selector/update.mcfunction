# LASERTAG map selector
## update container


data modify block -10 150 0 Items set value {}

# fill container
execute if score page temp_store.map_selector matches 0 run function tag:system/lobby/map_selector/page/0/items
execute if score page temp_store.map_selector matches 1 run function tag:system/lobby/map_selector/page/1/items

# default selections
execute if score selection temp_store.map_selector matches 18 run scoreboard players add map_dev_mode internal 1
## arrows
execute if score selection temp_store.map_selector matches 10 run scoreboard players remove page temp_store.map_selector 1
execute if score selection temp_store.map_selector matches 17 run scoreboard players add page temp_store.map_selector 1
## range check
execute if score page temp_store.map_selector matches 2.. run scoreboard players set page temp_store.map_selector 0
execute if score page temp_store.map_selector matches ..-1 run scoreboard players set page temp_store.map_selector 0

# reset
execute if score selection temp_store.map_selector matches 0.. run playsound tag:menu.tick player @a ~ ~ ~
execute if score selection temp_store.map_selector matches 0.. run particle minecraft:glow -10 150.5 0 0 0 0 1 6
#execute if score selection temp_store.map_selector matches 0.. run tellraw @a ["new map sel selection is ",{"score":{"name":"selection","objective":"temp_store.map_selector"}}]

execute if score selection temp_store.map_selector matches 0.. if score page temp_store.map_selector matches 0 run function tag:system/lobby/map_selector/page/0/main
execute if score selection temp_store.map_selector matches 0.. if score page temp_store.map_selector matches 1 run function tag:system/lobby/map_selector/page/1/main