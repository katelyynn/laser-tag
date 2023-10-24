# LASERTAG crossbow
## poison
## reload


advancement revoke @s only tag:crossbow/shoot_poison

# sfx
function tag:sfx/reload

function tag:system/crossbow/poison/locate

# depend on slot
## slot 0
execute if score @s crossbow_poison.slot matches 0 run item replace entity @s hotbar.0 with minecraft:crossbow{display:{Name:'[{"translate":"item.weapon.crossbow_poison","italic":false}]'},ChargedProjectiles:[{id:"minecraft:tipped_arrow",Count:1b,tag:{Potion:"minecraft:long_poison",CustomPotionColor:8494175}}],Charged:1b,canReload:1b,weaponItem:1b,CustomModelData:1,crossbow_type:"poison",Enchantments:[]}
## slot 1
execute if score @s crossbow_poison.slot matches 1 run item replace entity @s hotbar.1 with minecraft:crossbow{display:{Name:'[{"translate":"item.weapon.crossbow_poison","italic":false}]'},ChargedProjectiles:[{id:"minecraft:tipped_arrow",Count:1b,tag:{Potion:"minecraft:long_poison",CustomPotionColor:8494175}}],Charged:1b,canReload:1b,weaponItem:1b,CustomModelData:1,crossbow_type:"poison",Enchantments:[]}
## slot 2
execute if score @s crossbow_poison.slot matches 2 run item replace entity @s hotbar.2 with minecraft:crossbow{display:{Name:'[{"translate":"item.weapon.crossbow_poison","italic":false}]'},ChargedProjectiles:[{id:"minecraft:tipped_arrow",Count:1b,tag:{Potion:"minecraft:long_poison",CustomPotionColor:8494175}}],Charged:1b,canReload:1b,weaponItem:1b,CustomModelData:1,crossbow_type:"poison",Enchantments:[]}
## slot 3
execute if score @s crossbow_poison.slot matches 3 run item replace entity @s hotbar.3 with minecraft:crossbow{display:{Name:'[{"translate":"item.weapon.crossbow_poison","italic":false}]'},ChargedProjectiles:[{id:"minecraft:tipped_arrow",Count:1b,tag:{Potion:"minecraft:long_poison",CustomPotionColor:8494175}}],Charged:1b,canReload:1b,weaponItem:1b,CustomModelData:1,crossbow_type:"poison",Enchantments:[]}
## slot 4
execute if score @s crossbow_poison.slot matches 4 run item replace entity @s hotbar.4 with minecraft:crossbow{display:{Name:'[{"translate":"item.weapon.crossbow_poison","italic":false}]'},ChargedProjectiles:[{id:"minecraft:tipped_arrow",Count:1b,tag:{Potion:"minecraft:long_poison",CustomPotionColor:8494175}}],Charged:1b,canReload:1b,weaponItem:1b,CustomModelData:1,crossbow_type:"poison",Enchantments:[]}
## slot 5
execute if score @s crossbow_poison.slot matches 5 run item replace entity @s hotbar.5 with minecraft:crossbow{display:{Name:'[{"translate":"item.weapon.crossbow_poison","italic":false}]'},ChargedProjectiles:[{id:"minecraft:tipped_arrow",Count:1b,tag:{Potion:"minecraft:long_poison",CustomPotionColor:8494175}}],Charged:1b,canReload:1b,weaponItem:1b,CustomModelData:1,crossbow_type:"poison",Enchantments:[]}
## slot 6
execute if score @s crossbow_poison.slot matches 6 run item replace entity @s hotbar.6 with minecraft:crossbow{display:{Name:'[{"translate":"item.weapon.crossbow_poison","italic":false}]'},ChargedProjectiles:[{id:"minecraft:tipped_arrow",Count:1b,tag:{Potion:"minecraft:long_poison",CustomPotionColor:8494175}}],Charged:1b,canReload:1b,weaponItem:1b,CustomModelData:1,crossbow_type:"poison",Enchantments:[]}
## slot 7
execute if score @s crossbow_poison.slot matches 7 run item replace entity @s hotbar.7 with minecraft:crossbow{display:{Name:'[{"translate":"item.weapon.crossbow_poison","italic":false}]'},ChargedProjectiles:[{id:"minecraft:tipped_arrow",Count:1b,tag:{Potion:"minecraft:long_poison",CustomPotionColor:8494175}}],Charged:1b,canReload:1b,weaponItem:1b,CustomModelData:1,crossbow_type:"poison",Enchantments:[]}
## slot 8
execute if score @s crossbow_poison.slot matches 8 run item replace entity @s hotbar.8 with minecraft:crossbow{display:{Name:'[{"translate":"item.weapon.crossbow_poison","italic":false}]'},ChargedProjectiles:[{id:"minecraft:tipped_arrow",Count:1b,tag:{Potion:"minecraft:long_poison",CustomPotionColor:8494175}}],Charged:1b,canReload:1b,weaponItem:1b,CustomModelData:1,crossbow_type:"poison",Enchantments:[]}

# clear unloaded
clear @s crossbow{ChargedProjectiles:[],canReload:1b,weaponItem:1b,CustomModelData:1,crossbow_type:"poison"}

# disable timer until shot
scoreboard players set @s crossbow_poison.time -1
scoreboard players set @s crossbow_poison.shots 0

execute if score logs internal matches 1 run say "Reloaded poison crossbow"