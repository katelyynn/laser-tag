# LASERTAG kill


# increment score
scoreboard players operation @s player.score += score.kill global
## TODO: in gameplay use <internal> score.kill
## and multiply based on gametime
## eg. 0-12m 3x, 12-20m 2x, 21m+ 1x

# announce
tellraw @s ["",{"text":"[","color":"dark_gray"},{"text":"+","color":"green","bold":true},{"score":{"name":"score.kill","objective":"global"},"color":"green","bold":true},{"text":"] ","color":"dark_gray"},{"text":"You got a kill!","color":"yellow"}]
title @s title ""
## detect who killed who
title @s subtitle [{"text":"🗡 ","color":"#FB7C3F"},{"selector":"@a[scores={player.direct_death=1..},limit=1]"}]
# sfx
function tag:sfx/kill

# increment killstreak
scoreboard players operation @s player.killstreak += 1 internal
# announce
function tag:system/kill/streak