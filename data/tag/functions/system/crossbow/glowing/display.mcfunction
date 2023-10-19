# LASERTAG crossbow
## GLOWING
## display ammo


scoreboard players operation @s crossbow_glowing.shots_remaining = crossbow_glowing.ammo internal
scoreboard players operation @s crossbow_glowing.shots_remaining -= @s crossbow_glowing.shots

title @s[nbt={SelectedItem:{id:"minecraft:crossbow",Count:1b,tag:{crossbow_type:"glowing"}}}] actionbar ["",{"text":"Score: "},{"score":{"name":"@s","objective":"player.score"},"color":"yellow"},{"text":" \u0020 \u0020Ammo: "},{"score":{"objective":"crossbow_glowing.shots_remaining","name":"@s"},"color":"green","bold":true},"/",{"score":{"objective":"internal","name":"crossbow_glowing.ammo"},"color":"green","bold":true}]