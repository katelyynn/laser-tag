# LASERTAG lobby controller
## game mode


execute if score game_mode global matches 0 run data merge entity @s {Item:{tag:{CustomModelData:6}}}
execute if score game_mode global matches 1 run data merge entity @s {Item:{tag:{CustomModelData:7}}}
execute if score game_mode global matches 2 run data merge entity @s {Item:{tag:{CustomModelData:8}}}
execute if score game_mode global matches 3 run data merge entity @s {Item:{tag:{CustomModelData:9}}}


execute if score @s lobby_controls matches 1.. run scoreboard players add game_mode global 1
execute if score @s lobby_controls matches 1.. run function tag:system/lobby/controller/go