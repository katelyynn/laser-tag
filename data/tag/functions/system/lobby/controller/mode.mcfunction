# LASERTAG lobby controller
## game mode

execute if score @s lobby_controls matches 1.. run scoreboard players add mode global 1
execute if score @s lobby_controls matches 1.. run function tag:system/lobby/controller/go