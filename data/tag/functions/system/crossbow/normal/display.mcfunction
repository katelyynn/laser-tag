# LASERTAG crossbow
## NORMAL
## display ammo


scoreboard players operation @s crossbow_normal.shots_remaining = crossbow_normal.ammo internal
scoreboard players operation @s crossbow_normal.shots_remaining -= @s crossbow_normal.shots

title @s[nbt={SelectedItem:{id:"minecraft:crossbow",Count:1b,tag:{crossbow_type:"normal"}}}] actionbar ["",{"text":"Score: "},{"score":{"name":"@s","objective":"player.score"},"color":"yellow","bold":true},{"text":"/","color":"gray"},{"score":{"name":"win_score","objective":"global"},"color":"#FFB32F"},{"text":" \u0020 \u0020Kills: "},{"score":{"objective":"player.kills","name":"@s"},"color":"#BC4D4D","bold":true},{"text":" \u0020 \u0020Ammo: "},{"score":{"objective":"crossbow_normal.shots_remaining","name":"@s"},"color":"#BBFF93","bold":true},{"text":"/","color":"gray"},{"score":{"objective":"internal","name":"crossbow_normal.ammo"},"color":"#8BCE61"}]