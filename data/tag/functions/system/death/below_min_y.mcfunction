# LASERTAG death
## below minimum location


# based on period
## in-game
tag @s add handled
execute if score period internal matches 1 run tp @s ~ -132 ~
## out of game
execute unless score period internal matches 1 run function tag:system/death/disabled