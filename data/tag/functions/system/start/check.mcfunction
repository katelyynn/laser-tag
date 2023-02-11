# LASERTAG matchmaking
## check start


scoreboard players set can_start internal 0
scoreboard players set can_start_players internal 0

# player check
execute store result score can_start_players internal if entity @a[tag=playing]
execute if score dev_mode internal matches 77 run scoreboard players add can_start_players internal 1

execute if score can_start_players internal matches 2.. run scoreboard players set can_start internal 1

# can start?
## yes, proceed to main start
execute if score can_start internal matches 1.. run function tag:system/start/go
## no, ineligible
execute unless score can_start internal matches 1.. run function tag:system/start/matchmaking/cancel