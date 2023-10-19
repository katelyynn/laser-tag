# LASERTAG crossbow
## poison
## reset timer


# replace item
item replace entity @s weapon.mainhand with minecraft:crossbow{ChargedProjectiles:[],Charged:0b,canReload:1b,weaponItem:1b,CustomModelData:1,crossbow_type:"poison",Enchantments:[]}


scoreboard players set @s crossbow_poison.time 0
# increment shots
scoreboard players operation @s crossbow_poison.shots = crossbow_poison.ammo internal