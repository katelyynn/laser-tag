# LASERTAG inventory reload
## reload item


# generic
execute if entity @s[nbt={Inventory:[{Slot:-106b,tag:{weaponItem:1b}}]}] run function tag:system/inventory/reload/go

# dependent on type
## NORMAL
execute if entity @s[nbt={Inventory:[{Slot:-106b,tag:{weaponItem:1b,crossbow_type:"normal"}}]}] run function tag:system/crossbow/normal/reload
## MACHINE
execute if entity @s[nbt={Inventory:[{Slot:-106b,tag:{weaponItem:1b,crossbow_type:"machine"}}]}] run function tag:system/crossbow/machine/reload
## ROCKET
execute if entity @s[nbt={Inventory:[{Slot:-106b,tag:{weaponItem:1b,crossbow_type:"rocket"}}]}] run function tag:system/crossbow/rocket/reload