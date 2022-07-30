# LASERTAG health
## apple


effect give @s minecraft:instant_health 1 0 true

playsound entity.arrow.hit_player player @s
playsound block.brewing_stand.brew player @s

particle minecraft:heart ^ ^1 ^0.7 0.2 0.2 0.2 0 3

scoreboard players reset @s health.apple
function tag:system/health/reset