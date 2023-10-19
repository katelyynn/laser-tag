# LASERTAG crossbow
## poison
## re-charge


advancement revoke @s only tag:crossbow/shoot_poison

function tag:system/crossbow/poison/locate

# sfx
playsound minecraft:item.crossbow.loading_end player @s

# depend on slot
## slot 0
execute if score @s crossbow_poison.slot matches 0 run item replace entity @s hotbar.0 with minecraft:crossbow{display:{Name:'[{"text":"Poison Crossbow","italic":false}]'},ChargedProjectiles:[{id:"minecraft:tipped_arrow",Count:1b,tag:{Potion:"minecraft:poison",CustomPotionColor:8494175}}],Charged:1b,canReload:1b,weaponItem:1b,crossbow_type:"poison"}
## slot 1
execute if score @s crossbow_poison.slot matches 1 run item replace entity @s hotbar.1 with minecraft:crossbow{display:{Name:'[{"text":"Poison Crossbow","italic":false}]'},ChargedProjectiles:[{id:"minecraft:tipped_arrow",Count:1b,tag:{Potion:"minecraft:poison",CustomPotionColor:8494175}}],Charged:1b,canReload:1b,weaponItem:1b,crossbow_type:"poison"}
## slot 2
execute if score @s crossbow_poison.slot matches 2 run item replace entity @s hotbar.2 with minecraft:crossbow{display:{Name:'[{"text":"Poison Crossbow","italic":false}]'},ChargedProjectiles:[{id:"minecraft:tipped_arrow",Count:1b,tag:{Potion:"minecraft:poison",CustomPotionColor:8494175}}],Charged:1b,canReload:1b,weaponItem:1b,crossbow_type:"poison"}
## slot 3
execute if score @s crossbow_poison.slot matches 3 run item replace entity @s hotbar.3 with minecraft:crossbow{display:{Name:'[{"text":"Poison Crossbow","italic":false}]'},ChargedProjectiles:[{id:"minecraft:tipped_arrow",Count:1b,tag:{Potion:"minecraft:poison",CustomPotionColor:8494175}}],Charged:1b,canReload:1b,weaponItem:1b,crossbow_type:"poison"}
## slot 4
execute if score @s crossbow_poison.slot matches 4 run item replace entity @s hotbar.4 with minecraft:crossbow{display:{Name:'[{"text":"Poison Crossbow","italic":false}]'},ChargedProjectiles:[{id:"minecraft:tipped_arrow",Count:1b,tag:{Potion:"minecraft:poison",CustomPotionColor:8494175}}],Charged:1b,canReload:1b,weaponItem:1b,crossbow_type:"poison"}
## slot 5
execute if score @s crossbow_poison.slot matches 5 run item replace entity @s hotbar.5 with minecraft:crossbow{display:{Name:'[{"text":"Poison Crossbow","italic":false}]'},ChargedProjectiles:[{id:"minecraft:tipped_arrow",Count:1b,tag:{Potion:"minecraft:poison",CustomPotionColor:8494175}}],Charged:1b,canReload:1b,weaponItem:1b,crossbow_type:"poison"}
## slot 6
execute if score @s crossbow_poison.slot matches 6 run item replace entity @s hotbar.6 with minecraft:crossbow{display:{Name:'[{"text":"Poison Crossbow","italic":false}]'},ChargedProjectiles:[{id:"minecraft:tipped_arrow",Count:1b,tag:{Potion:"minecraft:poison",CustomPotionColor:8494175}}],Charged:1b,canReload:1b,weaponItem:1b,crossbow_type:"poison"}
## slot 7
execute if score @s crossbow_poison.slot matches 7 run item replace entity @s hotbar.7 with minecraft:crossbow{display:{Name:'[{"text":"Poison Crossbow","italic":false}]'},ChargedProjectiles:[{id:"minecraft:tipped_arrow",Count:1b,tag:{Potion:"minecraft:poison",CustomPotionColor:8494175}}],Charged:1b,canReload:1b,weaponItem:1b,crossbow_type:"poison"}
## slot 8
execute if score @s crossbow_poison.slot matches 8 run item replace entity @s hotbar.8 with minecraft:crossbow{display:{Name:'[{"text":"Poison Crossbow","italic":false}]'},ChargedProjectiles:[{id:"minecraft:tipped_arrow",Count:1b,tag:{Potion:"minecraft:poison",CustomPotionColor:8494175}}],Charged:1b,canReload:1b,weaponItem:1b,crossbow_type:"poison"}

# clear unloaded
clear @s crossbow{ChargedProjectiles:[],canReload:1b,weaponItem:1b,crossbow_type:"poison"}

# disable timer until shot
scoreboard players set @s crossbow_poison.time -1

execute if score dev_mode internal matches 77 run tellraw @s [{"text":"Crossbow poison recharged at slot "},{"score":{"name":"@s","objective":"crossbow_poison.slot"},"color":"yellow"}]