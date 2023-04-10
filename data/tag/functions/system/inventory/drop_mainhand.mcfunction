# LASERTAG inventory
## fallback item summon
## drop mainhand item and replace with offhand


# summon item
summon minecraft:item ~ ~ ~ {Item:{id:"minecraft:barrier","Count":1b},Tags:["inventory.bound_item"]}

# copy data
data modify entity @e[type=minecraft:item,tag=inventory.bound_item,limit=1] Item set from entity @s SelectedItem

# remove tag
execute unless data entity @e[type=minecraft:item,tag=inventory.bound_item,limit=1] {Item:{id:"minecraft:barrier"}} run data modify entity @e[type=minecraft:item,tag=inventory.bound_item,limit=1] PickupDelay set value 0
execute if data entity @e[type=minecraft:item,tag=inventory.bound_item,limit=1] {Item:{id:"minecraft:barrier"}} run kill @e[type=minecraft:item,tag=inventory.bound_item,limit=1]
tag @e[type=minecraft:item,tag=inventory.bound_item,limit=1] remove inventory.bound_item

execute if score dev_mode internal matches 77 run tellraw @s {"text":"Dropped mainhand item"}