# LASERTAG matchmaking
## map making dev


# announce
tellraw @s ["",{"text":"[","color":"dark_gray"},{"text":"→","color":"gray"},{"text":"] ","color":"dark_gray"},{"text":"Teleported to current selected map (in map dev mode).","color":"gray"}]
# sfx
playsound tag:ui.open player @s


# teleport to map
function tag:system/map/teleport