# LASERTAG matchmaking
## cancel matchmaking


scoreboard players set matchmaking internal 0

# announce
tellraw @a ["",{"text":"\n[","color":"dark_gray"},{"text":"→","color":"gray"},{"text":"] ","color":"dark_gray"},{"text":"Matchmaking cancelled.\n","color":"gray"}]
# sfx
execute as @a at @s run playsound tag:ui.tick player @s


# countdown
function kate:title/reset
function kate:title/reset_times
schedule clear tag:system/start/count/title
schedule clear tag:system/start/count/3
schedule clear tag:system/start/count/2
schedule clear tag:system/start/count/1
schedule clear tag:system/start/check