# LASERTAG lobby controller
## run command


execute if entity @s[tag=lobby.controller] run playsound tag:menu.tick player @a ~ ~ ~
execute if entity @s[tag=lobby.controller] run data merge entity @s {ItemRotation:0b}
execute if entity @s[tag=lobby.controller] run particle minecraft:block minecraft:gold_block ~ ~ ~ 0 0 0 0.2 5