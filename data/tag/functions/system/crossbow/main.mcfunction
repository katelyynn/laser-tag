# LASERTAG crossbow
## main loop


# timer
## NORMAL
execute unless score @s crossbow_normal.time matches -1 run function tag:system/crossbow/normal/time
execute if score @s crossbow_normal.time matches -1..0 run function tag:system/crossbow/normal/display
## MACHINE
execute unless score @s crossbow_machine.time matches -1 run function tag:system/crossbow/machine/time
execute if score @s crossbow_machine.time matches -1..0 run function tag:system/crossbow/machine/display
## ROCKET
execute unless score @s crossbow_rocket.time matches -1 run function tag:system/crossbow/rocket/time
execute if score @s crossbow_rocket.time matches -1..0 run function tag:system/crossbow/rocket/display

# clear actionbar
execute if entity @s[nbt=!{SelectedItem:{id:"minecraft:crossbow",Count:1b,tag:{crossbow_type:"machine"}}},nbt=!{SelectedItem:{id:"minecraft:crossbow",Count:1b,tag:{crossbow_type:"normal"}}},nbt=!{SelectedItem:{id:"minecraft:crossbow",Count:1b,tag:{crossbow_type:"rocket"}}}] run title @s actionbar ""