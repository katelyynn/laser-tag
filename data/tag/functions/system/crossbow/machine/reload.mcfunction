# LASERTAG crossbow
## MACHINE
## reload


advancement revoke @s only tag:crossbow/shoot_machine

# sfx
function tag:sfx/reload

function tag:system/crossbow/machine/locate

# depend on slot
## slot 0
execute if score @s crossbow_machine.slot matches 0 run item replace entity @s hotbar.0 with minecraft:crossbow{display:{Name:'[{"text":"Machine Crossbow","italic":false}]'},ChargedProjectiles:[{id:"minecraft:arrow",Count:1b}],Charged:1b,canReload:1b,weaponItem:1b,crossbow_type:"machine",Enchantments:[{id:"minecraft:quick_charge",lvl:1s}],HideFlags:1}
## slot 1
execute if score @s crossbow_machine.slot matches 1 run item replace entity @s hotbar.1 with minecraft:crossbow{display:{Name:'[{"text":"Machine Crossbow","italic":false}]'},ChargedProjectiles:[{id:"minecraft:arrow",Count:1b}],Charged:1b,canReload:1b,weaponItem:1b,crossbow_type:"machine",Enchantments:[{id:"minecraft:quick_charge",lvl:1s}],HideFlags:1}
## slot 2
execute if score @s crossbow_machine.slot matches 2 run item replace entity @s hotbar.2 with minecraft:crossbow{display:{Name:'[{"text":"Machine Crossbow","italic":false}]'},ChargedProjectiles:[{id:"minecraft:arrow",Count:1b}],Charged:1b,canReload:1b,weaponItem:1b,crossbow_type:"machine",Enchantments:[{id:"minecraft:quick_charge",lvl:1s}],HideFlags:1}
## slot 3
execute if score @s crossbow_machine.slot matches 3 run item replace entity @s hotbar.3 with minecraft:crossbow{display:{Name:'[{"text":"Machine Crossbow","italic":false}]'},ChargedProjectiles:[{id:"minecraft:arrow",Count:1b}],Charged:1b,canReload:1b,weaponItem:1b,crossbow_type:"machine",Enchantments:[{id:"minecraft:quick_charge",lvl:1s}],HideFlags:1}
## slot 4
execute if score @s crossbow_machine.slot matches 4 run item replace entity @s hotbar.4 with minecraft:crossbow{display:{Name:'[{"text":"Machine Crossbow","italic":false}]'},ChargedProjectiles:[{id:"minecraft:arrow",Count:1b}],Charged:1b,canReload:1b,weaponItem:1b,crossbow_type:"machine",Enchantments:[{id:"minecraft:quick_charge",lvl:1s}],HideFlags:1}
## slot 5
execute if score @s crossbow_machine.slot matches 5 run item replace entity @s hotbar.5 with minecraft:crossbow{display:{Name:'[{"text":"Machine Crossbow","italic":false}]'},ChargedProjectiles:[{id:"minecraft:arrow",Count:1b}],Charged:1b,canReload:1b,weaponItem:1b,crossbow_type:"machine",Enchantments:[{id:"minecraft:quick_charge",lvl:1s}],HideFlags:1}
## slot 6
execute if score @s crossbow_machine.slot matches 6 run item replace entity @s hotbar.6 with minecraft:crossbow{display:{Name:'[{"text":"Machine Crossbow","italic":false}]'},ChargedProjectiles:[{id:"minecraft:arrow",Count:1b}],Charged:1b,canReload:1b,weaponItem:1b,crossbow_type:"machine",Enchantments:[{id:"minecraft:quick_charge",lvl:1s}],HideFlags:1}
## slot 7
execute if score @s crossbow_machine.slot matches 7 run item replace entity @s hotbar.7 with minecraft:crossbow{display:{Name:'[{"text":"Machine Crossbow","italic":false}]'},ChargedProjectiles:[{id:"minecraft:arrow",Count:1b}],Charged:1b,canReload:1b,weaponItem:1b,crossbow_type:"machine",Enchantments:[{id:"minecraft:quick_charge",lvl:1s}],HideFlags:1}
## slot 8
execute if score @s crossbow_machine.slot matches 8 run item replace entity @s hotbar.8 with minecraft:crossbow{display:{Name:'[{"text":"Machine Crossbow","italic":false}]'},ChargedProjectiles:[{id:"minecraft:arrow",Count:1b}],Charged:1b,canReload:1b,weaponItem:1b,crossbow_type:"machine",Enchantments:[{id:"minecraft:quick_charge",lvl:1s}],HideFlags:1}

# clear unloaded
clear @s crossbow{ChargedProjectiles:[],canReload:1b,weaponItem:1b,crossbow_type:"machine"}

# disable timer until shot
scoreboard players set @s crossbow_machine.time -1
scoreboard players set @s crossbow_machine.shots 0

execute if score logs internal matches 1 run say "Reloaded machine crossbow"