# LASERTAG inventory reload
## reload item


# dependent on type
## NORMAL
execute unless score @s crossbow_normal.shots matches 0 if entity @s[nbt={Inventory:[{Slot:-106b,tag:{weaponItem:1b,crossbow_type:"normal"}}]}] run function tag:system/crossbow/normal/force_reset
## MACHINE
execute unless score @s crossbow_machine.shots matches 0 if entity @s[nbt={Inventory:[{Slot:-106b,tag:{weaponItem:1b,crossbow_type:"machine"}}]}] run function tag:system/crossbow/machine/force_reset
## ROCKET
execute unless score @s crossbow_rocket.shots matches 0 if entity @s[nbt={Inventory:[{Slot:-106b,tag:{weaponItem:1b,crossbow_type:"rocket"}}]}] run function tag:system/crossbow/rocket/force_reset

# put offhand item back into mainhand
## if no item in hand
execute unless entity @s[nbt={SelectedItem:{}}] run item replace entity @s weapon.mainhand from entity @s weapon.offhand
## however, if item in hand fallback to item
execute if entity @s[nbt={SelectedItem:{}}] run function tag:system/inventory/fallback_item

# generic
execute if entity @s[nbt={Inventory:[{Slot:-106b,tag:{weaponItem:1b}}]}] run function tag:system/inventory/reload/go