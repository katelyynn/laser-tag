# LASERTAG crossbow
## MACHINE
## reset timer


# replace item
item replace entity @s weapon.mainhand with minecraft:crossbow{display:{Name:'[{"text":"Machine Crossbow","italic":false}]'},ChargedProjectiles:[],Charged:0b,canReload:1b,weaponItem:1b,crossbow_type:"machine",Enchantments:[{id:"minecraft:quick_charge",lvl:1s}],HideFlags:1}


scoreboard players set @s crossbow_machine.time 0
# increment shots
scoreboard players operation @s crossbow_machine.shots = crossbow_machine.ammo internal