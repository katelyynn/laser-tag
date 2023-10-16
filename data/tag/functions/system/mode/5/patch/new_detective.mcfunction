# LASERTAG new detective
## detective has left, let's
## get a new one...


# pick murderer
tag @r[tag=playing,tag=!mode.mystery.murderer] add mode.mystery.selected
tag @a[tag=mode.mystery.selected] add mode.mystery.detective

# up the index
## this is used to store the
## current index of the current detective,
## incase the old one returns
scoreboard players add #index mode.mystery.detective_index 1
scoreboard players operation @a[tag=mode.mystery.selected] mode.mystery.detective_index = #index mode.mystery.detective_index

# announce
execute as @a[tag=mode.mystery.selected] at @s run function tag:system/mode/5/announce/detective

tag @a[tag=mode.mystery.selected] remove mode.mystery.selected