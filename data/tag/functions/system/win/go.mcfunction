# LASERTAG win


scoreboard players set period internal 3
scoreboard players operation @s player.wins += 1 internal

# announce
title @a title {"text":"GAME OVER!","color":"gold","bold":true}
title @a subtitle ["",{"selector":"@a[tag=win,limit=1]"},{"text":" has won!","color":"yellow"}]
tellraw @a ["",{"text":"\n[","color":"dark_gray"},{"text":"②","color":"yellow"},{"text":"] ","color":"dark_gray"},{"selector":"@a[tag=win,limit=1]"},{"text":" has won!\n","color":"yellow"}]
# sfx
execute as @a at @s run playsound ui.toast.challenge_complete player @s ~ ~ ~

# increment coins
scoreboard players operation @s temp_store.coins += coins.win global
function tag:system/coins/poll

## TODO: display top 3 killers and points leaderboard

# fireworks
effect give @a resistance 9999 255 true
execute as @a[tag=win] at @s run summon firework_rocket ~ ~1 ~ {FireworksItem:{id:"minecraft:firework_rocket",Count:1,tag:{Fireworks:{Flight:1,Explosions:[{Type:1,Flicker:0,Trail:0,Colors:[I;16271635],FadeColors:[I;16103699]}]}}}}

# effects
effect give @a[tag=win] glowing 9999 255 true


# save to leaderboards
scoreboard players operation @s leaderboard.wins += 1 internal


# transition back to lobby
schedule function tag:system/win/lobby 5s