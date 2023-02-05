# LASERTAG defaults
## if value of 2, requested manually


# scoring
## score earned from getting a kill
scoreboard players set score.kill global 2
## score taken from death
scoreboard players set score.death global -1

# coins
scoreboard players set coins.passive global 2
scoreboard players set coins.kill global 10
scoreboard players set coins.win global 25
## bonus killstreak coins (added onto kill)
## multiply based on (killstreak level - 1)
## starts at killstreak level 2
## eg. x3 streak: +6  |  x4 streak: +9
scoreboard players set coins.killstreak global 3

# respawn timer
## TODO: implement respawn on death
scoreboard players set respawn_time global 3

# winning
## win goal
## 0: score
## 1: time
## TODO: range check
scoreboard players set win_goal global 0
## win score
scoreboard players set win_score global 20
## win time (8m)
scoreboard players set win_time global 480

# mode
## 0: solo
## 1: teams
execute unless score defaults internal matches 2 run scoreboard players set mode global 0

scoreboard players set defaults internal 1