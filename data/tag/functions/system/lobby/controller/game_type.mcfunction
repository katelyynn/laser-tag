# LASERTAG lobby controller
## game type


execute if score game_type global matches 0 run data merge entity @s {Item:{tag:{CustomModelData:1}}}
execute if score game_type global matches 1 run data merge entity @s {Item:{tag:{CustomModelData:2}}}


execute if score @s lobby_controls matches 1.. run scoreboard players add game_type global 1
execute if score @s lobby_controls matches 1.. run function tag:system/lobby/controller/go