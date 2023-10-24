# LASERTAG crossbow
## GLOWING
## re-charge


advancement revoke @s only tag:crossbow/shoot_glowing

function tag:system/crossbow/glowing/locate

# sfx
playsound minecraft:item.crossbow.loading_end player @s

# depend on slot
## slot 0
execute if score @s crossbow_glowing.slot matches 0 run item replace entity @s hotbar.0 with minecraft:crossbow{display:{Name:'[{"translate":"item.weapon.crossbow_glowing","italic":false}]'},ChargedProjectiles:[{id:"minecraft:spectral_arrow",Count:1b}],Charged:1b,canReload:1b,weaponItem:1b,CustomModelData:3,crossbow_type:"glowing"}
## slot 1
execute if score @s crossbow_glowing.slot matches 1 run item replace entity @s hotbar.1 with minecraft:crossbow{display:{Name:'[{"translate":"item.weapon.crossbow_glowing","italic":false}]'},ChargedProjectiles:[{id:"minecraft:spectral_arrow",Count:1b}],Charged:1b,canReload:1b,weaponItem:1b,CustomModelData:3,crossbow_type:"glowing"}
## slot 2
execute if score @s crossbow_glowing.slot matches 2 run item replace entity @s hotbar.2 with minecraft:crossbow{display:{Name:'[{"translate":"item.weapon.crossbow_glowing","italic":false}]'},ChargedProjectiles:[{id:"minecraft:spectral_arrow",Count:1b}],Charged:1b,canReload:1b,weaponItem:1b,CustomModelData:3,crossbow_type:"glowing"}
## slot 3
execute if score @s crossbow_glowing.slot matches 3 run item replace entity @s hotbar.3 with minecraft:crossbow{display:{Name:'[{"translate":"item.weapon.crossbow_glowing","italic":false}]'},ChargedProjectiles:[{id:"minecraft:spectral_arrow",Count:1b}],Charged:1b,canReload:1b,weaponItem:1b,CustomModelData:3,crossbow_type:"glowing"}
## slot 4
execute if score @s crossbow_glowing.slot matches 4 run item replace entity @s hotbar.4 with minecraft:crossbow{display:{Name:'[{"translate":"item.weapon.crossbow_glowing","italic":false}]'},ChargedProjectiles:[{id:"minecraft:spectral_arrow",Count:1b}],Charged:1b,canReload:1b,weaponItem:1b,CustomModelData:3,crossbow_type:"glowing"}
## slot 5
execute if score @s crossbow_glowing.slot matches 5 run item replace entity @s hotbar.5 with minecraft:crossbow{display:{Name:'[{"translate":"item.weapon.crossbow_glowing","italic":false}]'},ChargedProjectiles:[{id:"minecraft:spectral_arrow",Count:1b}],Charged:1b,canReload:1b,weaponItem:1b,CustomModelData:3,crossbow_type:"glowing"}
## slot 6
execute if score @s crossbow_glowing.slot matches 6 run item replace entity @s hotbar.6 with minecraft:crossbow{display:{Name:'[{"translate":"item.weapon.crossbow_glowing","italic":false}]'},ChargedProjectiles:[{id:"minecraft:spectral_arrow",Count:1b}],Charged:1b,canReload:1b,weaponItem:1b,CustomModelData:3,crossbow_type:"glowing"}
## slot 7
execute if score @s crossbow_glowing.slot matches 7 run item replace entity @s hotbar.7 with minecraft:crossbow{display:{Name:'[{"translate":"item.weapon.crossbow_glowing","italic":false}]'},ChargedProjectiles:[{id:"minecraft:spectral_arrow",Count:1b}],Charged:1b,canReload:1b,weaponItem:1b,CustomModelData:3,crossbow_type:"glowing"}
## slot 8
execute if score @s crossbow_glowing.slot matches 8 run item replace entity @s hotbar.8 with minecraft:crossbow{display:{Name:'[{"translate":"item.weapon.crossbow_glowing","italic":false}]'},ChargedProjectiles:[{id:"minecraft:spectral_arrow",Count:1b}],Charged:1b,canReload:1b,weaponItem:1b,CustomModelData:3,crossbow_type:"glowing"}

# clear unloaded
clear @s crossbow{ChargedProjectiles:[],canReload:1b,weaponItem:1b,CustomModelData:3,crossbow_type:"glowing"}

# disable timer until shot
scoreboard players set @s crossbow_glowing.time -1

execute if score dev_mode internal matches 77 run tellraw @s [{"text":"Crossbow glowing recharged at slot "},{"score":{"name":"@s","objective":"crossbow_glowing.slot"},"color":"yellow"}]