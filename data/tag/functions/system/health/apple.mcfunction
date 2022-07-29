# LASERTAG health
## apple


effect give @s minecraft:instant_health 1 0 true
playsound entity.arrow.hit_player player @s
playsound block.brewing_stand.brew player @s

scoreboard players reset @s health.apple
function tag:system/health/reset