# LASERTAG coins
## poll new updates


# announce
tellraw @s ["",{"text":"[","color":"dark_gray"},{"text":"$","color":"#CCB13B","bold":true},{"text":"] ","color":"dark_gray"},{"text":"You earned ","color":"#CCB13B"},{"score":{"name":"@s","objective":"temp_store.coins"},"color":"#EEDA7A"},{"text":" Coins!","color":"#CCB13B"}]
# sfx
function tag:sfx/coins

# update coins
scoreboard players operation @s leaderboard.coins += @s temp_store.coins
scoreboard players set @s temp_store.coins 0