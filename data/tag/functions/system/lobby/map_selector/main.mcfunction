# LASERTAG map selector
## main loop
## if eligible with item (run 'check' first)


# retrieve data
function tag:system/lobby/map_selector/get/page
function tag:system/lobby/map_selector/get/selection

execute if score page temp_store.map_selector matches 0 run function tag:system/lobby/map_selector/page/0/main
execute if score page temp_store.map_selector matches 1 run function tag:system/lobby/map_selector/page/1/main

function tag:system/lobby/map_selector/update
clear @s #tag:map_selector{mapItem: 1b}
scoreboard players set selection temp_store.map_selector -1