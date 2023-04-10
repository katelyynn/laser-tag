# LASERTAG crossbow
## NORMAL
## reset timer


# replace item
item replace entity @s weapon.mainhand with minecraft:crossbow{ChargedProjectiles:[],Charged:1b,canReload:1b,weaponItem:1b,crossbow_type:"normal",Enchantments:[]}


scoreboard players set @s crossbow_normal.time 0
# increment shots
scoreboard players operation @s crossbow_normal.shots = crossbow_normal.ammo internal