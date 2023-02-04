# LASERTAG death


tag @s add self

# clear items
## only necessary if `keepInventory` is enabled
clear @s

# decrease score
scoreboard players operation @s player.score += score.death global

# announce
## direct death is handled via kill/go
execute unless entity @a[scores={player.direct_death=1..}] run tellraw @a[tag=!self] ["",{"text":"[","color":"dark_gray"},{"text":"🗡","color":"#FB7C3F"},{"text":"] ","color":"dark_gray"},{"selector":"@s"},{"text":" › ","color":"gray"},{"selector":"@s"}]
execute unless entity @a[scores={player.direct_death=1..}] run tellraw @s ""
execute unless entity @a[scores={player.direct_death=1..}] run tellraw @s ["",{"text":"[","color":"red"},{"text":"🗡","color":"#FB7C3F"},{"text":"] ","color":"red"},{"selector":"@s"},{"text":" › ","color":"gray"},{"selector":"@s"}]
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
scoreboard players add @s leaderboard.deaths 1
execute if entity @a[scores={player.direct_death=1..}] run scoreboard players add @s leaderboard.deaths_player 1
execute unless entity @a[scores={player.direct_death=1..}] run scoreboard players add @s leaderboard.deaths_suicide 1


# reset loadout
function tag:system/loadout/go

# reset hunger
function tag:system/health/reset

tag @s remove self