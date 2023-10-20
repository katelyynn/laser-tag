# LASERTAG lobby controller
## game rating


execute if score game_rating global matches 0 run data merge entity @s {Item:{tag:{CustomModelData:20}}}
execute if score game_rating global matches 1 run data merge entity @s {Item:{tag:{CustomModelData:21}}}


execute if score @s lobby_controls matches 1.. run scoreboard players add game_rating global 1
execute if score @s lobby_controls matches 1.. run function tag:system/lobby/controller/go