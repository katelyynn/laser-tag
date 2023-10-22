# LASERTAG coins
## poll new updates



# what direction?
scoreboard players set @s temp_store.leaderboard.coins.direction 0
execute if score @s leaderboard.coins >= @s temp_store.leaderboard_coins.display run scoreboard players set @s temp_store.leaderboard.coins.direction 2
execute if score @s leaderboard.coins <= @s temp_store.leaderboard_coins.display run scoreboard players set @s temp_store.leaderboard.coins.direction 1

# add / remove
execute if score @s temp_store.leaderboard.coins.direction matches 2 run scoreboard players add @s temp_store.leaderboard.coins.display 1
execute if score @s temp_store.leaderboard.coins.direction matches 1 run scoreboard players remove @s temp_store.leaderboard.coins.display 1

# sfx
execute if score @s temp_store.leaderboard.coins.direction matches 2 run function tag:sfx/coins_up
execute if score @s temp_store.leaderboard.coins.direction matches 1 run function tag:sfx/coins_down