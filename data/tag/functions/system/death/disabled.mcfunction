# LASERTAG death
## disabled


# teleport to map
execute if score @s player.ingame matches 1.. run function tag:system/map/teleport
execute unless score @s player.ingame matches 1.. run tp @s 0 150 0


tag @s remove handled