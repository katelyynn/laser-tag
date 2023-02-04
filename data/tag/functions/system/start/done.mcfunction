# LASERTAG start
## if eligible
## when countdown has ended


effect clear @a[tag=playing] resistance
effect clear @a[tag=playing] regeneration
effect clear @a[tag=playing] fire_resistance
effect clear @a[tag=playing] water_breathing
execute as @a[tag=playing] run function tag:system/loadout/go


# announce
tellraw @a ["",{"text":"\n[","color":"dark_gray"},{"text":"→","color":"green"},{"text":"] ","color":"dark_gray"},{"text":"Let the games begin!\n","color":"yellow"}]
## default timings
schedule function fm:title/reset_times 3s
# sfx
execute as @a at @s run playsound entity.arrow.hit_player player @s


scoreboard players set period internal 1