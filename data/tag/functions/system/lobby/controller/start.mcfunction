# LASERTAG lobby controller
## game start


execute if score matchmaking_controller internal matches 0 run data merge entity @s {Item:{tag:{CustomModelData:3}}}
execute if score matchmaking_controller internal matches 1 run data merge entity @s {Item:{tag:{CustomModelData:4}}}


execute if score @s lobby_controls matches 1.. run scoreboard players add matchmaking_controller internal 1
execute if score @s lobby_controls matches 1.. run function tag:system/lobby/controller/go