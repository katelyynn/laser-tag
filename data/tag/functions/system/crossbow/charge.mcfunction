# LASERTAG crossbow
## re-charge


function tag:system/crossbow/locate

# sfx
playsound minecraft:item.crossbow.loading_end player @s

# depend on slot
## slot 0
execute if score @s crossbow.slot matches 0 run data merge entity @s {Inventory:{Slot:0b,id:"minecraft:crossbow",ChargedProjectiles:[{id:"minecraft:arrow",Count:1b}]}}
## slot 1
execute if score @s crossbow.slot matches 1 run data merge entity @s {Inventory:{Slot:1b,id:"minecraft:crossbow",ChargedProjectiles:[{id:"minecraft:arrow",Count:1b}]}}
## slot 2
execute if score @s crossbow.slot matches 2 run data merge entity @s {Inventory:{Slot:2b,id:"minecraft:crossbow",ChargedProjectiles:[{id:"minecraft:arrow",Count:1b}]}}
## slot 3
execute if score @s crossbow.slot matches 3 run data merge entity @s {Inventory:{Slot:3b,id:"minecraft:crossbow",ChargedProjectiles:[{id:"minecraft:arrow",Count:1b}]}}
## slot 4
execute if score @s crossbow.slot matches 4 run data merge entity @s {Inventory:{Slot:4b,id:"minecraft:crossbow",ChargedProjectiles:[{id:"minecraft:arrow",Count:1b}]}}
## slot 5
execute if score @s crossbow.slot matches 5 run data merge entity @s {Inventory:{Slot:5b,id:"minecraft:crossbow",ChargedProjectiles:[{id:"minecraft:arrow",Count:1b}]}}
## slot 6
execute if score @s crossbow.slot matches 6 run data merge entity @s {Inventory:{Slot:6b,id:"minecraft:crossbow",ChargedProjectiles:[{id:"minecraft:arrow",Count:1b}]}}
## slot 7
execute if score @s crossbow.slot matches 7 run data merge entity @s {Inventory:{Slot:7b,id:"minecraft:crossbow",ChargedProjectiles:[{id:"minecraft:arrow",Count:1b}]}}

# disable timer until shot
scoreboard players set @s crossbow.time -1
scoreboard players set @s crossbow.time_s 0