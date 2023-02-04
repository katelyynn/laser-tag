# LASERTAG main loop


# display version number
function tag:system/version/main


# item blacklist
clear @a #tag:item_blacklist

# kill
execute as @a at @s if score @s player.kill matches 1.. run function tag:system/kill/go
scoreboard players reset @a player.kill

# death
execute as @a at @s if score @s player.death matches 1.. run function tag:system/death/go
scoreboard players reset @a player.death
scoreboard players reset @a player.direct_death

# win
## win score
execute if score period internal matches 1 as @a if score win_goal global matches 0 if score @s player.score >= win_score global run tag @s add win
execute if score period internal matches 1 as @a at @s if score win_goal global matches 0 if score @s player.score >= win_score global run function tag:system/win/go

# mode
## 0: solo
## 1: teams
## spawn display
execute if score mode global matches 0 run data merge block 3 151 15 {Color:"black",Text3:'{"text":"SOLOS"}',Text2:'{"text":"MODE:"}',GlowingText:1b}
execute if score mode global matches 1 run data merge block 3 151 15 {Color:"black",Text3:'{"text":"TEAMS"}',Text2:'{"text":"MODE:"}',GlowingText:1b}
## range check
execute if score mode global matches ..-1 run scoreboard players set mode global 0
execute if score mode global matches 2.. run scoreboard players set mode global 1

# map
## -1: test
##  0: default
## spawn display
execute if score map global matches -1 run data merge block -3 151 15 {Color:"black",Text3:'{"text":"TEST","color":"light_purple"}',Text2:'{"text":"MAP:"}',GlowingText:1b}
execute if score map global matches 0 run data merge block -3 151 15 {Color:"black",Text3:'{"text":"DEFAULT (WIP)"}',Text2:'{"text":"MAP:"}',GlowingText:1b}
## range check
execute if score map global matches ..-2 run scoreboard players set map global -1
execute if score map global matches 1.. run scoreboard players set map global 0

# button reset
execute as @e[tag=button_reset] at @s if block ~ ~ ~ oak_button[powered=true] run setblock ~ ~ ~ oak_button[powered=false]
execute as @e[tag=button_reset] at @s if block ~ ~ ~ spruce_button[powered=true] run setblock ~ ~ ~ spruce_button[powered=false]
execute as @e[tag=button_reset] at @s if block ~ ~ ~ birch_button[powered=true] run setblock ~ ~ ~ birch_button[powered=false]

# remove arrow piercing into player
execute as @e[type=arrow,tag=!arrow.patched] run data merge entity @s {PierceLevel:1b}
execute as @e[type=arrow,tag=!arrow.patched] run tag @s add arrow.patched

# kill arrows
execute as @e[type=arrow,nbt={inGround:1b}] at @s run particle block gravel ~ ~ ~ 0 0 0 0 10
kill @e[type=arrow,nbt={inGround:1b}]

# systems
## crossbow
execute as @a at @s run function tag:system/crossbow/main
## health
execute as @a at @s run function tag:system/health/main
## profile
scoreboard players enable @a profile
execute as @a at @s if score @s profile matches 1.. run function tag:system/usercard/go

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
execute if score period internal matches -1 run effect give @a resistance 9999 255 true
execute if score period internal matches -1 run effect give @a regeneration 9999 255 true
execute if score period internal matches -1 run effect give @a fire_resistance 9999 255 true
execute if score period internal matches -1 run effect give @a water_breathing 9999 255 true
execute if score period internal matches -1 run scoreboard objectives setdisplay sidebar
## period 0
execute if score period internal matches 0..3 run scoreboard objectives setdisplay sidebar player.score


# patch items
execute as @e[type=item,tag=!item.patched] at @s run function tag:system/item/patch