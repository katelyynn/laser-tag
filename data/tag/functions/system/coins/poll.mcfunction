# LASERTAG coins
## poll new updates


# announce
tellraw @s ["",{"text":"[","color":"dark_gray"},{"text":"$","color":"gold","bold":true},{"text":"] ","color":"dark_gray"},{"text":"You earned ","color":"gold"},{"score":{"name":"@s","objective":"temp_store.coins"},"color":"yellow"},{"text":" Coins!","color":"gold"}]
# sfx
function tag:sfx/coins

# update coins
scoreboard players operation @s leaderboard.coins += @s temp_store.coins
scoreboard players reset @s temp_store.coins