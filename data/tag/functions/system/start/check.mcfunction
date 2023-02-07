# LASERTAG matchmaking
## check start


scoreboard players set can_start internal 0
scoreboard players set can_start_players internal 0

# player check
execute store result score can_start_players internal if entity @a[tag=playing]
execute unless score can_start_players internal matches 2.. run tellraw @p ["",{"text":"[","color":"dark_gray"},{"text":"→","color":"red"},{"text":"] ","color":"dark_gray"},{"text":"Cannot start, at least 2 players must be ready.","color":"red"}]

execute if score can_start_players internal matches 1.. run scoreboard players set can_start internal 1

# can start?
## yes, proceed to main start
execute if score can_start internal matches 1.. run function tag:system/start/go
## no, ineligible
execute unless score can_start internal matches 1.. run function tag:system/start/matchmaking/cancel