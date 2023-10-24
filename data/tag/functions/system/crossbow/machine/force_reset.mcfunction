# LASERTAG crossbow
## MACHINE
## reset timer


# replace item
item replace entity @s weapon.mainhand with minecraft:crossbow{display:{Name:'[{"translate":"item.weapon.crossbow_machine","italic":false}]'},ChargedProjectiles:[],Charged:0b,canReload:1b,weaponItem:1b,CustomModelData:2,crossbow_type:"machine"}


scoreboard players set @s crossbow_machine.time 0
# increment shots
scoreboard players operation @s crossbow_machine.shots = crossbow_machine.ammo internal