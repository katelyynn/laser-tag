# LASERTAG start
## if eligible


# mark players
tag @a remove playing
tag @a[gamemode=adventure] add playing

scoreboard players reset @a[tag=playing] player.score
clear @a[tag=playing]
## TODO: give default crossbow on spawn & death (#3)
## TODO: reload silently on start


# reset scoreboards
## accounts for offline players
## probably a better way so please tell me lmao
scoreboard objectives remove player.score
scoreboard objectives add player.score dummy "Score"


# mode
## 0: solos
## 1: teams
execute if score mode global matches 1 as @a[team=red] run function tag:create/armour/red
execute if score mode global matches 1 as @a[team=blue] run function tag:create/armour/blue

# teleport players
## -1: test
execute if score map global matches -1 run tp @a[tag=playing] -200 150 -200
##  0: default
execute if score map global matches 0 run tp @a[tag=playing] 200 150 200

# pick random spawn locations
## TODO: create stands that mark random locations
## then run loop to teleport players


# countdown
title @a times 20 100 5
## delayed to account for map & spawn locations
schedule function tag:system/start/count/5 1s
schedule function tag:system/start/count/4 2s
schedule function tag:system/start/count/3 3s
schedule function tag:system/start/count/2 4s
schedule function tag:system/start/count/1 5s
schedule function tag:system/start/done 6s


scoreboard players set period internal 0