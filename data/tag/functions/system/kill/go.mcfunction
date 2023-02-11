# LASERTAG kill


# increment score
scoreboard players operation @s player.score += score.kill global
## TODO: in gameplay use <internal> score.kill
## and multiply based on gametime
## eg. 0-12m 3x, 12-20m 2x, 21m+ 1x

# increment killstreak
scoreboard players operation @s player.killstreak += 1 internal
execute if score @s player.killstreak > 2 internal run playsound minecraft:entity.player.attack.crit player @s ~ ~ ~ 15 0.6
# announce
#function tag:system/kill/streak

# announce
tellraw @a[scores={player.direct_death=..0}] ["",{"text":"[","color":"dark_gray"},{"text":"🗡","color":"#FB7C3F"},{"text":"] ","color":"dark_gray"},{"selector":"@s"},{"text":" › ","color":"gray"},{"selector":"@a[scores={player.direct_death=1..},limit=1]"},{"text":" (x","color":"#FB7C3F"},{"score":{"name":"@s","objective":"player.killstreak"},"color":"#FB7C3F"},{"text":" streak)","color":"#FB7C3F"}]
tellraw @a[scores={player.direct_death=1..},limit=1] ""
tellraw @a[scores={player.direct_death=1..},limit=1] ["",{"text":"[","color":"red"},{"text":"🗡","color":"#FB7C3F"},{"text":"] ","color":"red"},{"selector":"@s"},{"text":" › ","color":"gray"},{"selector":"@a[scores={player.direct_death=1..},limit=1]"},{"text":" (x","color":"#FB7C3F"},{"score":{"name":"@s","objective":"player.killstreak"},"color":"#FB7C3F"},{"text":" streak)","color":"#FB7C3F"}]
title @s title ""
## detect who killed who
title @s subtitle [{"text":"🗡 ","color":"#FB7C3F"},{"selector":"@a[scores={player.direct_death=1..},limit=1]"}]
# sfx
function tag:sfx/kill

# restore player health
effect give @s regeneration 1 255 true

# increment coins
scoreboard players operation @s temp_store.coins += coins.kill global
execute if score dev_mode internal matches 77 run function tag:system/coins/query
## killstreak
execute if score @s player.killstreak > 1 internal run function tag:system/kill/streak


# save to leaderboards
scoreboard players add @s leaderboard.kills 1
execute if score @s player.killstreak > @s leaderboard.killstreak_highest run scoreboard players operation @s leaderboard.killstreak_highest = @s player.killstreak