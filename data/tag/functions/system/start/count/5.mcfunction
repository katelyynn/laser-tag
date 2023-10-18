# announce
title @a title {"text":"Starting in","color":"aqua"}
title @a subtitle {"text":"5","bold":true}
# sfx
execute as @a at @s run playsound minecraft:block.note_block.pling player @s

# find a new spawn point
execute as @a positioned as @e[tag=spawn_point,sort=random,limit=1,distance=..110] run spawnpoint @s ~ ~ ~