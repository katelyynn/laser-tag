# LASERTAG new murderer
## murderer has left, let's
## get a new one...


# pick murderer
tag @r[tag=playing,tag=!mode.mystery.detective] add mode.mystery.selected
tag @a[tag=mode.mystery.selected] add mode.mystery.murderer
tag @a[tag=mode.mystery.murderer] remove mode.mystery.alive

# up the index
## this is used to store the
## current index of the current murderer,
## incase the old one returns
scoreboard players add #index mode.mystery.murderer_index 1
scoreboard players operation @a[tag=mode.mystery.selected] mode.mystery.murderer_index = #index mode.mystery.murderer_index

# announce
execute as @a[tag=mode.mystery.selected] at @s run function tag:system/mode/5/announce/murderer

tag @a[tag=mode.mystery.selected] remove mode.mystery.selected