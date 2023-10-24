# LASERTAG crossbow
## GLOWING
## reset timer


# replace item
item replace entity @s weapon.mainhand with minecraft:crossbow{display:{Name:'[{"translate":"item.weapon.crossbow_glowing","italic":false}]'},ChargedProjectiles:[],Charged:0b,canReload:1b,weaponItem:1b,CustomModelData:3,crossbow_type:"glowing"}


scoreboard players set @s crossbow_glowing.time 0
# increment shots
scoreboard players operation @s crossbow_glowing.shots = crossbow_glowing.ammo internal