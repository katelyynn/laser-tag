# LASERTAG lobby controller
## game start


execute if score @s lobby_controls matches 1.. run scoreboard players add matchmaking_controller internal 1
execute if score @s lobby_controls matches 1.. run function tag:system/lobby/controller/go

execute if score @s lobby_controls matches 1 unless score matchmaking internal matches 1.. run function tag:system/start/matchmaking/go
execute if score @s lobby_controls matches 1 unless score matchmaking internal matches 1.. run function tag:system/lobby/controller/go_lock

execute if score @s lobby_controls matches 2.. run function tag:system/start/matchmaking/cancel
execute if score @s lobby_controls matches 2.. run function tag:system/lobby/controller/go