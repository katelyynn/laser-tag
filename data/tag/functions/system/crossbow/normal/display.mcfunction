# LASERTAG crossbow
## NORMAL
## display ammo


scoreboard players operation @s crossbow_normal.shots_remaining = crossbow_normal.ammo internal
scoreboard players operation @s crossbow_normal.shots_remaining -= @s crossbow_normal.shots

title @s[nbt={SelectedItem:{id:"minecraft:crossbow",Count:1b,tag:{crossbow_type:"normal"}}}] actionbar ["",{"text":"Ammo: "},{"score":{"objective":"crossbow_normal.shots_remaining","name":"@s"},"color":"green","bold":true},"/",{"score":{"objective":"internal","name":"crossbow_normal.ammo"},"color":"green","bold":true}]