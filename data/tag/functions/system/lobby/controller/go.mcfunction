# LASERTAG lobby controller
## run command


execute if entity @s[tag=lobby.controller] run playsound tag:menu.tick player @a ~ ~ ~
execute if entity @s[tag=lobby.controller] run data merge entity @s {ItemRotation:0b}