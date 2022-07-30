# LASERTAG crossbow
## NORMAL
## timer (in ticks)


# announce
title @s actionbar ["",{"score":{"objective":"crossbow_normal.time_s","name":"@s"},"color":"green","bold":true},{"text":".","color":"green","bold":true},{"score":{"objective":"crossbow_normal.time","name":"@s"},"color":"green","bold":true}]

scoreboard players add @s crossbow_normal.time 1

# re-charge
execute if score @s crossbow_normal.time >= crossbow_normal.recharge internal run function tag:system/crossbow/normal/charge