# LASERTAG lobby controller
## respawn time


execute if score @s lobby_controls matches 1.. run scoreboard players add respawn_time global 1
execute if score @s lobby_controls matches 1.. run function tag:system/lobby/controller/go