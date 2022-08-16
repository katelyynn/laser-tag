# LASERTAG start
## if eligible


# mark players
tag @a remove playing
tag @a[gamemode=adventure] add playing


# map
## TODO: pick random?
## -1: test
##  0: default
scoreboard players set map global -1

# teleport players
## -1: test
execute if score map global matches -1 run tp @a[tag=playing] -200 150 -200
##  0: default
execute if score map global matches 0 run tp @a[tag=playing] 200 150 200

# pick random spawn locations
## TODO: create stands that mark random locations
## then run loop to teleport players


# countdown
## delayed to account for map & spawn locations
schedule function tag:system/start/count/5 1s
schedule function tag:system/start/count/4 2s
schedule function tag:system/start/count/3 3s
schedule function tag:system/start/count/2 4s
schedule function tag:system/start/count/1 5s
schedule function tag:system/start/done 6s


scoreboard players set period internal 0