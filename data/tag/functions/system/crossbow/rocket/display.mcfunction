# LASERTAG crossbow
## ROCKET
## display ammo


scoreboard players operation @s crossbow_rocket.shots_remaining = crossbow_rocket.ammo internal
scoreboard players operation @s crossbow_rocket.shots_remaining -= @s crossbow_rocket.shots

title @s[nbt={SelectedItem:{id:"minecraft:crossbow",Count:1b,tag:{crossbow_type:"rocket"}}}] actionbar ["",{"text":"Ammo: "},{"score":{"objective":"crossbow_rocket.shots_remaining","name":"@s"},"color":"green","bold":true},"/",{"score":{"objective":"internal","name":"crossbow_rocket.ammo"},"color":"green","bold":true}]