# LASERTAG death
## below minimum location


# based on period
## in-game
execute if score period internal matches 1 run scoreboard players add @s player.death 1
execute if score period internal matches 1 run function tag:system/death/go
scoreboard players reset @a player.death
scoreboard players reset @a player.direct_death
## out of game
execute unless score period internal matches 1 run function tag:system/death/disabled