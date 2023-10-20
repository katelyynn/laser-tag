# LASERTAG player reset
## reset player to lobby


clear @s
effect clear @s glowing

# mark players
scoreboard players set @s player.ingame 0

tp @s 0 150 0

# announce
tellraw @s ["",{"text":"[","color":"dark_gray"},{"text":"→","color":"gray"},{"text":"] ","color":"dark_gray"},{"text":"Game over! \u0020 ","color":"gray"},{"text":"[Open profile]","color":"green","clickEvent":{"action":"run_command","value":"/trigger profile"}},"\n"]
# sfx
playsound entity.arrow.hit_player player @s ~ ~ ~ 100 0.5


# poll final coins
execute as @s run function tag:system/coins/poll

# save to leaderboards
execute as @s run scoreboard players operation @s leaderboard.score += @s player.score

# finish up
scoreboard players reset @s player.kills
scoreboard players reset @s player.score
scoreboard players reset @s player.killstreak

tag @s remove win