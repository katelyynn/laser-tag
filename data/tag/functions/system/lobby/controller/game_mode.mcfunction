# LASERTAG lobby controller
## game mode


## 0: classic
## 1: oitc
## 2: critical
## 3: cth
## 4: infection
## 5: murder mystery
execute if score game_mode global matches 0 run data merge entity @s {Item:{tag:{CustomModelData:14}}}
execute if score game_mode global matches 1 run data merge entity @s {Item:{tag:{CustomModelData:15}}}
execute if score game_mode global matches 2 run data merge entity @s {Item:{tag:{CustomModelData:16}}}
execute if score game_mode global matches 3 run data merge entity @s {Item:{tag:{CustomModelData:17}}}
execute if score game_mode global matches 4 run data merge entity @s {Item:{tag:{CustomModelData:18}}}
execute if score game_mode global matches 5 run data merge entity @s {Item:{tag:{CustomModelData:19}}}


execute if score @s lobby_controls matches 1.. run scoreboard players add game_mode global 1
execute if score @s lobby_controls matches 1.. run function tag:system/lobby/controller/go