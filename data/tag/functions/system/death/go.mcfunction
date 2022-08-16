# LASERTAG death


# decrease score
scoreboard players operation @s player.score += score.death global

# announce
tellraw @s ["",{"text":"[","color":"dark_gray"},{"score":{"name":"score.death","objective":"global"},"color":"red","bold":true},{"text":"] ","color":"dark_gray"},{"text":"You died..","color":"red"}]
# sfx
function tag:sfx/death


# reset hunger
function tag:system/health/reset
# reset ammo
## NORMAL
function tag:system/crossbow/normal/reload
## MACHINE
function tag:system/crossbow/machine/reload
## ROCKET
function tag:system/crossbow/rocket/reload