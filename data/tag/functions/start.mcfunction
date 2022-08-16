# LASERTAG start


scoreboard players set can_start internal 0

# player checks
## TODO: implement player checks later on
scoreboard players set can_start internal 1


# can start?
## yes, proceed to main start
execute if score can_start internal matches 1.. run function tag:system/start/go
## no, ineligible
execute unless score can_start internal matches 1.. run tellraw @s ["",{"text":"[","color":"dark_gray"},{"text":"X","color":"red","bold":true},{"text":"] ","color":"dark_gray"},{"text":"Cannot start, at least 2 players required.","color":"red"}]
execute unless score can_start internal matches 1.. run playsound minecraft:block.note_block.bass player @s