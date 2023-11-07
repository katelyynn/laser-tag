# LASERTAG start
## if eligible


# reset clock
scoreboard players set time internal 0
scoreboard players set time_s internal 0

# reset matchmaking
scoreboard players set matchmaking internal 0


# mark players
scoreboard players set @a[tag=playing] player.ingame 1

scoreboard players reset @a[tag=playing] player.score
scoreboard players reset @a[tag=playing] player.killstreak
clear @a[tag=playing]


# reset scoreboards
## accounts for offline players
## there's probably a better way so please tell me lmao
scoreboard objectives remove player.score
scoreboard objectives add player.score dummy "Score"


# teleport players
execute as @a[tag=playing] run function tag:system/map/teleport
execute as @a[tag=playing] run function tag:system/map/spawn

# pick random spawn locations
## TODO: create stands that mark random locations
## then run loop to teleport players

# effects
effect give @a[tag=playing] slowness 7 255 true
effect give @a[tag=playing] jump_boost 7 129 true
effect give @a[tag=playing] weakness 7 255 true
effect give @a[tag=playing] invisibility 7 255 true


# countdown
title @a[tag=!playing] times 10 40 40
title @a[tag=playing] times 20 100 5
## delayed to account for map & spawn locations
schedule function tag:system/start/count/5 1s
schedule function tag:system/start/count/4 2s
schedule function tag:system/start/count/3 3s
schedule function tag:system/start/count/2 4s
schedule function tag:system/start/count/1 5s
schedule function tag:system/start/done 6s


# game mode
## 0: classic
## 1: oitc
## 2: critical
## 3: cth
## 4: infection
## 5: murder mystery
execute if score game_mode internal matches 0..2 run function tag:system/mode/0/go


scoreboard players set period internal 0