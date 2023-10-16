# LASERTAG role announce
## based on mode
## 5: murder mystery


## announce
title @s title {"text":"DETECTIVE","color":"#DB7918","bold":true}
title @s subtitle {"text":"Shoot the murderer to win","color":"#E8B255"}
tellraw @s ["",{"text":"[","color":"dark_gray"},{"text":"→","color":"#DB7918"},{"text":"] ","color":"dark_gray"},{"text":"You are the ","color":"gray"},{"text":"Detective","color":"#DB7918"},"\n"]
## sfx
playsound minecraft:entity.stray.ambient player @s
playsound minecraft:entity.zombie_villager.converted player @s