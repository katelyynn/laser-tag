# LASERTAG user card
## /trigger profile


# sfx
playsound minecraft:entity.item_frame.place player @s

# tellraw
## header
tellraw @s [{"selector":"@s"}]

## overall
tellraw @s {"text":"\nOverall","color":"gray"}
tellraw @s ["",{"text":"Score: "},{"score":{"name":"@s","objective":"leaderboard.score"},"color":"yellow"}," \u0020 ",{"text":"Coins: "},{"score":{"name":"@s","objective":"leaderboard.coins"},"color":"yellow"}]

## games
tellraw @s {"text":"\nGames","color":"gray"}
tellraw @s ["",{"text":"Games played: "},{"score":{"name":"@s","objective":"leaderboard.games_played"},"color":"yellow"}," \u0020 ",{"text":"Games won: "},{"score":{"name":"@s","objective":"leaderboard.wins"},"color":"yellow"}]

## kills
tellraw @s {"text":"\nKills","color":"gray"}
tellraw @s ["",{"text":"Players killed: "},{"score":{"name":"@s","objective":"leaderboard.kills"},"color":"yellow"}," \u0020 ",{"text":"Highest killstreak: "},{"score":{"name":"@s","objective":"leaderboard.killstreak_highest"},"color":"yellow"}]

## deaths
tellraw @s {"text":"\nDeaths","color":"gray"}
tellraw @s ["",{"text":"Player deaths: "},{"score":{"name":"@s","objective":"leaderboard.deaths_player"},"color":"yellow"}," \u0020 ",{"text":"Suicidal deaths: "},{"score":{"name":"@s","objective":"leaderboard.deaths_suicide"},"color":"yellow"}]

## footer
tellraw @s ""


scoreboard players reset @a profile