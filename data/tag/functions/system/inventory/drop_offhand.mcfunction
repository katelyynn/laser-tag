# LASERTAG inventory
## fallback item summon
## drop mainhand item and replace with offhand


# item in mainhand?
## drop that item first
execute if entity @s[nbt={SelectedItem:{}}] run function tag:system/inventory/drop_mainhand

# then copy offhand
item replace entity @s weapon.mainhand from entity @s weapon.offhand

execute if score dev_mode internal matches 77 run tellraw @s {"text":"Copied offhand item to mainhand"}