# LASERTAG map storage
## store all map related data


data remove storage tag:maps page0
data remove storage tag:maps page1

# global
data modify storage tag:maps page0 append value {Slot:0b, id:"minecraft:carrot_on_a_stick", tag:{page: 0, selection: 0, mapItem: 1b, action:"chooseMapSize", page0ize:"small", CustomModelData:1, display:{Name:'{"text":"Map size: Small","color":"green","italic":false}'}}, Count:1b}
data modify storage tag:maps page0 append value {Slot:9b, id:"minecraft:carrot_on_a_stick", tag:{page: 0, selection: 9, mapItem: 1b, action:"chooseMapSize", page0ize:"small", CustomModelData:2, display:{Name:'{"text":"Map size: Small","color":"green","italic":false}'}}, Count:1b}
data modify storage tag:maps page0 append value {Slot:18b, id:"minecraft:carrot_on_a_stick", tag:{page: 0, selection: 18, mapItem: 1b, CustomModelData:3, display:{Name:'{"text":"Toggle map dev mode","color":"green","italic":false}'}}, Count:1b}
##
data modify storage tag:maps page1 append value {Slot:0b, id:"minecraft:carrot_on_a_stick", tag:{page: 0, selection: 0, mapItem: 1b, action:"chooseMapSize", page0ize:"small", CustomModelData:1, display:{Name:'{"text":"Map size: Small","color":"green","italic":false}'}}, Count:1b}
data modify storage tag:maps page1 append value {Slot:9b, id:"minecraft:carrot_on_a_stick", tag:{page: 0, selection: 9, mapItem: 1b, action:"chooseMapSize", page0ize:"small", CustomModelData:2, display:{Name:'{"text":"Map size: Small","color":"green","italic":false}'}}, Count:1b}
data modify storage tag:maps page1 append value {Slot:18b, id:"minecraft:carrot_on_a_stick", tag:{page: 0, selection: 18, mapItem: 1b, CustomModelData:3, display:{Name:'{"text":"Toggle map dev mode","color":"green","italic":false}'}}, Count:1b}

data modify storage tag:maps page0 append value {Slot:1b, id:"minecraft:carrot_on_a_stick", tag:{page: 0, selection: 1, mapItem: 1b, CustomModelData:7, display:{Name:'{"text":"","color":"green","italic":false}'}}, Count:1b}
data modify storage tag:maps page0 append value {Slot:10b, id:"minecraft:carrot_on_a_stick", tag:{page: 0, selection: 10, mapItem: 1b, CustomModelData:7, display:{Name:'{"text":"","color":"green","italic":false}'}}, Count:1b}
data modify storage tag:maps page0 append value {Slot:19b, id:"minecraft:carrot_on_a_stick", tag:{page: 0, selection: 19, mapItem: 1b, CustomModelData:7, display:{Name:'{"text":"","color":"green","italic":false}'}}, Count:1b}
data modify storage tag:maps page0 append value {Slot:8b, id:"minecraft:carrot_on_a_stick", tag:{page: 0, selection: 8, mapItem: 1b, CustomModelData:7, display:{Name:'{"text":"","color":"green","italic":false}'}}, Count:1b}
data modify storage tag:maps page0 append value {Slot:17b, id:"minecraft:carrot_on_a_stick", tag:{page: 0, selection: 17, mapItem: 1b, CustomModelData:7, display:{Name:'{"text":"","color":"green","italic":false}'}}, Count:1b}
data modify storage tag:maps page0 append value {Slot:26b, id:"minecraft:carrot_on_a_stick", tag:{page: 0, selection: 26, mapItem: 1b, CustomModelData:7, display:{Name:'{"text":"","color":"green","italic":false}'}}, Count:1b}
##
data modify storage tag:maps page1 append value {Slot:1b, id:"minecraft:carrot_on_a_stick", tag:{page: 0, selection: 1, mapItem: 1b, CustomModelData:7, display:{Name:'{"text":"","color":"green","italic":false}'}}, Count:1b}
data modify storage tag:maps page1 append value {Slot:10b, id:"minecraft:carrot_on_a_stick", tag:{page: 0, selection: 10, mapItem: 1b, CustomModelData:7, display:{Name:'{"text":"","color":"green","italic":false}'}}, Count:1b}
data modify storage tag:maps page1 append value {Slot:19b, id:"minecraft:carrot_on_a_stick", tag:{page: 0, selection: 19, mapItem: 1b, CustomModelData:7, display:{Name:'{"text":"","color":"green","italic":false}'}}, Count:1b}
data modify storage tag:maps page1 append value {Slot:8b, id:"minecraft:carrot_on_a_stick", tag:{page: 0, selection: 8, mapItem: 1b, CustomModelData:7, display:{Name:'{"text":"","color":"green","italic":false}'}}, Count:1b}
data modify storage tag:maps page1 append value {Slot:17b, id:"minecraft:carrot_on_a_stick", tag:{page: 0, selection: 17, mapItem: 1b, CustomModelData:7, display:{Name:'{"text":"","color":"green","italic":false}'}}, Count:1b}
data modify storage tag:maps page1 append value {Slot:26b, id:"minecraft:carrot_on_a_stick", tag:{page: 0, selection: 26, mapItem: 1b, CustomModelData:7, display:{Name:'{"text":"","color":"green","italic":false}'}}, Count:1b}

## slots 0, 9, 18  reserved for map sizes
## slots 1, 10, 19 reserved for padding
#data modify storage tag:maps page0 append value {Slot:2b, id:"minecraft:carrot_on_a_stick", tag:{page: 0, selection: 2, mapItem: 1b, CustomModelData:99, display:{Name:'{"text":"Test","italic":false}'}}, Count:1b}
#data modify storage tag:maps page0 append value {Slot:3b, id:"minecraft:carrot_on_a_stick", tag:{page: 0, selection: 3, mapItem: 1b, CustomModelData:100, display:{Name:'{"text":"Test2","italic":false}'}}, Count:1b}

## map 1 - new wip
execute unless score game_map global matches 1 run data modify storage tag:maps page0 append value {Slot:2b, id:"minecraft:carrot_on_a_stick", tag:{page: 0, selection: 2, mapItem: 1b, CustomModelData:101, display:{Name:'{"text":"New WIP","italic":false}',Lore:['{"text":"by DR_Nolife, aztro_, and katehaj","italic":false,"color":"gray"}']}}, Count:1b}
execute if score game_map global matches 1 run data modify storage tag:maps page0 append value {Slot:2b, id:"minecraft:carrot_on_a_stick", tag:{page: 0, selection: 2, mapItem: 1b, CustomModelData:201, display:{Name:'{"text":"New WIP","italic":false}',Lore:['{"text":"by DR_Nolife, aztro_, and katehaj","italic":false,"color":"gray"}','{"text":""}','{"text":"→ Selected","italic":false,"color":"#96FF96"}']}}, Count:1b}
## map 2 - forest
execute unless score game_map global matches 2 run data modify storage tag:maps page0 append value {Slot:3b, id:"minecraft:carrot_on_a_stick", tag:{page: 0, selection: 3, mapItem: 1b, CustomModelData:102, display:{Name:'{"text":"Forest","italic":false}',Lore:['{"text":"by katehaj","italic":false,"color":"gray"}']}}, Count:1b}
execute if score game_map global matches 2 run data modify storage tag:maps page0 append value {Slot:3b, id:"minecraft:carrot_on_a_stick", tag:{page: 0, selection: 3, mapItem: 1b, CustomModelData:202, display:{Name:'{"text":"Forest","italic":false}',Lore:['{"text":"by katehaj","italic":false,"color":"gray"}','{"text":""}','{"text":"→ Selected","italic":false,"color":"#96FF96"}']}}, Count:1b}
## map 3 - backrooms
execute unless score game_map global matches 3 run data modify storage tag:maps page0 append value {Slot:4b, id:"minecraft:carrot_on_a_stick", tag:{page: 0, selection: 4, mapItem: 1b, CustomModelData:103, display:{Name:'{"text":"Backrooms","italic":false}',Lore:['{"text":"by katehaj and CatgirlEllaa","italic":false,"color":"gray"}']}}, Count:1b}
execute if score game_map global matches 3 run data modify storage tag:maps page0 append value {Slot:4b, id:"minecraft:carrot_on_a_stick", tag:{page: 0, selection: 4, mapItem: 1b, CustomModelData:203, display:{Name:'{"text":"Backrooms","italic":false}',Lore:['{"text":"by katehaj and CatgirlEllaa","italic":false,"color":"gray"}','{"text":""}','{"text":"→ Selected","italic":false,"color":"#96FF96"}']}}, Count:1b}
## map 4 - pumpkin patch
execute unless score game_map global matches 4 run data modify storage tag:maps page0 append value {Slot:5b, id:"minecraft:carrot_on_a_stick", tag:{page: 0, selection: 5, mapItem: 1b, CustomModelData:104, display:{Name:'{"text":"Pumpkin Patch","italic":false}',Lore:['{"text":"by katehaj and CatgirlEllaa","italic":false,"color":"gray"}']}}, Count:1b}
execute if score game_map global matches 4 run data modify storage tag:maps page0 append value {Slot:5b, id:"minecraft:carrot_on_a_stick", tag:{page: 0, selection: 5, mapItem: 1b, CustomModelData:204, display:{Name:'{"text":"Pumpkin Patch","italic":false}',Lore:['{"text":"by katehaj and CatgirlEllaa","italic":false,"color":"gray"}','{"text":""}','{"text":"→ Selected","italic":false,"color":"#96FF96"}']}}, Count:1b}