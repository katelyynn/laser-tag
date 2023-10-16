# LASERTAG role announce
## based on mode
## 5: murder mystery


## announce
title @s title {"text":"MURDERER","color":"#BF052D","bold":true}
title @s subtitle {"text":"Kill all survivors to win","color":"#FF5976"}
tellraw @s ["",{"text":"\n[","color":"dark_gray"},{"text":"→","color":"#BF052D"},{"text":"] ","color":"dark_gray"},{"text":"You are the ","color":"gray"},{"text":"Murderer","color":"#BF052D"},"\n"]
## sfx
playsound minecraft:ambient.basalt_deltas.mood player @s
playsound minecraft:entity.zombie_villager.converted player @s