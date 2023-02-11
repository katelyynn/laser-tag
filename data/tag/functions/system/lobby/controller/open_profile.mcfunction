# LASERTAG lobby controller
## open profile


execute if score @s lobby_controls matches 1.. run scoreboard players add open_profile internal 1
execute if score @s lobby_controls matches 1.. run function tag:system/lobby/controller/go