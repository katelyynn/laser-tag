# LASERTAG item weapon
## kill weapon items if possible


scoreboard players set can_kill_weapon_items internal 1
## 1: can kill
## 0: cannot kill

execute unless score tracking_kill_weapon_items internal matches 1.. if entity @a[scores={temp_store.drop_crossbow=1..}] run scoreboard players set can_kill_weapon_items internal 0
execute unless score tracking_kill_weapon_items internal matches 1.. if entity @a[scores={temp_store.drop_sword=1..}] run scoreboard players set can_kill_weapon_items internal 0
execute unless score tracking_kill_weapon_items internal matches 1.. if score can_kill_weapon_items internal matches 1.. run schedule function tag:system/item/weapon/check 3t

scoreboard players reset @a temp_store.drop_crossbow
scoreboard players reset @a temp_store.drop_sword