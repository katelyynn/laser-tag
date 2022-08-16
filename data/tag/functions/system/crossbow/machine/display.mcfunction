# LASERTAG crossbow
## MACHINE
## display ammo


scoreboard players operation @s crossbow_machine.shots_remaining = crossbow_machine.ammo internal
scoreboard players operation @s crossbow_machine.shots_remaining -= @s crossbow_machine.shots

title @s[nbt={SelectedItem:{id:"minecraft:crossbow",Count:1b,tag:{crossbow_type:"machine"}}}] actionbar ["",{"text":"Score: "},{"score":{"name":"@s","objective":"player.score"},"color":"yellow"},{"text":" \u0020 \u0020Ammo: "},{"score":{"objective":"crossbow_machine.shots_remaining","name":"@s"},"color":"green","bold":true},"/",{"score":{"objective":"internal","name":"crossbow_machine.ammo"},"color":"green","bold":true}]