# LASERTAG death


# decrease score
scoreboard players operation @s player.score += score.death global

# announce
tellraw @s ["",{"text":"[","color":"dark_gray"},{"text":"☠","color":"dark_red"},{"text":"] ","color":"dark_gray"},{"text":"You died!","color":"red"}]
title @s title ""
title @s subtitle {"text":"You died!","color":"red"}
# sfx
function tag:sfx/death

# end killstreak
# announce
execute if score @s player.killstreak matches 2.. run tellraw @s ["",{"text":"[","color":"dark_gray"},{"text":"🗡","color":"#FB7C3F"},{"text":"] ","color":"dark_gray"},{"text":"You lost your ","color":"#FB7C3F"},{"score":{"name":"@s","objective":"player.killstreak"},"color":"#FB693F","bold":true},{"text":" killstreak!","color":"#FB7C3F"}]
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