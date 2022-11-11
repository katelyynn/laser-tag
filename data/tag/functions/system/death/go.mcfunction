# LASERTAG death


# decrease score
scoreboard players operation @s player.score += score.death global

# announce
tellraw @s ["",{"text":"[","color":"red"},{"text":"☠","color":"dark_gray"},{"text":"] ","color":"dark_gray"},{"text":"You died!","color":"red"}]
title @s title ""
title @s subtitle {"text":"You died!","color":"red"}
# sfx
function tag:sfx/death

# end killstreak
# announce
tellraw @s ["",{"text":"[","color":"dark_gray"},{"text":"!","color":"red","bold":true},{"text":"] ","color":"dark_gray"},{"text":"You lost your ","color":"red"},{"score":{"name":"@s","objective":"player.killstreak"},"color":"dark_red","bold":true},{"text":" killstreak!","color":"red"}]
# sfx
## TODO: add sfx for losing killstreak
scoreboard players set @s player.killstreak 0


# reset hunger
function tag:system/health/reset
# reset ammo
## NORMAL
function tag:system/crossbow/normal/reload
## MACHINE
function tag:system/crossbow/machine/reload
## ROCKET
function tag:system/crossbow/rocket/reload