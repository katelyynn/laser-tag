# LASERTAG user card
## /trigger profile


# sfx
playsound minecraft:ui.toast.in player @s

# tellraw
## header
tellraw @s ["\n",{"selector":"@s"}]

## score
tellraw @s ["",{"text":"\nScore: "},{"score":{"name":"@s","objective":"leaderboard.score"},"color":"yellow"}]

## wins / kills / deaths
tellraw @s ["",{"text":"\n④ Wins: "},{"score":{"name":"@s","objective":"leaderboard.wins"},"color":"yellow"}]
tellraw @s ["",{"text":"③ Kills: "},{"score":{"name":"@s","objective":"leaderboard.kills"},"color":"yellow"}]
tellraw @s ["",{"text":"⑤ Deaths: "},{"score":{"name":"@s","objective":"leaderboard.deaths"},"color":"yellow"},{"text":"\n"}]


scoreboard players reset @a profile