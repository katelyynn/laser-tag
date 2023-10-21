# LASERTAG lobby controller
## game map


execute if score @s lobby_controls matches 1.. run scoreboard players add game_map global 1
execute if score @s lobby_controls matches 1.. run function tag:system/lobby/controller/go