# LASERTAG win
## return to lobby


clear @a[tag=playing]
effect clear @a glowing

tp @a 0 150 0

# announce
tellraw @a ["",{"text":"\n[","color":"dark_gray"},{"text":"→","color":"gray"},{"text":"] ","color":"dark_gray"},{"text":"Game over! \u0020 ","color":"gray"},{"text":"[Open profile]","color":"green","clickEvent":{"action":"run_command","value":"/trigger profile"}},"\n"]
# sfx
execute as @a at @s run playsound entity.arrow.hit_player player @s ~ ~ ~ 100 0.5


# poll final coins
function tag:system/coins/poll

# save to leaderboards
execute as @a[tag=playing] run scoreboard players operation @s leaderboard.score += @s player.score

# finish up
scoreboard players reset @a[tag=playing] player.score

tag @a remove playing
tag @a remove win


scoreboard players set period internal -1