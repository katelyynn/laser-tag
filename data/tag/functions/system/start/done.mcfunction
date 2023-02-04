# LASERTAG start
## if eligible
## when countdown has ended


effect clear @a[tag=playing] resistance
## TODO: give default crossbow on spawn & death


# announce
tellraw @a ["",{"text":"\n[","color":"dark_gray"},{"text":"→","color":"green"},{"text":"] ","color":"dark_gray"},{"text":"Let the games begin!\n","color":"yellow"}]
## default timings
schedule function fm:title/reset_times 1s
# sfx
execute as @a at @s run playsound entity.arrow.hit_player player @s


scoreboard players set period internal 1