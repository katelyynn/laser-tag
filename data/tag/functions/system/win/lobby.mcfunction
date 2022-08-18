# LASERTAG win
## return to lobby


scoreboard players reset @a[tag=playing] player.score
clear @a[tag=playing]

tag @a remove playing

# announce
tellraw @a ["",{"text":"[","color":"dark_gray"},{"text":"!","color":"green","bold":true},{"text":"] ","color":"dark_gray"},{"text":"Game over!","color":"yellow"}]
# sfx
execute as @a at @s run playsound entity.arrow.hit_player player @s ~ ~ ~ 100 0.5


scoreboard players set period internal -1