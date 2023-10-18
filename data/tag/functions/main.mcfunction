# LASERTAG main loop


# request defaults manually
execute if score defaults internal matches 2 run function tag:defaults


# display version number
function tag:system/version/main

# game clock
execute if score period internal matches 1 run function tag:time


# item blacklist
clear @a #tag:item_blacklist
kill @e[type=item,nbt={Item:{id:"minecraft:carrot_on_a_stick"}}]
kill @e[type=item,nbt={Item:{id:"minecraft:warped_fungus_on_a_stick"}}]

# kill weapon items
#function tag:system/item/weapon/main

# player location
## y
execute as @a store result score @s player.y run data get entity @s Pos[1]

# win
## win score
execute if score period internal matches 1 as @a if score win_goal global matches 0 if score @s player.score >= win_score global run tag @s add win
execute if score period internal matches 1 if entity @a[tag=win] run function tag:system/win/go

# lobby controls
function tag:system/lobby/main

# ensure game state is set
execute if score period internal matches 1 if score matchmaking_controller internal matches 1.. run scoreboard players set matchmaking_controller internal 0
execute if score period internal matches 1 if score matchmaking internal matches 1.. run scoreboard players set matchmaking internal 0

# remove arrow piercing into player
execute as @e[type=arrow,tag=!arrow.patched] run data merge entity @s {PierceLevel:1b}
tag @e[type=arrow,tag=!arrow.patched] add arrow.patched

# kill arrows
execute as @e[type=arrow,nbt={inGround:1b}] at @s run particle block gravel ~ ~ ~ 0 0 0 0 10
kill @e[type=arrow,nbt={inGround:1b}]

# systems
## inventory
execute as @a[gamemode=!creative,gamemode=!spectator,scores={player.time_since_death=5..}] at @s run function tag:system/inventory/main
## crossbow
execute as @a at @s run function tag:system/crossbow/main
## health
execute as @a at @s run function tag:system/health/main
## profile
scoreboard players enable @a profile
execute as @a[tag=!playing] at @s if score @s profile matches 1.. run function tag:system/usercard/go
execute as @a[tag=playing] at @s if score @s profile matches 1.. run function tag:system/usercard/deny

# kill
execute as @a at @s if score @s player.kill matches 1.. run function tag:system/kill/go
scoreboard players reset @a player.kill

# death
execute if score period internal matches 1 as @a at @s if score @s player.death matches 1.. run function tag:system/death/go
execute as @a[tag=!handled] at @s if score @s player.y matches ..64 run function tag:system/death/below_min_y
scoreboard players reset @a player.death
scoreboard players reset @a player.direct_death

# return to lobby
## /trigger return_lobby
execute if score map_dev_mode internal matches 1.. run scoreboard objectives add return_lobby trigger "Return to lobby (map dev)"
execute if score map_dev_mode internal matches 1.. run scoreboard players enable @a return_lobby
execute unless score map_dev_mode internal matches 1.. run scoreboard objectives remove return_lobby
execute as @a at @s if score @s return_lobby matches 1.. run function tag:system/map/return_lobby

# display player info
execute unless score period internal matches 0..3 run scoreboard objectives setdisplay belowName leaderboard.coins
execute if score period internal matches 0..3 run scoreboard objectives setdisplay belowName health.hp

# teams
execute as @a run function tag:system/team/main


# range check
## gameplay
execute as @a unless score @s temp_store.coins matches 0.. run scoreboard players set @s temp_store.coins 0
execute as @a unless score @s player.score matches 0.. run scoreboard players set @s player.score 0
execute as @a unless score @s player.direct_death matches 0.. run scoreboard players set @s player.direct_death 0
## leaderboard
execute as @a unless score @s leaderboard.coins matches 0.. run scoreboard players set @s leaderboard.coins 0
execute as @a unless score @s leaderboard.score matches 0.. run scoreboard players set @s leaderboard.score 0
execute as @a unless score @s leaderboard.wins matches 0.. run scoreboard players set @s leaderboard.wins 0
execute as @a unless score @s leaderboard.games_played matches 0.. run scoreboard players set @s leaderboard.games_played 0
execute as @a unless score @s leaderboard.deaths matches 0.. run scoreboard players set @s leaderboard.deaths 0
execute as @a unless score @s leaderboard.deaths_player matches 0.. run scoreboard players set @s leaderboard.deaths_player 0
execute as @a unless score @s leaderboard.deaths_suicide matches 0.. run scoreboard players set @s leaderboard.deaths_suicide 0
execute as @a unless score @s leaderboard.kills matches 0.. run scoreboard players set @s leaderboard.kills 0
execute as @a unless score @s leaderboard.killstreak_highest matches 0.. run scoreboard players set @s leaderboard.killstreak_highest 0

# gameplay
## period -1
execute if score period internal matches -1 run setworldspawn 0 150 0
execute if score period internal matches -1 run spawnpoint @a 0 150 0
execute if score period internal matches -1 run effect give @a resistance infinite 255 true
execute if score period internal matches -1 run effect give @a regeneration infinite 255 true
execute if score period internal matches -1 run effect give @a fire_resistance infinite 255 true
execute if score period internal matches -1 run effect give @a water_breathing infinite 255 true
execute if score period internal matches -1 run scoreboard objectives setdisplay sidebar
## period 0
execute if score period internal matches 0..3 run scoreboard objectives setdisplay sidebar player.score
effect give @a dolphins_grace infinite 255 true


# send logged off players back to lobby
execute if score period internal matches -1 as @a[scores={player.ingame=1..}] at @s run function tag:system/win/reset_player

# track player ready status
tag @a[scores={player.ready=1..},tag=!playing] add playing
execute as @a[tag=playing] unless score @s player.ready matches 1.. run tag @s remove playing

# toggle ready status
execute as @a unless score @s player.ingame matches 1.. unless score @s player.ready matches 1.. run item replace entity @s hotbar.8 with carrot_on_a_stick{CustomModelData:11,readyItem:1b,display:{Name:'[{"text":"Change ready status","italic":false}]'}}
execute as @a unless score @s player.ingame matches 1.. if score @s player.ready matches 1.. run item replace entity @s hotbar.8 with carrot_on_a_stick{CustomModelData:10,unreadyItem:1b,display:{Name:'[{"text":"Change ready status","italic":false}]'}}

execute as @a unless score @s player.ingame matches 1.. store result score @s temp_store.ready_item run clear @s carrot_on_a_stick{readyItem:1b} 0
execute as @a unless score @s player.ingame matches 1.. store result score @s temp_store.unready_item run clear @s carrot_on_a_stick{unreadyItem:1b} 0

execute as @a unless score @s player.ingame matches 1.. if score @s temp_store.ready_item matches 2.. run clear @s carrot_on_a_stick{readyItem:1b}
execute as @a unless score @s player.ingame matches 1.. if score @s temp_store.unready_item matches 2.. run clear @s carrot_on_a_stick{unreadyItem:1b}


# carrot on a stick trigger
execute as @a at @s if score @s temp_store.use_trigger_item matches 1.. run function tag:system/inventory/trigger/go
scoreboard players reset @a temp_store.use_trigger_item

# patch items
execute as @e[type=item,tag=!item.patched] at @s run function tag:system/item/patch

# spawn point
execute if score map_dev_mode internal matches 1.. as @a at @s positioned as @e[tag=spawn_point,distance=..150] run particle minecraft:angry_villager ~ ~ ~ 0 2 0 1 1