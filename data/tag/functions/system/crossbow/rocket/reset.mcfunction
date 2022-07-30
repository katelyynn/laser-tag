# LASERTAG crossbow
## ROCKET
## reset timer


scoreboard players set @s crossbow_rocket.time 0
# increment shots
scoreboard players add @s crossbow_rocket.shots 1
function tag:system/crossbow/rocket/display