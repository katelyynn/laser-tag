# LASERTAG lobby controller
## game mode


execute if score mode global matches 0 run data merge entity @s {Item:{tag:{CustomModelData:1}}}
execute if score mode global matches 1 run data merge entity @s {Item:{tag:{CustomModelData:2}}}


execute if score @s lobby_controls matches 1.. run scoreboard players add mode global 1
execute if score @s lobby_controls matches 1.. run function tag:system/lobby/controller/go