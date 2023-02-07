# LASERTAG start


scoreboard players set can_start internal 0
scoreboard players set can_start_players internal 0
scoreboard players set can_start_period internal 0

# player check
execute store result score can_start_players internal if entity @a[tag=playing]
execute unless score can_start_players internal matches 2.. run tellraw @p ["",{"text":"[","color":"dark_gray"},{"text":"→","color":"red"},{"text":"] ","color":"dark_gray"},{"text":"Cannot start, at least 2 players must be ready.","color":"red"}]
# period check
execute if score period internal matches -1 run scoreboard players set can_start_period internal 1
execute unless score can_start_period internal matches 1.. run tellraw @p ["",{"text":"[","color":"dark_gray"},{"text":"⓪"},{"text":"] ","color":"dark_gray"},{"text":"Cannot start, a game is already in progress.","color":"red"}]

execute if score can_start_players internal matches 2.. if score can_start_period internal matches 1.. run scoreboard players set can_start internal 1

# can start?
## yes, proceed to main start
execute if score can_start internal matches 1.. run function tag:system/start/matchmaking/go
## no, ineligible
execute unless score can_start internal matches 1.. run particle minecraft:block minecraft:redstone_block ~ ~ ~ 0 0 0 0.1 7
execute unless score can_start internal matches 1.. run playsound minecraft:block.note_block.bass player @a
execute unless score can_start internal matches 1.. run scoreboard players set matchmaking_controller internal 0