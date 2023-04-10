# LASERTAG crossbow
## NORMAL
## re-charge


advancement revoke @s only tag:crossbow/shoot_normal

function tag:system/crossbow/normal/locate

# sfx
playsound minecraft:item.crossbow.loading_end player @s

# depend on slot
## slot 0
execute if score @s crossbow_normal.slot matches 0 run item replace entity @s hotbar.0 with minecraft:crossbow{ChargedProjectiles:[{id:"minecraft:arrow",Count:1b}],Charged:1b,canReload:1b,weaponItem:1b,crossbow_type:"normal"}
## slot 1
execute if score @s crossbow_normal.slot matches 1 run item replace entity @s hotbar.1 with minecraft:crossbow{ChargedProjectiles:[{id:"minecraft:arrow",Count:1b}],Charged:1b,canReload:1b,weaponItem:1b,crossbow_type:"normal"}
## slot 2
execute if score @s crossbow_normal.slot matches 2 run item replace entity @s hotbar.2 with minecraft:crossbow{ChargedProjectiles:[{id:"minecraft:arrow",Count:1b}],Charged:1b,canReload:1b,weaponItem:1b,crossbow_type:"normal"}
## slot 3
execute if score @s crossbow_normal.slot matches 3 run item replace entity @s hotbar.3 with minecraft:crossbow{ChargedProjectiles:[{id:"minecraft:arrow",Count:1b}],Charged:1b,canReload:1b,weaponItem:1b,crossbow_type:"normal"}
## slot 4
execute if score @s crossbow_normal.slot matches 4 run item replace entity @s hotbar.4 with minecraft:crossbow{ChargedProjectiles:[{id:"minecraft:arrow",Count:1b}],Charged:1b,canReload:1b,weaponItem:1b,crossbow_type:"normal"}
## slot 5
execute if score @s crossbow_normal.slot matches 5 run item replace entity @s hotbar.5 with minecraft:crossbow{ChargedProjectiles:[{id:"minecraft:arrow",Count:1b}],Charged:1b,canReload:1b,weaponItem:1b,crossbow_type:"normal"}
## slot 6
execute if score @s crossbow_normal.slot matches 6 run item replace entity @s hotbar.6 with minecraft:crossbow{ChargedProjectiles:[{id:"minecraft:arrow",Count:1b}],Charged:1b,canReload:1b,weaponItem:1b,crossbow_type:"normal"}
## slot 7
execute if score @s crossbow_normal.slot matches 7 run item replace entity @s hotbar.7 with minecraft:crossbow{ChargedProjectiles:[{id:"minecraft:arrow",Count:1b}],Charged:1b,canReload:1b,weaponItem:1b,crossbow_type:"normal"}
## slot 8
execute if score @s crossbow_normal.slot matches 8 run item replace entity @s hotbar.8 with minecraft:crossbow{ChargedProjectiles:[{id:"minecraft:arrow",Count:1b}],Charged:1b,canReload:1b,weaponItem:1b,crossbow_type:"normal"}

# clear unloaded
clear @s crossbow{ChargedProjectiles:[],canReload:1b,weaponItem:1b,crossbow_type:"normal"}

# disable timer until shot
scoreboard players set @s crossbow_normal.time -1

tellraw @s [{"text":"Crossbow normal recharged at slot "},{"score":{"name":"@s","objective":"crossbow_normal.slot"},"color":"yellow"}]