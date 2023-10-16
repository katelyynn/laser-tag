# LASERTAG ready
## unready


scoreboard players reset @s player.ready
playsound tag:menu.close player @s
particle minecraft:block minecraft:gray_stained_glass ~ ~1 ~ 0 0 0 0.3 12

scoreboard players reset @s temp_store.use_trigger_item