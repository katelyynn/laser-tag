# LASERTAG win


scoreboard players set period internal 3
scoreboard players add @a[tag=win] player.wins 1

# announce
title @a[tag=playing] title {"text":"GAME OVER!","color":"gold","bold":true}
title @a[tag=playing] subtitle ["",{"selector":"@a[tag=win,limit=1]"},{"text":" has won!","color":"yellow"}]
tellraw @a[tag=playing] ""
tellraw @a[tag=playing] ["",{"text":"[","color":"dark_gray"},{"text":"②","color":"yellow"},{"text":"] ","color":"dark_gray"},{"selector":"@a[tag=win,limit=1]"},{"text":" has won!\n","color":"yellow"}]
# sfx
execute as @a[tag=playing] at @s run playsound ui.toast.challenge_complete player @s ~ ~ ~

# increment coins
scoreboard players operation @a[tag=win] temp_store.coins += coins.win global

## TODO: display top 3 killers and points leaderboard

# fireworks
effect give @a[tag=playing] resistance 9999 255 true
execute as @a[tag=win] at @s run summon firework_rocket ~ ~1 ~ {FireworksItem:{id:"minecraft:firework_rocket",Count:1,tag:{Fireworks:{Flight:1,Explosions:[{Type:1,Flicker:0,Trail:0,Colors:[I;16271635],FadeColors:[I;16103699]}]}}}}

# effects
effect give @a[tag=win] glowing 9999 255 true


# save to leaderboards
scoreboard players add @a[tag=win] leaderboard.wins 1
scoreboard players add @a[tag=playing] leaderboard.games_played 1


# reset clock
scoreboard players operation last_game_time internal = time internal
scoreboard players operation last_game_time_s internal = time_s internal
scoreboard players set time internal 0
scoreboard players set time_s internal 0


# transition back to lobby
schedule function tag:system/win/lobby 5s