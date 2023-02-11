# LASERTAG map storage
## store all map related data


data remove storage tag:maps maps

data modify storage tag:maps maps append value {Slot:0b, id:"minecraft:carrot_on_a_stick", tag:{page: 0, selection: 0, mapItem: 1b, action:"chooseMapSize", mapSize:"small", CustomModelData:5, display:{Name:'{"text":"Map size: Small","color":"green","italic":false}'}}, Count:1b}
data modify storage tag:maps maps append value {Slot:9b, id:"minecraft:carrot_on_a_stick", tag:{page: 0, selection: 9, mapItem: 1b, action:"chooseMapSize", mapSize:"small", CustomModelData:5, display:{Name:'{"text":"Map size: Small","color":"green","italic":false}'}}, Count:1b}
data modify storage tag:maps maps append value {Slot:18b, id:"minecraft:carrot_on_a_stick", tag:{page: 0, selection: 18, mapItem: 1b, action:"chooseMapSize", mapSize:"small", CustomModelData:5, display:{Name:'{"text":"Map size: Small","color":"green","italic":false}'}}, Count:1b}

## slots 0, 9, 18  reserved for map sizes
## slots 1, 10, 19 reserved for padding
data modify storage tag:maps maps append value {Slot:2b, id:"minecraft:carrot_on_a_stick", tag:{page: 0, selection: 2, mapItem: 1b, action:"chooseMap", mapID:0, mapName:"Test", display:{Name:'{"text":"Test","italic":false}'}}, Count:1b}
data modify storage tag:maps maps append value {Slot:3b, id:"minecraft:carrot_on_a_stick", tag:{page: 0, selection: 3, mapItem: 1b, action:"chooseMap", mapID:1, mapName:"Test2", display:{Name:'{"text":"Test2","italic":false}'}}, Count:1b}
data modify storage tag:maps maps append value {Slot:4b, id:"minecraft:carrot_on_a_stick", tag:{page: 0, selection: 4, mapItem: 1b, action:"chooseMap", mapID:2, mapName:"New WIP", display:{Name:'{"text":"New WIP","italic":false}'}}, Count:1b}