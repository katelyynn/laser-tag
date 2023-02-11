# LASERTAG lobby controller
## map dev mode


execute if score @s lobby_controls matches 1.. run scoreboard players add map_dev_mode internal 1
execute if score @s lobby_controls matches 1.. run function tag:system/lobby/controller/go