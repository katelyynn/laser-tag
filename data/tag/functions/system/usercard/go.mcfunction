# LASERTAG user card
## /trigger profile


# tellraw
## header
tellraw @s ["",{"text":"\n[","color":"dark_gray"},{"text":"⑥"},{"text":"] ","color":"dark_gray"},{"selector":"@s"},{"text":"\n"}]

## score
tellraw @s ["",{"text":"\nTotal score: ","color":"gold"},{"score":{"name":"@s","objective":"leaderboard.score"},"color":"yellow"}]

## wins / kills / deaths
tellraw @s ["",{"text":"④ ","color":"gold"},{"score":{"name":"@s","objective":"leaderboard.wins"},"color":"yellow"},{"text":" ③ ","color":"gold"},{"score":{"name":"@s","objective":"leaderboard.kills"},"color":"yellow"},{"text":" ⑤ ","color":"gold"},{"score":{"name":"@s","objective":"leaderboard.deaths"},"color":"yellow"},{"text":"\n"}]