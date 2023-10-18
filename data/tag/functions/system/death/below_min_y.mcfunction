# LASERTAG death
## below minimum location


# based on period
## in-game
execute if score period internal matches 1 run kill @s
execute if score period internal matches 1 run function tag:system/death/go
## out of game
execute unless score period internal matches 1 run function tag:system/death/disabled