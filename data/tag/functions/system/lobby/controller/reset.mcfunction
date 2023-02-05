# LASERTAG lobby controller
## reset defaults


execute if score @s lobby_controls matches 1.. run scoreboard players set defaults internal 2
execute if score @s lobby_controls matches 1.. run tellraw @a ["",{"text":"[","color":"dark_gray"},{"text":"→","color":"gray"},{"text":"] ","color":"dark_gray"},{"text":"Game configuration has been reset.","color":"yellow"}]
execute if score @s lobby_controls matches 1.. run playsound tag:menu.close player @a ~ ~ ~
execute if score @s lobby_controls matches 1.. run function tag:system/lobby/controller/go