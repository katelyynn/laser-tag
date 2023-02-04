# LASERTAG item weapon
## check if possible to kill just before


scoreboard players set tracking_kill_weapon_items internal 1
scoreboard players set can_kill_weapon_items_check internal 1

execute if entity @a[scores={temp_store.drop_crossbow=1..}] run scoreboard players set can_kill_weapon_items_check internal 0
execute if entity @a[scores={temp_store.drop_sword=1..}] run scoreboard players set can_kill_weapon_items_check internal 0
execute if score can_kill_weapon_items_check internal matches 1.. run function tag:system/item/weapon/kill

scoreboard players reset @a temp_store.drop_crossbow
scoreboard players reset @a temp_store.drop_sword