# LASERTAG map storage
## store all map related data


data remove storage tag:maps maps

## slots 0, 9, 18  reserved for map sizes
## slots 1, 10, 19 reserved for padding
data modify storage tag:maps maps append value {Slot:2b, id:"minecraft:warped_planks", tag:{mapID:0, mapName:"Test"}, display:{Name:'{"text":"Test","italic":false}'}, Count:1b}
data modify storage tag:maps maps append value {Slot:3b, id:"minecraft:warped_stairs", tag:{mapID:1, mapName:"Test2"}, display:{Name:'{"text":"Test2","italic":false}'}, Count:1b}
data modify storage tag:maps maps append value {Slot:4b, id:"minecraft:gold_block", tag:{mapID:2, mapName:"New WIP"}, display:{Name:'{"text":"New WIP","italic":false}'}, Count:1b}