execute unless entity @e[tag=spawn_point,sort=nearest,limit=1,distance=..2.5] run tellraw @s {"text":"No spawn available to destroy","color":"red"}
execute as @e[tag=spawn_point,sort=nearest,limit=1,distance=..2.5] at @s run kill @s