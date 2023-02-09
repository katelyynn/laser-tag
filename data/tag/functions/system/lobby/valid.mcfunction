# LASERTAG lobby
## main loop if valid


# lobby controls
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
## dev mode
execute as @e[tag=lobby.dev_mode] at @s run function tag:system/lobby/controller/dev_mode

# tags
execute as @e[type=glow_item_frame] at @s unless data entity @s {Invulnerable:1b} run particle minecraft:glow ~ ~ ~ 0 0 0 0.1 7
execute as @e[type=glow_item_frame] at @s unless data entity @s {Invulnerable:1b} run data merge entity @s {Invulnerable:1b}


# player items
execute as @a store result score @s temp_store.ready_item run clear @s #tag:ready_item{tag:{readyItem:1b}} 0
execute as @a if score @s temp_store.ready_item matches 2.. run clear @s #tag:ready_item{tag:{readyItem:1b}}


# game start
## 0: not matchmaking
## 1:     matchmaking
## range check
execute if score matchmaking_controller internal matches 2.. run scoreboard players set matchmaking_controller internal 0
## execute
execute as @e[tag=lobby.game_start] unless score matchmaking internal matches 1.. if score matchmaking_controller internal matches 1 run function tag:start
execute if score matchmaking internal matches 1.. if score matchmaking_controller internal matches 0 run function tag:system/start/matchmaking/cancel
## spawn display
execute as @e[tag=lobby.game_start] at @s if score matchmaking_controller internal matches 0 run data merge block ~ ~1 ~ {Color:"green",Text3:'{"text":"GAME"}',Text2:'{"text":"START"}',GlowingText:1b}
execute as @e[tag=lobby.game_start] at @s if score matchmaking_controller internal matches 1 run data merge block ~ ~1 ~ {Color:"red",Text3:'{"text":"GAME"}',Text2:'{"text":"CANCEL"}',GlowingText:1b}

# game type
## 0: ffa
## 1: teams
## range check
execute if score game_type global matches 2.. run scoreboard players set game_type global 0
## spawn display
execute as @e[tag=lobby.game_type] at @s if score game_type global matches 0 run data merge block ~ ~1 ~ {Color:"black",Text3:'{"text":"FFA"}',Text2:'{"text":"GAME TYPE:"}',GlowingText:1b}
execute as @e[tag=lobby.game_type] at @s if score game_type global matches 1 run data merge block ~ ~1 ~ {Color:"black",Text3:'{"text":"TEAMS"}',Text2:'{"text":"GAME TYPE:"}',GlowingText:1b}

# game mode
## 0: classic
## 1: oitc
## 2: critical
## 3: cth
## range check
execute if score game_mode global matches 4.. run scoreboard players set game_mode global 0
## spawn display
execute as @e[tag=lobby.game_mode] at @s if score game_mode global matches 0 run data merge block ~ ~1 ~ {Color:"black",Text3:'{"text":"CLASSIC"}',Text2:'{"text":"GAME MODE:"}',GlowingText:1b}
execute as @e[tag=lobby.game_mode] at @s if score game_mode global matches 1 run data merge block ~ ~1 ~ {Color:"black",Text3:'{"text":"OITC"}',Text2:'{"text":"GAME MODE:"}',GlowingText:1b}
execute as @e[tag=lobby.game_mode] at @s if score game_mode global matches 2 run data merge block ~ ~1 ~ {Color:"black",Text3:'{"text":"CRITICAL"}',Text2:'{"text":"GAME MODE:"}',GlowingText:1b}
execute as @e[tag=lobby.game_mode] at @s if score game_mode global matches 3 run data merge block ~ ~1 ~ {Color:"black",Text3:'{"text":"CAPTURE"}',Text2:'{"text":"GAME MODE:"}',GlowingText:1b}

# game map
## -1: test
##  0: test 2
##  1: upcoming
## range check
execute if score game_map global matches 2.. run scoreboard players set game_map global -1
## spawn display
execute as @e[tag=lobby.game_map] at @s if score game_map global matches -1 run data merge block ~ ~1 ~ {Color:"black",Text3:'{"text":"TEST","color":"light_purple"}',Text2:'{"text":"MAP:"}',GlowingText:1b}
execute as @e[tag=lobby.game_map] at @s if score game_map global matches 0 run data merge block ~ ~1 ~ {Color:"black",Text3:'{"text":"TEST 2","color":"aqua"}',Text2:'{"text":"MAP:"}',GlowingText:1b}
execute as @e[tag=lobby.game_map] at @s if score game_map global matches 1 run data merge block ~ ~1 ~ {Color:"black",Text3:'{"text":"NEW WIP!","color":"green"}',Text2:'{"text":"MAP:"}',GlowingText:1b}

# win score
## range check
execute if score win_score global matches 41.. run scoreboard players set win_score global 6
## spawn display
execute as @e[tag=lobby.win_score] at @s unless score win_score global matches 41.. run data merge block ~ ~1 ~ {Color:"black",Text3:'{"score":{"name":"win_score","objective":"global"}}',Text2:'{"text":"WIN SCORE:"}',GlowingText:1b}

# respawn time
## range check
execute if score respawn_time global matches 11.. run scoreboard players set respawn_time global 1
## spawn display
execute as @e[tag=lobby.respawn_time] at @s unless score respawn_time global matches 11.. run data merge block ~ ~1 ~ {Color:"black",Text3:'{"score":{"name":"respawn_time","objective":"global"}}',Text2:'{"text":"RESPAWN TIME:"}',GlowingText:1b}

# dev mode
## range check
execute if score dev_mode internal matches 78.. run scoreboard players set dev_mode internal 0
## spawn display
execute as @e[tag=lobby.dev_mode] at @s if score dev_mode internal matches ..77 run data merge block ~ ~1 ~ {Color:"magenta",Text3:'{"score":{"name":"dev_mode","objective":"internal"}}',Text2:'{"text":"DEV MODE:"}',GlowingText:1b}