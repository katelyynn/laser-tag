# LASERTAG crossbow
## re-charge


function tag:system/crossbow/locate

# sfx
playsound minecraft:item.crossbow.loading_end player @s

# depend on slot
## slot 0
execute if score @s crossbow.slot matches 0 run item replace entity @s hotbar.0 with minecraft:crossbow{ChargedProjectiles:[{id:"minecraft:arrow",Count:1b}],Charged:1b}
## slot 1
execute if score @s crossbow.slot matches 1 run item replace entity @s hotbar.1 with minecraft:crossbow{ChargedProjectiles:[{id:"minecraft:arrow",Count:1b}],Charged:1b}
## slot 2
execute if score @s crossbow.slot matches 2 run item replace entity @s hotbar.2 with minecraft:crossbow{ChargedProjectiles:[{id:"minecraft:arrow",Count:1b}],Charged:1b}
## slot 3
execute if score @s crossbow.slot matches 3 run item replace entity @s hotbar.3 with minecraft:crossbow{ChargedProjectiles:[{id:"minecraft:arrow",Count:1b}],Charged:1b}
## slot 4
execute if score @s crossbow.slot matches 4 run item replace entity @s hotbar.4 with minecraft:crossbow{ChargedProjectiles:[{id:"minecraft:arrow",Count:1b}],Charged:1b}
## slot 5
execute if score @s crossbow.slot matches 5 run item replace entity @s hotbar.5 with minecraft:crossbow{ChargedProjectiles:[{id:"minecraft:arrow",Count:1b}],Charged:1b}
## slot 6
execute if score @s crossbow.slot matches 6 run item replace entity @s hotbar.6 with minecraft:crossbow{ChargedProjectiles:[{id:"minecraft:arrow",Count:1b}],Charged:1b}
## slot 7
execute if score @s crossbow.slot matches 7 run item replace entity @s hotbar.7 with minecraft:crossbow{ChargedProjectiles:[{id:"minecraft:arrow",Count:1b}],Charged:1b}

# disable timer until shot
scoreboard players set @s crossbow.time -1
scoreboard players set @s crossbow.time_s 0