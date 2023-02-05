# LASERTAG matchmaking
## start matchmaking


scoreboard players set matchmaking internal 1
function tag:system/lobby/controller/go

# announce
tellraw @a ["",{"text":"\n[","color":"dark_gray"},{"text":"→","color":"green"},{"text":"] ","color":"dark_gray"},{"text":"A new game will begin in 8 seconds.. ready up to play.\n","color":"yellow"}]
# sfx
execute as @a at @s run playsound block.note_block.pling player @s ~ ~ ~ 100 0


# countdown
title @a times 20 100 5
schedule function tag:system/start/count/title 5s
schedule function tag:system/start/count/3 5s
schedule function tag:system/start/count/2 6s
schedule function tag:system/start/count/1 7s
schedule function tag:system/start/go 8s