# LASERTAG inventory
## main loop


# player requesting reload?
## selected item matches criteria
## TODO: what happens with knife? (testing)
execute if entity @s[nbt={SelectedItem:{tag:{requestedReload:1b}}}] if entity @s[nbt={Inventory:[{Slot:-106b,tag:{weaponItem:1b}}]}] run function tag:system/inventory/reload/check

# put offhand item back into mainhand
## if no item in hand
execute unless entity @s[nbt={SelectedItem:{}}] run item replace entity @s weapon.mainhand from entity @s weapon.offhand
## however, if item in hand fallback to item
execute if entity @s[nbt={SelectedItem:{}}] run function tag:system/inventory/fallback_item

# check if duplicates (moved by player)
execute store result score @s temp_store.requested_reload_items run clear @s minecraft:carrot_on_a_stick{requestedReload:1b} 0
execute if score @s temp_store.requested_reload_items matches 2.. run clear @s minecraft:carrot_on_a_stick{requestedReload:1b}

# replace reload item
item replace entity @s weapon.offhand with minecraft:carrot_on_a_stick{CustomModelData:7,requestedReload:1b}