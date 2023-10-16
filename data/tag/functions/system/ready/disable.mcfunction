# LASERTAG ready
## unready


scoreboard players reset @s player.ready
playsound tag:menu.close player @s
particle minecraft:block minecraft:gray_stained_glass ~ ~1 ~ 0 0 0 0.3 12

execute if score dev_mode internal matches 77 run tellraw @s {"text":"You are no longer ready"}

scoreboard players reset @s temp_store.use_trigger_item