# LASERTAG crossbow
## timer


# announce
title @s actionbar ["",{"score":{"objective":"crossbow.time_s","name":"@s"},"color":"green","bold":true},{"text":".","color":"green","bold":true},{"score":{"objective":"crossbow.time","name":"@s"},"color":"green","bold":true}]

scoreboard players add @s crossbow.time 1
execute if score @s crossbow.time matches 20.. run scoreboard players add @s crossbow.time_s 1
execute if score @s crossbow.time matches 20.. run scoreboard players set @s crossbow.time 0

# re-charge
execute if score @s crossbow.time_s >= crossbow_recharge internal run function tag:system/crossbow/charge