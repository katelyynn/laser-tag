# LASERTAG crossbow
## ROCKET
## reset timer


# replace item
item replace entity @s weapon.mainhand with minecraft:crossbow{display:{Name:'[{"text":"Rocket Crossbow","italic":false}]'},ChargedProjectiles:[],Charged:0b,canReload:1b,weaponItem:1b,crossbow_type:"rocket"}


scoreboard players set @s crossbow_rocket.time 0
# increment shots
scoreboard players operation @s crossbow_rocket.shots = crossbow_rocket.ammo internal