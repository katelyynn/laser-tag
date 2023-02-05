# LASERTAG lobby controller
## win score


execute if score @s lobby_controls matches 1.. run scoreboard players add win_score global 2
execute if score @s lobby_controls matches 1.. run function tag:system/lobby/controller/go