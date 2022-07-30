# LASERTAG crossbow
## MACHINE
## reset timer


scoreboard players set @s crossbow_machine.time 0
# increment shots
scoreboard players add @s crossbow_machine.shots 1
function tag:system/crossbow/machine/display