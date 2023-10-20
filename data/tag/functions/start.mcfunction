# LASERTAG start


scoreboard players set can_start internal 0
scoreboard players set can_start_players internal 0
scoreboard players set can_start_period internal 0
## TODO: remove when finished
scoreboard players set can_start_game_mode internal 0
scoreboard players set can_start_game_rating internal 0

# player check
execute store result score can_start_players internal if entity @a[tag=playing]
execute if score dev_mode internal matches 77 run scoreboard players add can_start_players internal 1
execute unless score can_start_players internal matches 2.. run tellraw @p ["",{"text":"[","color":"dark_gray"},{"text":"→","color":"red"},{"text":"] ","color":"dark_gray"},{"text":"Cannot start, at least 2 players must be ready.","color":"red"}]
# period check
execute if score period internal matches -1 run scoreboard players set can_start_period internal 1
execute unless score can_start_period internal matches 1.. run tellraw @p ["",{"text":"[","color":"dark_gray"},{"text":"→","color":"red"},{"text":"] ","color":"dark_gray"},{"text":"Cannot start, a game is already in progress.","color":"red"}]
# mode check
scoreboard players set can_start_game_mode internal 1
execute if score game_mode global matches 1..4 unless score dev_mode internal matches 77 run scoreboard players set can_start_game_mode internal 0
execute if score game_mode global matches 1..4 unless score dev_mode internal matches 77 run tellraw @p ["",{"text":"[","color":"dark_gray"},{"text":"→","color":"red"},{"text":"] ","color":"dark_gray"},{"text":"Cannot start, this game mode is not complete. If you're sure, enable dev mode.","color":"red"}]
# rating check
scoreboard players set can_start_game_rating internal 1
execute if score game_rating global matches 1 unless score dev_mode internal matches 77 run scoreboard players set can_start_game_rating internal 0
execute if score game_rating global matches 1 unless score dev_mode internal matches 77 run tellraw @p ["",{"text":"[","color":"dark_gray"},{"text":"→","color":"red"},{"text":"] ","color":"dark_gray"},{"text":"Cannot start, this game rating is not complete. If you're sure, enable dev mode.","color":"red"}]

execute if score can_start_players internal matches 2.. if score can_start_period internal matches 1.. if score can_start_game_mode internal matches 1.. if score can_start_game_rating matches 1.. run scoreboard players set can_start internal 1

# can start?
## yes, proceed to main start
execute if score can_start internal matches 1.. run function tag:system/start/matchmaking/go
## no, ineligible
execute unless score can_start internal matches 1.. run particle minecraft:block minecraft:redstone_block ~ ~ ~ 0 0 0 0.1 7
execute unless score can_start internal matches 1.. run playsound minecraft:block.note_block.bass player @a
execute unless score can_start internal matches 1.. run scoreboard players set matchmaking_controller internal 0