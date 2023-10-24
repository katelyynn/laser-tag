# LASERTAG lobby controller
## game map


execute unless score map_dev_mode internal matches 1.. run data merge entity @s {CustomName:'{"text":"","italic":false}'}
execute if score map_dev_mode internal matches 1.. run data merge entity @s {CustomName:'{"translate":"lobby.map_selector.map_status.dev_mode","italic":false,"bold":true,"color":"aqua"}'}


scoreboard players operation map_dev_mode_temp internal = map_dev_mode internal