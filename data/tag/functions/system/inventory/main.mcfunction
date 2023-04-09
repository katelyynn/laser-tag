# LASERTAG inventory
## main loop


# player requesting reload?
## selected item matches criteria
## TODO: what happens with knife? (testing)
execute if entity @s[nbt={SelectedItem:{tag:{requestedReload:1b}}}] if entity @s[nbt={Inventory:[{Slot:-106b,tag:{weaponItem:1b}}]}] run function tag:system/inventory/reload/check

# put offhand item back into mainhand
## TODO: make case for if item is placed manually and not via hotkey
## (offhand in this case would not have previously mainhand)
## need check to make sure current mainhand does not have item
## and do something if holding an item (maybe summon item then copy item data?)
item replace entity @s weapon.mainhand from entity @s weapon.offhand

# check if duplicates (moved by player)
execute store result score @s temp_store.requested_reload_items run clear @s minecraft:carrot_on_a_stick{requestedReload:1b} 0
execute if score @s temp_store.requested_reload_items matches 2.. run clear @s minecraft:carrot_on_a_stick{requestedReload:1b}

# replace reload item
item replace entity @s weapon.offhand with minecraft:carrot_on_a_stick{CustomModelData:7,requestedReload:1b}