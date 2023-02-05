# LASERTAG lobby controller
## run command


execute if entity @s[tag=lobby.controller] run playsound tag:menu.tick player @a ~ ~ ~
execute if entity @s[tag=lobby.controller] run data merge entity @s {ItemRotation:2b}
execute if entity @s[tag=lobby.controller] run particle minecraft:glow ~ ~ ~ 0 0 0 0.1 7