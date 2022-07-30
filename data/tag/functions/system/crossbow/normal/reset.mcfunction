# LASERTAG crossbow
## NORMAL
## reset timer


scoreboard players set @s crossbow_normal.time 0
# increment shots
scoreboard players add @s crossbow_normal.shots 1
function tag:system/crossbow/normal/display