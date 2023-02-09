# LASERTAG matchmaking
## map making dev


scoreboard players set matchmaking_controller internal 0

# announce
tellraw @s ["",{"text":"[","color":"dark_gray"},{"text":"→","color":"gray"},{"text":"] ","color":"dark_gray"},{"text":"Teleported to current selected map (in map dev mode).","color":"gray"}]
# sfx
playsound tag:menu.open player @s


# teleport to map
function tag:system/map/teleport