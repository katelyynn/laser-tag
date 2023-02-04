# LASERTAG item weapon
## kill weapon items
## should be passed by system/item/weapon/main first


scoreboard players set tracking_kill_weapon_items internal 0

kill @e[type=item,nbt={Item:{id:"minecraft:crossbow"}}]
kill @e[type=item,nbt={Item:{id:"minecraft:iron_sword"}}]