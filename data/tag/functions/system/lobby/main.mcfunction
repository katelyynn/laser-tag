# LASERTAG lobby


# lobby controls
execute as @e[tag=lobby.controller] store result score @s lobby_controls run data get entity @s ItemRotation
## restrict control
execute unless score period internal matches -1 as @e[tag=lobby.controller] at @s if score @s lobby_controls matches 1.. run playsound block.note_block.bass player @a ~ ~ ~
execute unless score period internal matches -1 as @e[tag=lobby.controller] at @s if score @s lobby_controls matches 1.. run particle minecraft:block minecraft:redstone_block ~ ~ ~ 0 0 0 0.1 7
execute unless score period internal matches -1 as @e[tag=lobby.controller] at @s if score @s lobby_controls matches 1.. run data merge entity @s {ItemRotation:0b}
execute unless score period internal matches -1 as @e[tag=lobby.controller] at @s if score @s lobby_controls matches 1.. run scoreboard players reset @s lobby_controls

# map selector
## TODO: relocate to lobby/valid when finished
execute as @a unless score @s temp_store.map_selector matches 0.. run scoreboard players set @s temp_store.map_selector 0
execute as @a run function tag:system/lobby/map_selector/check

# if in lobby
execute if score period internal matches -1 run function tag:system/lobby/valid
