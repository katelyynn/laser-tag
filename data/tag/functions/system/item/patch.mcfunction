# LASERTAG item
## patch data


data merge entity @s {PickupDelay:0}

tag @s add item.patched

# blacklist
execute if data entity @s {Item:{id:"minecraft:arrow"}} run kill @s