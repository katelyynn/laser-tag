# LASERTAG death


# decrease score
scoreboard players operation @s player.score += score.death global

# announce
## direct death is handled via kill/go
execute unless entity @a[scores={player.direct_death=1..}] run tellraw @a ["",{"text":"[","color":"dark_gray"},{"text":"🗡","color":"#FB7C3F"},{"text":"] ","color":"dark_gray"},{"selector":"@s"},{"text":" ›","color":"gray"},{"text":"☠","color":"gray"}," ",{"selector":"@s"}]
title @s title ""
title @s subtitle {"text":"You died!","color":"red"}
# sfx
function tag:sfx/death

# end killstreak
# announce
execute if score @s player.killstreak matches 2.. run tellraw @s ["",{"text":"[","color":"dark_gray"},{"text":"🗡","color":"#FB7C3F"},{"text":"] ","color":"dark_gray"},{"text":"You lost your x","color":"#CE3F29"},{"score":{"name":"@s","objective":"player.killstreak"},"color":"#CE3F29"},{"text":" killstreak..","color":"#CE3F29"}]
# sfx
## TODO: add sfx for losing killstreak
scoreboard players set @s player.killstreak 0


# save to leaderboards
scoreboard players operation @s leaderboard.deaths += 1 internal


# reset hunger
function tag:system/health/reset
# reset ammo
## NORMAL
function tag:system/crossbow/normal/reload
## MACHINE
function tag:system/crossbow/machine/reload
## ROCKET
function tag:system/crossbow/rocket/reload