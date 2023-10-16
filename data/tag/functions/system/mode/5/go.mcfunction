# LASERTAG start
## based on mode
## 5: murder mystery


tag @a[tag=playing] remove mode.mystery.alive
tag @a[tag=playing] remove mode.mystery.detective
tag @a[tag=playing] remove mode.mystery.murderer

# pick detective
tag @r[tag=playing] add mode.mystery.detective

# pick murderer
tag @r[tag=playing,tag=!mode.mystery.detective] add mode.mystery.murderer

# make everyone alive
tag @a[tag=playing,tag=!mode.mystery.murderer] add mode.mystery.alive


# announce
execute as @a[tag=mode.mystery.murderer] at @s run function tag:system/mode/5/announce/murderer
execute as @a[tag=mode.mystery.detective] at @s run function tag:system/mode/5/announce/detective
execute as @a[tag=mode.mystery.alive,tag=!mode.mystery.detective] at @s run function tag:system/mode/5/announce/innocent


# reset scores
## murderer
scoreboard players set #index mode.mystery.murderer_index 0
scoreboard players set @a[tag=mode.mystery.murderer,limit=1] mode.mystery.murderer_index 0
## detective
scoreboard players set #index mode.mystery.detective_index 0
scoreboard players set @a[tag=mode.mystery.detective,limit=1] mode.mystery.detective_index 0