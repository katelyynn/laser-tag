# LASERTAG killstreak


## TODO: send announcement message based on amount of kills
## (if eg. >= 2)
## eg. "RAMPAGE" if 5 kills


# based on killstreak
## 2 kills
#execute if score @s player.killstreak matches 2 run function tag:system/kill/streak/2
## 3 kills
#execute if score @s player.killstreak matches 3 run function tag:system/kill/streak/3
## 4 kills
#execute if score @s player.killstreak matches 4 run function tag:system/kill/streak/4
## 5 kills+
#execute if score @s player.killstreak matches 5.. run function tag:system/kill/streak/5


# increment coins
## player.coins += ((player.killstreak - 1) * COINS.KILLSTREAK)
scoreboard players operation @s temp_store.killstreak = @s player.killstreak
scoreboard players remove @s temp_store.killstreak 1
scoreboard players operation @s temp_store.killstreak *= coins.killstreak global

scoreboard players operation @s temp_store.coins += @s temp_store.killstreak