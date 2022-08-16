# LASERTAG start
## if eligible


# map
## TODO: pick random?
scoreboard players set map global 1

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