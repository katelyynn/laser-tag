# LASERTAG crossbow
## main loop


# timer
execute unless score @s crossbow.time matches -1 run function tag:system/crossbow/time

# clear unloaded
clear @s crossbow{ChargedProjectiles:[]}

# detect shoot
execute if score @s crossbow.shoot matches 1.. run function tag:system/crossbow/reset