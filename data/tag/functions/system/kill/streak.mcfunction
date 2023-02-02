# LASERTAG killstreak


## TODO: send announcement message based on amount of kills
## (if eg. >= 2)
## eg. "RAMPAGE" if 5 kills


# based on killstreak
## 2 kills
execute if score @s player.killstreak matches 2 run function tag:system/kill/streak/2
## 3 kills
execute if score @s player.killstreak matches 3 run function tag:system/kill/streak/3
## 4 kills
execute if score @s player.killstreak matches 4 run function tag:system/kill/streak/4
## 5 kills+
execute if score @s player.killstreak matches 5.. run function tag:system/kill/streak/5


# save to leaderboards
execute if score @s player.killstreak > @s leaderboard.killstreak_highest run scoreboard players operation @s leaderboard.killstreak_highest = @s player.killstreak