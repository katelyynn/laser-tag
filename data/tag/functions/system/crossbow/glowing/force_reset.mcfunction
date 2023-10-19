# LASERTAG crossbow
## GLOWING
## reset timer


# replace item
item replace entity @s weapon.mainhand with minecraft:crossbow{display:{Name:'[{"text":"Spectral Crossbow","italic":false}]'},ChargedProjectiles:[],Charged:0b,canReload:1b,weaponItem:1b,CustomModelData:3,crossbow_type:"glowing",Enchantments:[{id:"minecraft:quick_charge",lvl:1s}],HideFlags:1}


scoreboard players set @s crossbow_glowing.time 0
# increment shots
scoreboard players operation @s crossbow_glowing.shots = crossbow_glowing.ammo internal