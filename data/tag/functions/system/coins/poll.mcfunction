# LASERTAG coins
## poll new updates


# announce
tellraw @s ["",{"text":"[","color":"dark_gray"},{"text":"$","color":"#C19B1B","bold":true},{"text":"] ","color":"dark_gray"},{"text":"You earned ","color":"#C19B1B"},{"score":{"name":"@s","objective":"temp_store.coins"},"color":"#FFF6AD"},{"text":" Coins!","color":"#C19B1B"}]
# sfx
function tag:sfx/coins

# update coins
scoreboard players operation @s leaderboard.coins += @s temp_store.coins
scoreboard players set @s temp_store.coins 0