# LASERTAG map storage
## store all map related data


data remove storage tag:maps

data modify storage tag:maps maps append value {Slot:0b, tag:{mapID: 0, mapName: "Test"}, display:{Name:'{"text":"Test","italic":false}'}}
data modify storage tag:maps maps append value {Slot:1b, tag:{mapID: 1, mapName: "Test2"}, display:{Name:'{"text":"Test2","italic":false}'}}
data modify storage tag:maps maps append value {Slot:2b, tag:{mapID: 2, mapName: "New WIP"}, display:{Name:'{"text":"New WIP","italic":false}'}}