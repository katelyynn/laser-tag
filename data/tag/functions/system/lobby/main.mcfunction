# LASERTAG lobby


# lobby controls
execute as @e[tag=lobby.controller] store result score @s lobby_controls run data get entity @s ItemRotation
## game start
execute as @e[tag=lobby.game_start] at @s run function tag:system/lobby/controller/start
## game mode
execute as @e[tag=lobby.game_mode] at @s run function tag:system/lobby/controller/mode
## game map
execute as @e[tag=lobby.game_map] at @s run function tag:system/lobby/controller/map


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