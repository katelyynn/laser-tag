# LASERTAG inventory
## fallback item summon
## drop mainhand item and replace with offhand


# summon item
summon minecraft:item ~ ~ ~ {Item:{id:"minecraft:crossbow","Count":1b},Tags:["inventory.bound_item"]}

# copy data
data modify entity @e[type=minecraft:item,tag=inventory.bound_item,limit=1] Item set from entity @s SelectedItem

# remove tag
data modify entity @e[type=minecraft:item,tag=inventory.bound_item,limit=1] PickupDelay set value 0
tag @e[type=minecraft:item,tag=inventory.bound_item,limit=1] remove inventory.bound_item

tellraw @s {"text":"Dropped mainhand item"}