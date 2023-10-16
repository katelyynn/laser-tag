# LASERTAG coins
## passive gain


scoreboard players operation @a[tag=playing] temp_store.coins += coins.passive global
execute as @a[tag=playing] if score dev_mode internal matches 77 run function tag:system/coins/query

scoreboard players set coin_time internal 0