# LASERTAG main loop


# death
execute as @a at @s if score @s player.death matches 1.. run function tag:system/death/go
scoreboard players reset @a player.death

# systems
## crossbow
execute as @a at @s run function tag:system/crossbow/main
## health
execute as @a at @s run function tag:system/health/main