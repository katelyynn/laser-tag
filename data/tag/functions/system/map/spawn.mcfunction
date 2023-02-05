# LASERTAG map
## set spawn for players on map
## refer to system/lobby/main for info


execute if score map global matches -1 run spawnpoint @s -200 150 -200
execute if score map global matches 0 run spawnpoint @s 200 150 200
execute if score map global matches 0 run spawnpoint @s 400 150 400