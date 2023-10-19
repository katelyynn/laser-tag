# LASERTAG crossbow
## poison
## reset timer


scoreboard players set @s crossbow_poison.time 0
# increment shots
scoreboard players add @s crossbow_poison.shots 1
function tag:system/crossbow/poison/display