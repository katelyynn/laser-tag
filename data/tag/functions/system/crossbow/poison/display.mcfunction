# LASERTAG crossbow
## poison
## display ammo


scoreboard players operation @s crossbow_poison.shots_remaining = crossbow_poison.ammo internal
scoreboard players operation @s crossbow_poison.shots_remaining -= @s crossbow_poison.shots

title @s[nbt={SelectedItem:{id:"minecraft:crossbow",Count:1b,tag:{crossbow_type:"poison"}}}] actionbar ["",{"text":"Score: "},{"score":{"name":"@s","objective":"player.score"},"color":"yellow"},{"text":" \u0020 \u0020Ammo: "},{"score":{"objective":"crossbow_poison.shots_remaining","name":"@s"},"color":"green","bold":true},"/",{"score":{"objective":"internal","name":"crossbow_poison.ammo"},"color":"green","bold":true}]