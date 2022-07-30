# LASERTAG crossbow
## MACHINE
## timer (in ticks)


# announce
title @s actionbar ["",{"score":{"objective":"crossbow_machine.time_s","name":"@s"},"color":"green","bold":true},{"text":".","color":"green","bold":true},{"score":{"objective":"crossbow_machine.time","name":"@s"},"color":"green","bold":true}]

scoreboard players add @s crossbow_machine.time 1

# re-charge
execute if score @s crossbow_machine.time >= crossbow_machine.recharge internal run function tag:system/crossbow/machine/charge