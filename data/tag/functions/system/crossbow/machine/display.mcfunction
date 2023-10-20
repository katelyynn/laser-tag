# LASERTAG crossbow
## MACHINE
## display ammo


scoreboard players operation @s crossbow_machine.shots_remaining = crossbow_machine.ammo internal
scoreboard players operation @s crossbow_machine.shots_remaining -= @s crossbow_machine.shots

title @s[nbt={SelectedItem:{id:"minecraft:crossbow",Count:1b,tag:{crossbow_type:"machine"}}}] actionbar ["",{"text":"Score: "},{"score":{"name":"@s","objective":"player.score"},"color":"yellow","bold":true},{"text":"/","color":"gray"},{"score":{"name":"win_score","objective":"global"},"color":"#FFB32F"},{"text":" \u0020 \u0020Kills: "},{"score":{"objective":"player.kills","name":"@s"},"color":"#BC4D4D","bold":true},{"text":" \u0020 \u0020Ammo: "},{"score":{"objective":"crossbow_machine.shots_remaining","name":"@s"},"color":"#BBFF93","bold":true},{"text":"/","color":"gray"},{"score":{"objective":"internal","name":"crossbow_machine.ammo"},"color":"#8BCE61"}]