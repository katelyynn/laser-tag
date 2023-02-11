# LASERTAG matchmaking
## map making dev


scoreboard players set matchmaking_controller internal 0

# announce
tellraw @p ["",{"text":"[","color":"dark_gray"},{"text":"→","color":"gray"},{"text":"] ","color":"dark_gray"},{"text":"Teleported to current selected map (in map dev mode).","color":"gray"}]
# sfx
playsound tag:menu.open player @p


# teleport to map
execute as @p run function tag:system/map/teleport