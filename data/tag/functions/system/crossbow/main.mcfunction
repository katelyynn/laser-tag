# LASERTAG crossbow
## main loop


# timer
## NORMAL
execute unless score @s crossbow_normal.time matches -1 run function tag:system/crossbow/normal/time
execute if score @s crossbow_normal.time matches -1..0 run function tag:system/crossbow/normal/display
## MACHINE
execute unless score @s crossbow_machine.time matches -1 run function tag:system/crossbow/machine/time
execute if score @s crossbow_machine.time matches -1..0 run function tag:system/crossbow/machine/display

# clear actionbar
execute if entity @s[nbt=!{SelectedItem:{id:"minecraft:crossbow",Count:1b,tag:{crossbow_type:"machine"}}},nbt=!{SelectedItem:{id:"minecraft:crossbow",Count:1b,tag:{crossbow_type:"normal"}}}] run title @s actionbar ""