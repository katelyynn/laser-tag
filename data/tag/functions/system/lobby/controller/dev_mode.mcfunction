# LASERTAG lobby controller
## dev mode


execute if score @s lobby_controls matches 1.. run scoreboard players add dev_mode internal 77
execute if score @s lobby_controls matches 1.. run function tag:system/lobby/controller/go