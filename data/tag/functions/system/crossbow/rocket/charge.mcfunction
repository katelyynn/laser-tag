# LASERTAG crossbow
## ROCKET
## re-charge


advancement revoke @s only tag:crossbow/shoot_rocket

function tag:system/crossbow/rocket/locate

# sfx
playsound minecraft:item.crossbow.loading_end player @s

# depend on slot
## slot 0
execute if score @s crossbow_rocket.slot matches 0 run item replace entity @s hotbar.0 with minecraft:crossbow{display:{Name:'[{"text":"Rocket Crossbow","italic":false}]'},ChargedProjectiles:[{id:"minecraft:firework_rocket",Count:1b}],Charged:1b,crossbow_type:"rocket",Enchantments:[{id:"minecraft:quick_charge",lvl:1s}],HideFlags:1}
## slot 1
execute if score @s crossbow_rocket.slot matches 1 run item replace entity @s hotbar.1 with minecraft:crossbow{display:{Name:'[{"text":"Rocket Crossbow","italic":false}]'},ChargedProjectiles:[{id:"minecraft:firework_rocket",Count:1b}],Charged:1b,crossbow_type:"rocket",Enchantments:[{id:"minecraft:quick_charge",lvl:1s}],HideFlags:1}
## slot 2
execute if score @s crossbow_rocket.slot matches 2 run item replace entity @s hotbar.2 with minecraft:crossbow{display:{Name:'[{"text":"Rocket Crossbow","italic":false}]'},ChargedProjectiles:[{id:"minecraft:firework_rocket",Count:1b}],Charged:1b,crossbow_type:"rocket",Enchantments:[{id:"minecraft:quick_charge",lvl:1s}],HideFlags:1}
## slot 3
execute if score @s crossbow_rocket.slot matches 3 run item replace entity @s hotbar.3 with minecraft:crossbow{display:{Name:'[{"text":"Rocket Crossbow","italic":false}]'},ChargedProjectiles:[{id:"minecraft:firework_rocket",Count:1b}],Charged:1b,crossbow_type:"rocket",Enchantments:[{id:"minecraft:quick_charge",lvl:1s}],HideFlags:1}
## slot 4
execute if score @s crossbow_rocket.slot matches 4 run item replace entity @s hotbar.4 with minecraft:crossbow{display:{Name:'[{"text":"Rocket Crossbow","italic":false}]'},ChargedProjectiles:[{id:"minecraft:firework_rocket",Count:1b}],Charged:1b,crossbow_type:"rocket",Enchantments:[{id:"minecraft:quick_charge",lvl:1s}],HideFlags:1}
## slot 5
execute if score @s crossbow_rocket.slot matches 5 run item replace entity @s hotbar.5 with minecraft:crossbow{display:{Name:'[{"text":"Rocket Crossbow","italic":false}]'},ChargedProjectiles:[{id:"minecraft:firework_rocket",Count:1b}],Charged:1b,crossbow_type:"rocket",Enchantments:[{id:"minecraft:quick_charge",lvl:1s}],HideFlags:1}
## slot 6
execute if score @s crossbow_rocket.slot matches 6 run item replace entity @s hotbar.6 with minecraft:crossbow{display:{Name:'[{"text":"Rocket Crossbow","italic":false}]'},ChargedProjectiles:[{id:"minecraft:firework_rocket",Count:1b}],Charged:1b,crossbow_type:"rocket",Enchantments:[{id:"minecraft:quick_charge",lvl:1s}],HideFlags:1}
## slot 7
execute if score @s crossbow_rocket.slot matches 7 run item replace entity @s hotbar.7 with minecraft:crossbow{display:{Name:'[{"text":"Rocket Crossbow","italic":false}]'},ChargedProjectiles:[{id:"minecraft:firework_rocket",Count:1b}],Charged:1b,crossbow_type:"rocket",Enchantments:[{id:"minecraft:quick_charge",lvl:1s}],HideFlags:1}
## slot 8
execute if score @s crossbow_rocket.slot matches 8 run item replace entity @s hotbar.8 with minecraft:crossbow{display:{Name:'[{"text":"Rocket Crossbow","italic":false}]'},ChargedProjectiles:[{id:"minecraft:firework_rocket",Count:1b}],Charged:1b,crossbow_type:"rocket",Enchantments:[{id:"minecraft:quick_charge",lvl:1s}],HideFlags:1}

# clear unloaded
clear @s crossbow{ChargedProjectiles:[],crossbow_type:"rocket"}

# disable timer until shot
scoreboard players set @s crossbow_rocket.time -1