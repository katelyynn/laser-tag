# LASERTAG ready
## ready up


scoreboard players set @s player.ready 1
playsound tag:menu.open player @s
particle minecraft:block minecraft:lime_stained_glass ~ ~1 ~ 0 0 0 0.3 30

execute if score dev_mode internal matches 77 run tellraw @s {"text":"You are now ready"}

scoreboard players reset @s temp_store.use_trigger_item