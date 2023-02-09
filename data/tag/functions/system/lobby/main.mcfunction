# LASERTAG lobby


# lobby controls
execute as @e[tag=lobby.controller] store result score @s lobby_controls run data get entity @s ItemRotation
## restrict control
execute unless score period internal matches -1 as @e[tag=lobby.controller] at @s if score @s lobby_controls matches 1.. run playsound block.note_block.bass player @a ~ ~ ~
execute unless score period internal matches -1 as @e[tag=lobby.controller] at @s if score @s lobby_controls matches 1.. run particle minecraft:block minecraft:redstone_block ~ ~ ~ 0 0 0 0.1 7
execute unless score period internal matches -1 as @e[tag=lobby.controller] at @s if score @s lobby_controls matches 1.. run data merge entity @s {ItemRotation:0b}
execute unless score period internal matches -1 as @e[tag=lobby.controller] at @s if score @s lobby_controls matches 1.. run scoreboard players reset @s lobby_controls

# if in lobby
execute if score period internal matches -1 run function tag:system/lobby/valid