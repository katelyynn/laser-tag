# LASERTAG inventory
## main loop


# player requesting reload?
## selected item matches criteria
execute if entity @s[nbt={SelectedItem:{tag:{requestedReload:1b}}}] if entity @s[nbt={Inventory:[{Slot:-106b,tag:{weaponItem:1b}}]}] run function tag:system/inventory/reload/check

# put offhand item back into mainhand
item replace entity @s weapon.mainhand from entity @s weapon.offhand

## TODO: replace offhand with requestedReload if not there