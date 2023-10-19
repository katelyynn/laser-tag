# LASERTAG crossbow
## GLOWING
## re-charge


advancement revoke @s only tag:crossbow/shoot_glowing

function tag:system/crossbow/glowing/locate

# sfx
playsound minecraft:item.crossbow.loading_end player @s

# depend on slot
## slot 0
execute if score @s crossbow_glowing.slot matches 0 run item replace entity @s hotbar.0 with minecraft:crossbow{display:{Name:'[{"text":"Spectral Crossbow","italic":false}]'},ChargedProjectiles:[{id:"minecraft:tipped_arrow",Count:1b,tag:{CustomPotionEffects:[{id:"minecraft:glowing",amplifier:1b,duration:80,show_particles:0b}],CustomPotionColor:15862911}}],Charged:1b,canReload:1b,weaponItem:1b,CustomModelData:3,crossbow_type:"glowing",Enchantments:[{id:"minecraft:quick_charge",lvl:1s}],HideFlags:1}
## slot 1
execute if score @s crossbow_glowing.slot matches 1 run item replace entity @s hotbar.1 with minecraft:crossbow{display:{Name:'[{"text":"Spectral Crossbow","italic":false}]'},ChargedProjectiles:[{id:"minecraft:tipped_arrow",Count:1b,tag:{CustomPotionEffects:[{id:"minecraft:glowing",amplifier:1b,duration:80,show_particles:0b}],CustomPotionColor:15862911}}],Charged:1b,canReload:1b,weaponItem:1b,CustomModelData:3,crossbow_type:"glowing",Enchantments:[{id:"minecraft:quick_charge",lvl:1s}],HideFlags:1}
## slot 2
execute if score @s crossbow_glowing.slot matches 2 run item replace entity @s hotbar.2 with minecraft:crossbow{display:{Name:'[{"text":"Spectral Crossbow","italic":false}]'},ChargedProjectiles:[{id:"minecraft:tipped_arrow",Count:1b,tag:{CustomPotionEffects:[{id:"minecraft:glowing",amplifier:1b,duration:80,show_particles:0b}],CustomPotionColor:15862911}}],Charged:1b,canReload:1b,weaponItem:1b,CustomModelData:3,crossbow_type:"glowing",Enchantments:[{id:"minecraft:quick_charge",lvl:1s}],HideFlags:1}
## slot 3
execute if score @s crossbow_glowing.slot matches 3 run item replace entity @s hotbar.3 with minecraft:crossbow{display:{Name:'[{"text":"Spectral Crossbow","italic":false}]'},ChargedProjectiles:[{id:"minecraft:tipped_arrow",Count:1b,tag:{CustomPotionEffects:[{id:"minecraft:glowing",amplifier:1b,duration:80,show_particles:0b}],CustomPotionColor:15862911}}],Charged:1b,canReload:1b,weaponItem:1b,CustomModelData:3,crossbow_type:"glowing",Enchantments:[{id:"minecraft:quick_charge",lvl:1s}],HideFlags:1}
## slot 4
execute if score @s crossbow_glowing.slot matches 4 run item replace entity @s hotbar.4 with minecraft:crossbow{display:{Name:'[{"text":"Spectral Crossbow","italic":false}]'},ChargedProjectiles:[{id:"minecraft:tipped_arrow",Count:1b,tag:{CustomPotionEffects:[{id:"minecraft:glowing",amplifier:1b,duration:80,show_particles:0b}],CustomPotionColor:15862911}}],Charged:1b,canReload:1b,weaponItem:1b,CustomModelData:3,crossbow_type:"glowing",Enchantments:[{id:"minecraft:quick_charge",lvl:1s}],HideFlags:1}
## slot 5
execute if score @s crossbow_glowing.slot matches 5 run item replace entity @s hotbar.5 with minecraft:crossbow{display:{Name:'[{"text":"Spectral Crossbow","italic":false}]'},ChargedProjectiles:[{id:"minecraft:tipped_arrow",Count:1b,tag:{CustomPotionEffects:[{id:"minecraft:glowing",amplifier:1b,duration:80,show_particles:0b}],CustomPotionColor:15862911}}],Charged:1b,canReload:1b,weaponItem:1b,CustomModelData:3,crossbow_type:"glowing",Enchantments:[{id:"minecraft:quick_charge",lvl:1s}],HideFlags:1}
## slot 6
execute if score @s crossbow_glowing.slot matches 6 run item replace entity @s hotbar.6 with minecraft:crossbow{display:{Name:'[{"text":"Spectral Crossbow","italic":false}]'},ChargedProjectiles:[{id:"minecraft:tipped_arrow",Count:1b,tag:{CustomPotionEffects:[{id:"minecraft:glowing",amplifier:1b,duration:80,show_particles:0b}],CustomPotionColor:15862911}}],Charged:1b,canReload:1b,weaponItem:1b,CustomModelData:3,crossbow_type:"glowing",Enchantments:[{id:"minecraft:quick_charge",lvl:1s}],HideFlags:1}
## slot 7
execute if score @s crossbow_glowing.slot matches 7 run item replace entity @s hotbar.7 with minecraft:crossbow{display:{Name:'[{"text":"Spectral Crossbow","italic":false}]'},ChargedProjectiles:[{id:"minecraft:tipped_arrow",Count:1b,tag:{CustomPotionEffects:[{id:"minecraft:glowing",amplifier:1b,duration:80,show_particles:0b}],CustomPotionColor:15862911}}],Charged:1b,canReload:1b,weaponItem:1b,CustomModelData:3,crossbow_type:"glowing",Enchantments:[{id:"minecraft:quick_charge",lvl:1s}],HideFlags:1}
## slot 8
execute if score @s crossbow_glowing.slot matches 8 run item replace entity @s hotbar.8 with minecraft:crossbow{display:{Name:'[{"text":"Spectral Crossbow","italic":false}]'},ChargedProjectiles:[{id:"minecraft:tipped_arrow",Count:1b,tag:{CustomPotionEffects:[{id:"minecraft:glowing",amplifier:1b,duration:80,show_particles:0b}],CustomPotionColor:15862911}}],Charged:1b,canReload:1b,weaponItem:1b,CustomModelData:3,crossbow_type:"glowing",Enchantments:[{id:"minecraft:quick_charge",lvl:1s}],HideFlags:1}

# clear unloaded
clear @s crossbow{ChargedProjectiles:[],canReload:1b,weaponItem:1b,CustomModelData:3,crossbow_type:"glowing"}

# disable timer until shot
scoreboard players set @s crossbow_glowing.time -1

execute if score dev_mode internal matches 77 run tellraw @s [{"text":"Crossbow glowing recharged at slot "},{"score":{"name":"@s","objective":"crossbow_glowing.slot"},"color":"yellow"}]