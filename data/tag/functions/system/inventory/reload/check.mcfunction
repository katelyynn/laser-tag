# LASERTAG inventory reload
## reload item


# put offhand item back into mainhand
## if item in hand fallback to item
execute if score dev_mode internal matches 77 if entity @s[nbt={SelectedItem:{}}] unless entity @s[nbt={SelectedItem:{tag:{requestedReload:1b}}}] run tellraw @s {"text":"Attempted to swap mainhand and offhand, using fallback"}
execute if entity @s[nbt={SelectedItem:{}}] unless entity @s[nbt={SelectedItem:{tag:{requestedReload:1b}}}] run function tag:system/inventory/drop_offhand
## if no item in hand
execute if score dev_mode internal matches 77 unless entity @s[nbt={SelectedItem:{}}] run tellraw @s {"text":"Swapped mainhand and offhand (1)"}
execute unless entity @s[nbt={SelectedItem:{}}] run item replace entity @s weapon.mainhand from entity @s weapon.offhand
execute if score dev_mode internal matches 77 if entity @s[nbt={SelectedItem:{tag:{requestedReload:1b}}}] run tellraw @s {"text":"Swapped mainhand and offhand (2)"}
execute if entity @s[nbt={SelectedItem:{tag:{requestedReload:1b}}}] run item replace entity @s weapon.mainhand from entity @s weapon.offhand

# dependent on type
## NORMAL
execute unless score @s crossbow_normal.shots matches 0 if entity @s[nbt={SelectedItem:{tag:{weaponItem:1b,crossbow_type:"normal"}}}] run function tag:system/crossbow/normal/force_reset
## MACHINE
execute unless score @s crossbow_machine.shots matches 0 if entity @s[nbt={SelectedItem:{tag:{weaponItem:1b,crossbow_type:"machine"}}}] run function tag:system/crossbow/machine/force_reset
## ROCKET
execute unless score @s crossbow_rocket.shots matches 0 if entity @s[nbt={SelectedItem:{tag:{weaponItem:1b,crossbow_type:"rocket"}}}] run function tag:system/crossbow/rocket/force_reset

# generic
execute if entity @s[nbt={SelectedItem:{tag:{canReload:1b,weaponItem:1b}}}] run function tag:system/inventory/reload/go