# LASERTAG inventory
## main loop


# player requesting reload?
## selected item matches criteria
execute if entity @s[nbt={SelectedItem:{tag:{requestedReload:1b}}}] if entity @s[nbt={Inventory:[{Slot:-106b,tag:{weaponItem:1b}}]}] run function tag:system/inventory/reload/check

# put offhand item back into mainhand
item replace entity @s weapon.mainhand from entity @s weapon.offhand

## TODO: run clear {requestedReload etc.} 0 to check if item exists
## if more than 1, clear

## TODO: replace offhand with requestedReload