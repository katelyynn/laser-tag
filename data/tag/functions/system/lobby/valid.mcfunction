# LASERTAG lobby
## main loop if valid


# lobby controls
## game start
execute as @e[tag=lobby.game_start] at @s run function tag:system/lobby/controller/start
## game type
execute as @e[tag=lobby.game_type] at @s run function tag:system/lobby/controller/game_type
## game rating
execute as @e[tag=lobby.game_rating] at @s run function tag:system/lobby/controller/game_rating
## game mode
execute as @e[tag=lobby.game_mode] at @s run function tag:system/lobby/controller/game_mode
## game map
execute as @e[tag=lobby.game_map] at @s run function tag:system/lobby/controller/map
execute as @e[tag=lobby.game_map.title] at @s unless score game_map_temp internal = game_map internal run function tag:system/lobby/title/map
## win score
execute as @e[tag=lobby.win_score] at @s run function tag:system/lobby/controller/win_score
## respawn time
execute as @e[tag=lobby.respawn_time] at @s run function tag:system/lobby/controller/respawn_time
## reset defaults
execute as @e[tag=lobby.reset] at @s run function tag:system/lobby/controller/reset
## dev mode
execute as @e[tag=lobby.dev_mode] at @s run function tag:system/lobby/controller/dev_mode
## map dev mode
execute as @e[tag=lobby.map_dev_mode] at @s run function tag:system/lobby/controller/map_dev_mode
## open profile
execute as @e[tag=lobby.open_profile] at @s run function tag:system/lobby/controller/open_profile

# tags
execute as @e[type=glow_item_frame] at @s unless data entity @s {Invulnerable:1b} run particle minecraft:glow ~ ~ ~ 0 0 0 0.1 7
execute as @e[type=glow_item_frame] at @s unless data entity @s {Invulnerable:1b} run data merge entity @s {Invulnerable:1b}

# map selector
execute as @a unless score page temp_store.map_selector matches 0.. run scoreboard players set page temp_store.map_selector 0
execute as @a run function tag:system/lobby/map_selector/check


# player items
execute as @a store result score @s temp_store.ready_item run clear @s #tag:ready_item{tag:{readyItem:1b}} 0
execute as @a if score @s temp_store.ready_item matches 2.. run clear @s #tag:ready_item{tag:{readyItem:1b}}


# game start
## 0: not matchmaking
## 1:     matchmaking
## range check
execute if score matchmaking_controller internal matches 2.. run scoreboard players set matchmaking_controller internal 0
## execute
execute as @e[tag=lobby.game_start] unless score map_dev_mode internal matches 1.. unless score matchmaking internal matches 1.. if score matchmaking_controller internal matches 1 run function tag:start
execute unless score map_dev_mode internal matches 1.. if score matchmaking internal matches 1.. if score matchmaking_controller internal matches 0 run function tag:system/start/matchmaking/cancel
execute as @e[tag=lobby.game_start] at @s if score map_dev_mode internal matches 1.. if score matchmaking_controller internal matches 1 run function tag:system/start/matchmaking/dev
## spawn display
execute as @e[tag=lobby.game_start] at @s unless score map_dev_mode internal matches 1.. if score matchmaking_controller internal matches 0 run data merge block ~ ~1 ~ {Color:"green",Text3:'{"text":"GAME"}',Text2:'{"text":"START"}',GlowingText:1b}
execute as @e[tag=lobby.game_start] at @s unless score map_dev_mode internal matches 1.. if score matchmaking_controller internal matches 1 run data merge block ~ ~1 ~ {Color:"red",Text3:'{"text":"GAME"}',Text2:'{"text":"CANCEL"}',GlowingText:1b}
execute as @e[tag=lobby.game_start] at @s if score map_dev_mode internal matches 1.. run data merge block ~ ~1 ~ {Color:"aqua",Text3:'{"text":"MAP"}',Text2:'{"text":"GO TO"}',GlowingText:1b}

# game type
## 0: ffa
## 1: teams
## range check
execute if score game_type global matches 2.. run scoreboard players set game_type global 0
## spawn display
execute unless score game_type global = temp_game_type internal as @e[tag=lobby.game_type] at @s if score game_type global matches 0 run data merge block ~ ~1 ~ {Color:"black",Text3:'{"text":"FFA"}',Text2:'{"text":"GAME TYPE:"}',GlowingText:1b}
execute unless score game_type global = temp_game_type internal as @e[tag=lobby.game_type] at @s if score game_type global matches 1 run data merge block ~ ~1 ~ {Color:"black",Text3:'{"text":"TEAMS"}',Text2:'{"text":"GAME TYPE:"}',GlowingText:1b}
execute unless score game_type global = temp_game_type internal run scoreboard players operation temp_game_type internal = game_type global

# game rating
## 0: comp
## 1: casual
## range check
execute if score game_rating global matches 2.. run scoreboard players set game_rating global 0
## spawn display
execute unless score game_rating global = temp_game_rating internal as @e[tag=lobby.game_rating] at @s if score game_rating global matches 0 run data merge block ~ ~1 ~ {Color:"black",Text3:'{"text":"COMP"}',Text2:'{"text":"GAME RATING:"}',GlowingText:1b}
execute unless score game_rating global = temp_game_rating internal as @e[tag=lobby.game_rating] at @s if score game_rating global matches 1 run data merge block ~ ~1 ~ {Color:"black",Text3:'{"text":"CASUAL"}',Text2:'{"text":"GAME RATING:"}',GlowingText:1b}
execute unless score game_rating global = temp_game_rating internal run scoreboard players operation temp_game_rating internal = game_rating global

# game mode
## 0: classic
## 1: oitc
## 2: critical
## 3: cth
## 4: infection
## 5: murder mystery
## range check
execute if score game_mode global matches 6.. run scoreboard players set game_mode global 0
## spawn display
execute unless score game_mode global = temp_game_mode internal as @e[tag=lobby.game_mode] at @s if score game_mode global matches 0 run data merge block ~ ~1 ~ {Color:"black",Text3:'{"text":"CLASSIC"}',Text2:'{"text":"GAME MODE:"}',GlowingText:1b}
execute unless score game_mode global = temp_game_mode internal as @e[tag=lobby.game_mode] at @s if score game_mode global matches 1 run data merge block ~ ~1 ~ {Color:"black",Text3:'{"text":"OITC"}',Text2:'{"text":"GAME MODE:"}',GlowingText:1b}
execute unless score game_mode global = temp_game_mode internal as @e[tag=lobby.game_mode] at @s if score game_mode global matches 2 run data merge block ~ ~1 ~ {Color:"black",Text3:'{"text":"CRITICAL"}',Text2:'{"text":"GAME MODE:"}',GlowingText:1b}
execute unless score game_mode global = temp_game_mode internal as @e[tag=lobby.game_mode] at @s if score game_mode global matches 3 run data merge block ~ ~1 ~ {Color:"black",Text3:'{"text":"CAPTURE"}',Text2:'{"text":"GAME MODE:"}',GlowingText:1b}
execute unless score game_mode global = temp_game_mode internal as @e[tag=lobby.game_mode] at @s if score game_mode global matches 4 run data merge block ~ ~1 ~ {Color:"black",Text3:'{"text":"INFECTION"}',Text2:'{"text":"GAME MODE:"}',GlowingText:1b}
execute unless score game_mode global = temp_game_mode internal as @e[tag=lobby.game_mode] at @s if score game_mode global matches 5 run data merge block ~ ~1 ~ {Color:"black",Text3:'{"text":"MUR/MYSTERY"}',Text2:'{"text":"GAME MODE:"}',GlowingText:1b}
execute unless score game_mode global = temp_game_mode internal run scoreboard players operation temp_game_mode internal = game_mode global

# game map
## -1: test
##  0: test 2
##  1: upcoming
## range check
#execute if score game_map global matches 2.. run scoreboard players set game_map global -1
## spawn display
#execute unless score game_map global = temp_game_map internal as @e[tag=lobby.game_map] at @s if score game_map global matches -1 run data merge block ~ ~1 ~ {Color:"black",Text3:'{"text":"TEST","color":"light_purple"}',Text2:'{"text":"MAP:"}',GlowingText:1b}
#execute unless score game_map global = temp_game_map internal as @e[tag=lobby.game_map] at @s if score game_map global matches 0 run data merge block ~ ~1 ~ {Color:"black",Text3:'{"text":"TEST 2","color":"aqua"}',Text2:'{"text":"MAP:"}',GlowingText:1b}
#execute unless score game_map global = temp_game_map internal as @e[tag=lobby.game_map] at @s if score game_map global matches 1 run data merge block ~ ~1 ~ {Color:"black",Text3:'{"text":"NEW WIP!","color":"green"}',Text2:'{"text":"MAP:"}',GlowingText:1b}
#execute unless score game_map global = temp_game_map internal run scoreboard players operation temp_game_map internal = game_map global

# win score
## range check
execute if score win_score global matches 41.. run scoreboard players set win_score global 6
## spawn display
execute unless score win_score global = temp_win_score internal as @e[tag=lobby.win_score] at @s unless score win_score global matches 41.. run data merge block ~ ~1 ~ {Color:"black",Text3:'{"score":{"name":"win_score","objective":"global"}}',Text2:'{"text":"WIN SCORE:"}',GlowingText:1b}
execute unless score win_score global = temp_win_score internal run scoreboard players operation temp_win_score internal = win_score global

# respawn time
## range check
execute if score respawn_time global matches 11.. run scoreboard players set respawn_time global 1
## spawn display
execute unless score respawn_time global = temp_respawn_time internal as @e[tag=lobby.respawn_time] at @s unless score respawn_time global matches 11.. run data merge block ~ ~1 ~ {Color:"black",Text3:'{"score":{"name":"respawn_time","objective":"global"}}',Text2:'{"text":"RESPAWN TIME:"}',GlowingText:1b}
execute unless score respawn_time global = temp_respawn_time internal run scoreboard players operation temp_respawn_time internal = respawn_time global

# dev mode
## range check
execute if score dev_mode internal matches 78.. run scoreboard players set dev_mode internal 0
## spawn display
execute unless score dev_mode internal = temp_dev_mode internal as @e[tag=lobby.dev_mode] at @s if score dev_mode internal matches ..77 run data merge block ~ ~1 ~ {Color:"magenta",Text3:'{"score":{"name":"dev_mode","objective":"internal"}}',Text2:'{"text":"DEV MODE:"}',GlowingText:1b}
execute unless score dev_mode internal = temp_dev_mode internal run scoreboard players operation temp_dev_mode internal = dev_mode internal

# map dev mode
## range check
execute if score map_dev_mode internal matches 2.. run scoreboard players set map_dev_mode internal 0
## spawn display
execute unless score map_dev_mode internal = temp_map_dev_mode internal as @e[tag=lobby.map_dev_mode] at @s if score map_dev_mode internal matches ..1 run data merge block ~ ~1 ~ {Color:"magenta",Text3:'{"score":{"name":"map_dev_mode","objective":"internal"}}',Text2:'{"text":"MAP DEV MODE:"}',GlowingText:1b}
execute unless score map_dev_mode internal = temp_map_dev_mode internal run scoreboard players operation temp_map_dev_mode internal = map_dev_mode internal

# open profile
## execute
execute at @e[tag=lobby.open_profile] as @p if score open_profile internal matches 1.. run function tag:system/usercard/go
## range check
execute if score open_profile internal matches 1.. run scoreboard players set open_profile internal 0
## spawn display
execute unless score open_profile internal = temp_open_profile internal as @e[tag=lobby.open_profile] at @s if score map_dev_mode internal matches ..1 run data merge block ~ ~1 ~ {Color:"black",Text3:'{"text":"PROFILE"}',Text2:'{"text":"OPEN YOUR"}',GlowingText:1b}
execute unless score open_profile internal = temp_open_profile internal run scoreboard players operation temp_open_profile internal = open_profile internal