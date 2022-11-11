# LASERTAG crossbow
## NORMAL
## reload


advancement revoke @s only tag:crossbow/shoot_normal

# sfx
function tag:sfx/reload

function tag:system/crossbow/normal/locate

# depend on slot
## slot 0
execute if score @s crossbow_normal.slot matches 0 run item replace entity @s hotbar.0 with minecraft:crossbow{ChargedProjectiles:[{id:"minecraft:arrow",Count:1b}],Charged:1b,crossbow_type:"normal",Enchantments:[]}
## slot 1
execute if score @s crossbow_normal.slot matches 1 run item replace entity @s hotbar.1 with minecraft:crossbow{ChargedProjectiles:[{id:"minecraft:arrow",Count:1b}],Charged:1b,crossbow_type:"normal",Enchantments:[]}
## slot 2
execute if score @s crossbow_normal.slot matches 2 run item replace entity @s hotbar.2 with minecraft:crossbow{ChargedProjectiles:[{id:"minecraft:arrow",Count:1b}],Charged:1b,crossbow_type:"normal",Enchantments:[]}
## slot 3
execute if score @s crossbow_normal.slot matches 3 run item replace entity @s hotbar.3 with minecraft:crossbow{ChargedProjectiles:[{id:"minecraft:arrow",Count:1b}],Charged:1b,crossbow_type:"normal",Enchantments:[]}
## slot 4
execute if score @s crossbow_normal.slot matches 4 run item replace entity @s hotbar.4 with minecraft:crossbow{ChargedProjectiles:[{id:"minecraft:arrow",Count:1b}],Charged:1b,crossbow_type:"normal",Enchantments:[]}
## slot 5
execute if score @s crossbow_normal.slot matches 5 run item replace entity @s hotbar.5 with minecraft:crossbow{ChargedProjectiles:[{id:"minecraft:arrow",Count:1b}],Charged:1b,crossbow_type:"normal",Enchantments:[]}
## slot 6
execute if score @s crossbow_normal.slot matches 6 run item replace entity @s hotbar.6 with minecraft:crossbow{ChargedProjectiles:[{id:"minecraft:arrow",Count:1b}],Charged:1b,crossbow_type:"normal",Enchantments:[]}
## slot 7
execute if score @s crossbow_normal.slot matches 7 run item replace entity @s hotbar.7 with minecraft:crossbow{ChargedProjectiles:[{id:"minecraft:arrow",Count:1b}],Charged:1b,crossbow_type:"normal",Enchantments:[]}
## slot 8
execute if score @s crossbow_normal.slot matches 8 run item replace entity @s hotbar.8 with minecraft:crossbow{ChargedProjectiles:[{id:"minecraft:arrow",Count:1b}],Charged:1b,crossbow_type:"normal",Enchantments:[]}

# clear unloaded
clear @s crossbow{ChargedProjectiles:[],crossbow_type:"normal"}

# disable timer until shot
scoreboard players set @s crossbow_normal.time -1
scoreboard players set @s crossbow_normal.shots 0