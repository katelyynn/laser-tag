# LASERTAG crossbow
## main loop


# timer
## NORMAL
execute unless score @s crossbow_normal.time matches -1 run function tag:system/crossbow/normal/time
## MACHINE
execute unless score @s crossbow_machine.time matches -1 run function tag:system/crossbow/machine/time