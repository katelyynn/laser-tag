# LASERTAG crouch


scoreboard players add @s temp_store.crouch_action.time 1

execute if score @s temp_store.crouch_action.time matches 3.. run tag @s remove temp_store.crouch_cooldown
execute if score @s temp_store.crouch_action.time matches 3.. run scoreboard players reset @s temp_store.crouch_action.time