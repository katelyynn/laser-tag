# LASERTAG crossbow
## GLOWING
## reset timer


scoreboard players set @s crossbow_glowing.time 0
# increment shots
scoreboard players add @s crossbow_glowing.shots 1
function tag:system/crossbow/glowing/display