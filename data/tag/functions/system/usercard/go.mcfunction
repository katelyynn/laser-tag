# LASERTAG user card
## /trigger profile


# sfx
playsound minecraft:ui.toast.in player @s

# tellraw
## header
tellraw @s ["",{"selector":"@s"}]

## score
tellraw @s ["",{"text":"\nTotal score: "},{"score":{"name":"@s","objective":"leaderboard.score"},"color":"yellow"}]

## wins / kills / deaths
tellraw @s ["",{"text":"④ ","color":"gold"},{"score":{"name":"@s","objective":"leaderboard.wins"},"color":"yellow"},{"text":" ③ ","color":"gold"},{"score":{"name":"@s","objective":"leaderboard.kills"},"color":"yellow"},{"text":" ⑤ ","color":"gold"},{"score":{"name":"@s","objective":"leaderboard.deaths"},"color":"yellow"},{"text":"\n"}]


scoreboard players reset @a profile