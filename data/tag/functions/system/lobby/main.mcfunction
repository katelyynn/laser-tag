# LASERTAG lobby


# lobby controls
execute as @e[tag=lobby.controller] store result score @s lobby_controls run data get entity @s ItemRotation
## game start
execute as @e[tag=lobby.game_start] at @s run function tag:system/lobby/controller/start
## game mode
execute as @e[tag=lobby.game_mode] at @s run function tag:system/lobby/controller/mode
## game map
execute as @e[tag=lobby.game_map] at @s run function tag:system/lobby/controller/map
## win score
execute as @e[tag=lobby.win_score] at @s run function tag:system/lobby/controller/win_score
## respawn time
execute as @e[tag=lobby.respawn_time] at @s run function tag:system/lobby/controller/respawn_time


# game start
## 0: not matchmaking
## 1:     matchmaking
## spawn display
execute if score matchmaking_controller internal matches 0 run data merge block 0 152 6 {Color:"green",Text3:'{"text":"GAME"}',Text2:'{"text":"START"}',GlowingText:1b}
execute if score matchmaking_controller internal matches 1 run data merge block 0 152 6 {Color:"red",Text3:'{"text":"GAME"}',Text2:'{"text":"CANCEL"}',GlowingText:1b}
## range check
execute if score matchmaking_controller internal matches 2.. run scoreboard players set matchmaking_controller internal 0
## execute
execute unless score matchmaking internal matches 1.. if score matchmaking_controller internal matches 1 run function tag:system/start/matchmaking/go
execute if score matchmaking internal matches 1.. if score matchmaking_controller internal matches 0 run function tag:system/start/matchmaking/cancel

# mode
## 0: solo
## 1: teams
## spawn display
execute if score mode global matches 0 run data merge block -10 152 5 {Color:"black",Text3:'{"text":"SOLOS"}',Text2:'{"text":"MODE:"}',GlowingText:1b}
execute if score mode global matches 1 run data merge block -10 152 5 {Color:"black",Text3:'{"text":"TEAMS"}',Text2:'{"text":"MODE:"}',GlowingText:1b}
## range check
execute if score mode global matches ..-1 run scoreboard players set mode global 1
execute if score mode global matches 2.. run scoreboard players set mode global 0

# map
## -1: test
##  0: test 2
##  1: upcoming
## spawn display
execute if score map global matches -1 run data merge block -10 152 -5 {Color:"black",Text3:'{"text":"TEST","color":"light_purple"}',Text2:'{"text":"MAP:"}',GlowingText:1b}
execute if score map global matches 0 run data merge block -10 152 -5 {Color:"black",Text3:'{"text":"TEST 2","color":"aqua"}',Text2:'{"text":"MAP:"}',GlowingText:1b}
execute if score map global matches 1 run data merge block -10 152 -5 {Color:"black",Text3:'{"text":"NEW WIP!","color":"green"}',Text2:'{"text":"MAP:"}',GlowingText:1b}
## range check
execute if score map global matches ..-2 run scoreboard players set map global 0
execute if score map global matches 2.. run scoreboard players set map global -1

# win score
## spawn display
execute unless score win_score global matches 41.. run data merge block -13 152 3 {Color:"black",Text3:'{"score":{"name":"win_score","objective":"global"}}',Text2:'{"text":"WIN SCORE:"}',GlowingText:1b}
## range check
execute if score win_score global matches 41.. run scoreboard players set win_score global 6

# respawn time
## spawn display
execute unless score respawn_time global matches 11.. run data merge block -13 152 1 {Color:"black",Text3:'{"score":{"name":"respawn_time","objective":"global"}}',Text2:'{"text":"RESPAWN TIME:"}',GlowingText:1b}
## range check
execute if score respawn_time global matches 11.. run scoreboard players set respawn_time global 1