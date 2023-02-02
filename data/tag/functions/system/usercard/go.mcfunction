# LASERTAG user card
## /trigger profile


# sfx
playsound minecraft:ui.toast.in player @s

# tellraw
## header
tellraw @s [{"selector":"@s"}]

## overall
tellraw @s {"text":"\nOverall","underlined":true}
tellraw @s ["",{"text":"Score: "},{"score":{"name":"@s","objective":"leaderboard.score"},"color":"yellow"}]

## games
tellraw @s {"text":"\nGames","underlined":true}
tellraw @s ["",{"text":"Games won: "},{"score":{"name":"@s","objective":"leaderboard.wins"},"color":"yellow"}," \u0020 ",{"text":"Games lost: "},{"score":{"name":"@s","objective":"leaderboard.losses"},"color":"yellow"}]

## kills
tellraw @s {"text":"\nKills","underlined":true}
tellraw @s ["",{"text":"Players killed: "},{"score":{"name":"@s","objective":"leaderboard.kills"},"color":"yellow"}," \u0020 ",{"text":"Highest killstreak: "},{"score":{"name":"@s","objective":"leaderboard.killstreak_highest"},"color":"yellow"}]

## deaths
tellraw @s {"text":"\nDeaths","underlined":true}
tellraw @s ["",{"text":"Player deaths: "},{"score":{"name":"@s","objective":"leaderboard.deaths_player"},"color":"yellow"}," \u0020 ",{"text":"Suicidal deaths: "},{"score":{"name":"@s","objective":"leaderboard.death_suicide"},"color":"yellow"}]

## footer
tellraw @s "\n"


scoreboard players reset @a profile