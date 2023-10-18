# announce
title @a[tag=playing] title {"text":"Starting in","color":"aqua"}
title @a[tag=playing] subtitle {"text":"5","bold":true}
# sfx
execute as @a[tag=playing] at @s run playsound minecraft:block.note_block.pling player @s

# find a new spawn point
execute as @a[tag=playing] at @s positioned as @e[tag=spawn_point,sort=random,limit=1,distance=..150] run tp @s ~ ~ ~