# LASERTAG main loop


# death
execute as @a at @s if score @s player.death matches 1.. run function tag:system/death/go
scoreboard players reset @a player.death

# kill
execute as @a at @s if score @s player.kill matches 1.. run function tag:system/kill/go
scoreboard players reset @a player.kill

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
execute if score period internal matches -1 run effect give @a resistance 5 255 true
execute if score period internal matches -1 run scoreboard objectives setdisplay sidebar
## period 0
execute if score period internal matches 0..3 run scoreboard objectives setdisplay sidebar player.score