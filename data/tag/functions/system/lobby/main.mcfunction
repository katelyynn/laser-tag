# LASERTAG lobby


# lobby controls
execute as @e[tag=lobby.controller] store result score @s lobby_controls run data get entity @s ItemRotation
## game start
execute as @e[tag=lobby.game_start] at @s run function tag:system/lobby/controller/start
## game type
execute as @e[tag=lobby.game_type] at @s run function tag:system/lobby/controller/game_type
## game mode
execute as @e[tag=lobby.game_mode] at @s run function tag:system/lobby/controller/game_mode
## game map
execute as @e[tag=lobby.game_map] at @s run function tag:system/lobby/controller/map
## win score
execute as @e[tag=lobby.win_score] at @s run function tag:system/lobby/controller/win_score
## respawn time
execute as @e[tag=lobby.respawn_time] at @s run function tag:system/lobby/controller/respawn_time
## reset defaults
execute as @e[tag=lobby.reset] at @s run function tag:system/lobby/controller/reset


# game start
## 0: not matchmaking
## 1:     matchmaking
## range check
execute if score matchmaking_controller internal matches 2.. run scoreboard players set matchmaking_controller internal 0
## spawn display
execute if score matchmaking_controller internal matches 0 run data merge block 0 152 6 {Color:"green",Text3:'{"text":"GAME"}',Text2:'{"text":"START"}',GlowingText:1b}
execute if score matchmaking_controller internal matches 1 run data merge block 0 152 6 {Color:"red",Text3:'{"text":"GAME"}',Text2:'{"text":"CANCEL"}',GlowingText:1b}
## execute
execute if score period internal matches -1 unless score matchmaking internal matches 1.. if score matchmaking_controller internal matches 1 run function tag:system/start/matchmaking/go
execute if score period internal matches -1 if score matchmaking internal matches 1.. if score matchmaking_controller internal matches 0 run function tag:system/start/matchmaking/cancel
execute unless score period internal matches -1 if score @e[tag=lobby.game_start,limit=1] lobby.controls matches 1.. run function tag:system/start/matchmaking/error

# game type
## 0: ffa
## 1: teams
## range check
execute if score game_type global matches 2.. run scoreboard players set game_type global 0
## spawn display
execute if score game_type global matches 0 run data merge block -9 152 5 {Color:"black",Text3:'{"text":"FFA"}',Text2:'{"text":"GAME TYPE:"}',GlowingText:1b}
execute if score game_type global matches 1 run data merge block -9 152 5 {Color:"black",Text3:'{"text":"TEAMS"}',Text2:'{"text":"GAME TYPE:"}',GlowingText:1b}

# game mode
## 0: classic
## 1: oitc
## 2: critical
## 3: cth
## range check
execute if score game_mode global matches 4.. run scoreboard players set game_mode global 0
## spawn display
execute if score game_mode global matches 0 run data merge block -11 152 5 {Color:"black",Text3:'{"text":"CLASSIC"}',Text2:'{"text":"GAME MODE:"}',GlowingText:1b}
execute if score game_mode global matches 1 run data merge block -11 152 5 {Color:"black",Text3:'{"text":"OITC"}',Text2:'{"text":"GAME MODE:"}',GlowingText:1b}
execute if score game_mode global matches 2 run data merge block -11 152 5 {Color:"black",Text3:'{"text":"CRITICAL"}',Text2:'{"text":"GAME MODE:"}',GlowingText:1b}
execute if score game_mode global matches 3 run data merge block -11 152 5 {Color:"black",Text3:'{"text":"CAPTURE"}',Text2:'{"text":"GAME MODE:"}',GlowingText:1b}

# game map
## -1: test
##  0: test 2
##  1: upcoming
## range check
execute if score game_map global matches 2.. run scoreboard players set game_map global -1
## spawn display
execute if score game_map global matches -1 run data merge block -10 152 -5 {Color:"black",Text3:'{"text":"TEST","color":"light_purple"}',Text2:'{"text":"MAP:"}',GlowingText:1b}
execute if score game_map global matches 0 run data merge block -10 152 -5 {Color:"black",Text3:'{"text":"TEST 2","color":"aqua"}',Text2:'{"text":"MAP:"}',GlowingText:1b}
execute if score game_map global matches 1 run data merge block -10 152 -5 {Color:"black",Text3:'{"text":"NEW WIP!","color":"green"}',Text2:'{"text":"MAP:"}',GlowingText:1b}

# win score
## range check
execute if score win_score global matches 41.. run scoreboard players set win_score global 6
## spawn display
execute unless score win_score global matches 41.. run data merge block -13 152 3 {Color:"black",Text3:'{"score":{"name":"win_score","objective":"global"}}',Text2:'{"text":"WIN SCORE:"}',GlowingText:1b}

# respawn time
## range check
execute if score respawn_time global matches 11.. run scoreboard players set respawn_time global 1
## spawn display
execute unless score respawn_time global matches 11.. run data merge block -13 152 1 {Color:"black",Text3:'{"score":{"name":"respawn_time","objective":"global"}}',Text2:'{"text":"RESPAWN TIME:"}',GlowingText:1b}