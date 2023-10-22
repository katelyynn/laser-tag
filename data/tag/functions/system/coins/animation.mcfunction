# LASERTAG coins
## poll new updates


# what direction?
scoreboard players set @s temp_store.leaderboard.coins.direction 0
execute if score @s leaderboard.coins >= @s temp_store.leaderboard.coins.display run scoreboard players set @s temp_store.leaderboard.coins.direction 2
execute if score @s leaderboard.coins <= @s temp_store.leaderboard.coins.display run scoreboard players set @s temp_store.leaderboard.coins.direction 1

scoreboard players operation @s temp_store.leaderboard.coins.difference = @s leaderboard.coins
scoreboard players operation @s temp_store.leaderboard.coins.difference -= @s temp_store.leaderboard.coins.display

execute if score @s temp_store.leaderboard.coins.difference matches 1.. run scoreboard players set @s temp_store.leaderboard.coins.difference_amount 1
execute if score @s temp_store.leaderboard.coins.difference matches 2.. run scoreboard players set @s temp_store.leaderboard.coins.difference_amount 2
execute if score @s temp_store.leaderboard.coins.difference matches 5.. run scoreboard players set @s temp_store.leaderboard.coins.difference_amount 5
execute if score @s temp_store.leaderboard.coins.difference matches 50.. run scoreboard players set @s temp_store.leaderboard.coins.difference_amount 20
execute if score @s temp_store.leaderboard.coins.difference matches 100.. run scoreboard players set @s temp_store.leaderboard.coins.difference_amount 100

execute if score @s temp_store.leaderboard.coins.difference matches ..-1 run scoreboard players set @s temp_store.leaderboard.coins.difference_amount 1
execute if score @s temp_store.leaderboard.coins.difference matches ..-2 run scoreboard players set @s temp_store.leaderboard.coins.difference_amount 2
execute if score @s temp_store.leaderboard.coins.difference matches ..-50 run scoreboard players set @s temp_store.leaderboard.coins.difference_amount 20
execute if score @s temp_store.leaderboard.coins.difference matches ..-100 run scoreboard players set @s temp_store.leaderboard.coins.difference_amount 100

# add
execute if score @s temp_store.leaderboard.coins.direction matches 2 run scoreboard players operation @s temp_store.leaderboard.coins.display += @s temp_store.leaderboard.coins.difference_amount
# remove
execute if score @s temp_store.leaderboard.coins.direction matches 1 run scoreboard players operation @s temp_store.leaderboard.coins.display -= @s temp_store.leaderboard.coins.difference_amount

# sfx
execute if score @s temp_store.leaderboard.coins.direction matches 2 run function tag:sfx/coins_up
execute if score @s temp_store.leaderboard.coins.direction matches 1 run function tag:sfx/coins_down