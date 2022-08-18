# LASERTAG main loop


# death
execute as @a at @s if score @s player.death matches 1.. run function tag:system/death/go
scoreboard players reset @a player.death

# kill
execute as @a at @s if score @s player.kill matches 1.. run function tag:system/kill/go
scoreboard players reset @a player.kill

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

# button reset
execute as @e[tag=button_reset] at @s if block ~ ~ ~ oak_button[powered=true] run setblock ~ ~ ~ oak_button[powered=false]
execute as @e[tag=button_reset] at @s if block ~ ~ ~ spruce_button[powered=true] run setblock ~ ~ ~ spruce_button[powered=false]
execute as @e[tag=button_reset] at @s if block ~ ~ ~ birch_button[powered=true] run setblock ~ ~ ~ birch_button[powered=false]

# kill arrows
execute as @e[type=arrow,nbt={inGround:1b}] at @s run particle block gravel ~ ~ ~ 0 0 0 0 10
kill @e[type=arrow,nbt={inGround:1b}]

# systems
## crossbow
execute as @a at @s run function tag:system/crossbow/main
## health
execute as @a at @s run function tag:system/health/main


# set score
execute as @a unless score @s player.score matches 0.. run scoreboard players set @s player.score 0

# gameplay
## period -1
execute if score period internal matches -1 run setworldspawn 0 150 0
execute if score period internal matches -1 run spawnpoint @a 0 150 0
execute if score period internal matches -1 run effect give @a resistance 9999 255 true
execute if score period internal matches -1 run scoreboard objectives setdisplay sidebar
## period 0
execute if score period internal matches 0..3 run scoreboard objectives setdisplay sidebar player.score