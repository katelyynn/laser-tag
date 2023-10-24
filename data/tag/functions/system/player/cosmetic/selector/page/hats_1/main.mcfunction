# LASERTAG map selector
## hats page 1


item replace entity @s enderchest.0 with carrot_on_a_stick{page: 81, selection: 0, cosmeticItem: 1b, CustomModelData:52, display:{Name:'{"text":"","color":"gray","italic":false}'}}
item replace entity @s enderchest.1 with carrot_on_a_stick{page: 81, selection: 1, cosmeticItem: 1b, CustomModelData:53, display:{Name:'{"text":"","color":"green","italic":false}'}}
item replace entity @s enderchest.8 with carrot_on_a_stick{page: 81, selection: 8, cosmeticItem: 1b, CustomModelData:35, display:{Name:'{"translate":"action.back","color":"gray","italic":false}'}}
item replace entity @s enderchest.9 with carrot_on_a_stick{page: 81, selection: 9, cosmeticItem: 1b, CustomModelData:46, display:{Name:'{"translate":"lobby.cosmetic_selector.home.help","color":"#EBD779","italic":false}',Lore:['{"translate":"lobby.cosmetic_selector.home.help.bio.0","italic":false,"color":"gray"}','{"translate":"lobby.cosmetic_selector.home.help.bio.1","italic":false,"color":"gray"}']}}
item replace entity @s enderchest.10 with carrot_on_a_stick{page: 81, selection: 10, cosmeticItem: 1b, CustomModelData:7, display:{Name:'{"text":"","color":"green","italic":false}'}}
item replace entity @s enderchest.17 with carrot_on_a_stick{page: 81, selection: 17, cosmeticItem: 1b, CustomModelData:7, display:{Name:'{"text":"","color":"green","italic":false}'}}
item replace entity @s enderchest.18 with carrot_on_a_stick{page: 81, selection: 18, cosmeticItem: 1b, CustomModelData:39, display:{Name:'{"text":"","color":"green","italic":false}'}}
item replace entity @s enderchest.19 with carrot_on_a_stick{page: 81, selection: 19, cosmeticItem: 1b, CustomModelData:7, display:{Name:'{"text":"","color":"green","italic":false}'}}
item replace entity @s enderchest.26 with carrot_on_a_stick{page: 81, selection: 26, cosmeticItem: 1b, CustomModelData:7, display:{Name:'{"text":"","color":"green","italic":false}'}}


# fill container

## particle 17 - white ash
execute unless score @s cosmetic.hat.17 matches 1 unless score @s cosmetic.hat matches 17 run item replace entity @s enderchest.2 with carrot_on_a_stick{page: 81, selection: 2, cosmeticItem: 1b, CustomModelData:817, display:{Name:'{"translate":"lobby.cosmetic_selector.hats.17","italic":false}',Lore:['{"translate":"lobby.cosmetic_selector.hats.17.bio","italic":false,"color":"gray"}','{"text":""}','{"translate":"lobby.cosmetic_selector.hats.17.cost","italic":false,"color":"#CC692C"}']}}
execute if score @s cosmetic.hat.17 matches 1 unless score @s cosmetic.hat matches 17 run item replace entity @s enderchest.2 with carrot_on_a_stick{page: 81, selection: 2, cosmeticItem: 1b, CustomModelData:917, display:{Name:'{"translate":"lobby.cosmetic_selector.hats.17","italic":false}',Lore:['{"translate":"lobby.cosmetic_selector.hats.17.bio","italic":false,"color":"gray"}','{"text":""}','{"translate":"lobby.cosmetic_selector.item.bought","italic":false,"color":"#96FF96"}']}}
execute if score @s cosmetic.hat matches 17 run item replace entity @s enderchest.2 with carrot_on_a_stick{page: 81, selection: 2, cosmeticItem: 1b, CustomModelData:1017, display:{Name:'{"translate":"lobby.cosmetic_selector.hats.17","italic":false}',Lore:['{"translate":"lobby.cosmetic_selector.hats.17.bio","italic":false,"color":"gray"}','{"text":""}','{"translate":"lobby.cosmetic_selector.item.selected","italic":false,"color":"#96FF96"}']}}

## particle 18 - warped spore
execute unless score @s cosmetic.hat.18 matches 1 unless score @s cosmetic.hat matches 18 run item replace entity @s enderchest.3 with carrot_on_a_stick{page: 81, selection: 3, cosmeticItem: 1b, CustomModelData:818, display:{Name:'{"translate":"lobby.cosmetic_selector.hats.18","italic":false}',Lore:['{"translate":"lobby.cosmetic_selector.hats.18.bio","italic":false,"color":"gray"}','{"text":""}','{"translate":"lobby.cosmetic_selector.hats.18.cost","italic":false,"color":"#CC692C"}']}}
execute if score @s cosmetic.hat.18 matches 1 unless score @s cosmetic.hat matches 18 run item replace entity @s enderchest.3 with carrot_on_a_stick{page: 81, selection: 3, cosmeticItem: 1b, CustomModelData:918, display:{Name:'{"translate":"lobby.cosmetic_selector.hats.18","italic":false}',Lore:['{"translate":"lobby.cosmetic_selector.hats.18.bio","italic":false,"color":"gray"}','{"text":""}','{"translate":"lobby.cosmetic_selector.item.bought","italic":false,"color":"#96FF96"}']}}
execute if score @s cosmetic.hat matches 18 run item replace entity @s enderchest.3 with carrot_on_a_stick{page: 81, selection: 3, cosmeticItem: 1b, CustomModelData:1018, display:{Name:'{"translate":"lobby.cosmetic_selector.hats.18","italic":false}',Lore:['{"translate":"lobby.cosmetic_selector.hats.18.bio","italic":false,"color":"gray"}','{"text":""}','{"translate":"lobby.cosmetic_selector.item.selected","italic":false,"color":"#96FF96"}']}}

## particle 19 - crimson spore
execute unless score @s cosmetic.hat.19 matches 1 unless score @s cosmetic.hat matches 19 run item replace entity @s enderchest.4 with carrot_on_a_stick{page: 81, selection: 4, cosmeticItem: 1b, CustomModelData:819, display:{Name:'{"translate":"lobby.cosmetic_selector.hats.19","italic":false}',Lore:['{"translate":"lobby.cosmetic_selector.hats.19.bio","italic":false,"color":"gray"}','{"text":""}','{"translate":"lobby.cosmetic_selector.hats.19.cost","italic":false,"color":"#CC692C"}']}}
execute if score @s cosmetic.hat.19 matches 1 unless score @s cosmetic.hat matches 19 run item replace entity @s enderchest.4 with carrot_on_a_stick{page: 81, selection: 4, cosmeticItem: 1b, CustomModelData:919, display:{Name:'{"translate":"lobby.cosmetic_selector.hats.19","italic":false}',Lore:['{"translate":"lobby.cosmetic_selector.hats.19.bio","italic":false,"color":"gray"}','{"text":""}','{"translate":"lobby.cosmetic_selector.item.bought","italic":false,"color":"#96FF96"}']}}
execute if score @s cosmetic.hat matches 19 run item replace entity @s enderchest.4 with carrot_on_a_stick{page: 81, selection: 4, cosmeticItem: 1b, CustomModelData:1019, display:{Name:'{"translate":"lobby.cosmetic_selector.hats.19","italic":false}',Lore:['{"translate":"lobby.cosmetic_selector.hats.19.bio","italic":false,"color":"gray"}','{"text":""}','{"translate":"lobby.cosmetic_selector.item.selected","italic":false,"color":"#96FF96"}']}}

## particle 20 - falling cherry leaves
execute unless score @s cosmetic.hat.20 matches 1 unless score @s cosmetic.hat matches 20 run item replace entity @s enderchest.5 with carrot_on_a_stick{page: 81, selection: 5, cosmeticItem: 1b, CustomModelData:820, display:{Name:'{"translate":"lobby.cosmetic_selector.hats.20","italic":false}',Lore:['{"translate":"lobby.cosmetic_selector.hats.20.bio","italic":false,"color":"gray"}','{"text":""}','{"translate":"lobby.cosmetic_selector.hats.20.cost","italic":false,"color":"#CC692C"}']}}
execute if score @s cosmetic.hat.20 matches 1 unless score @s cosmetic.hat matches 20 run item replace entity @s enderchest.5 with carrot_on_a_stick{page: 81, selection: 5, cosmeticItem: 1b, CustomModelData:920, display:{Name:'{"translate":"lobby.cosmetic_selector.hats.20","italic":false}',Lore:['{"translate":"lobby.cosmetic_selector.hats.20.bio","italic":false,"color":"gray"}','{"text":""}','{"translate":"lobby.cosmetic_selector.item.bought","italic":false,"color":"#96FF96"}']}}
execute if score @s cosmetic.hat matches 20 run item replace entity @s enderchest.5 with carrot_on_a_stick{page: 81, selection: 5, cosmeticItem: 1b, CustomModelData:1020, display:{Name:'{"translate":"lobby.cosmetic_selector.hats.20","italic":false}',Lore:['{"translate":"lobby.cosmetic_selector.hats.20.bio","italic":false,"color":"gray"}','{"text":""}','{"translate":"lobby.cosmetic_selector.item.selected","italic":false,"color":"#96FF96"}']}}

## particle 21 - spore blossom
execute unless score @s cosmetic.hat.21 matches 1 unless score @s cosmetic.hat matches 21 run item replace entity @s enderchest.6 with carrot_on_a_stick{page: 81, selection: 6, cosmeticItem: 1b, CustomModelData:821, display:{Name:'{"translate":"lobby.cosmetic_selector.hats.21","italic":false}',Lore:['{"translate":"lobby.cosmetic_selector.hats.21.bio","italic":false,"color":"gray"}','{"text":""}','{"translate":"lobby.cosmetic_selector.hats.21.cost","italic":false,"color":"#CC692C"}']}}
execute if score @s cosmetic.hat.21 matches 1 unless score @s cosmetic.hat matches 21 run item replace entity @s enderchest.6 with carrot_on_a_stick{page: 81, selection: 6, cosmeticItem: 1b, CustomModelData:921, display:{Name:'{"translate":"lobby.cosmetic_selector.hats.21","italic":false}',Lore:['{"translate":"lobby.cosmetic_selector.hats.21.bio","italic":false,"color":"gray"}','{"text":""}','{"translate":"lobby.cosmetic_selector.item.bought","italic":false,"color":"#96FF96"}']}}
execute if score @s cosmetic.hat matches 21 run item replace entity @s enderchest.6 with carrot_on_a_stick{page: 81, selection: 6, cosmeticItem: 1b, CustomModelData:1021, display:{Name:'{"translate":"lobby.cosmetic_selector.hats.21","italic":false}',Lore:['{"translate":"lobby.cosmetic_selector.hats.21.bio","italic":false,"color":"gray"}','{"text":""}','{"translate":"lobby.cosmetic_selector.item.selected","italic":false,"color":"#96FF96"}']}}

## particle 22 - obsidian tear
execute unless score @s cosmetic.hat.22 matches 1 unless score @s cosmetic.hat matches 22 run item replace entity @s enderchest.7 with carrot_on_a_stick{page: 81, selection: 7, cosmeticItem: 1b, CustomModelData:822, display:{Name:'{"translate":"lobby.cosmetic_selector.hats.22","italic":false}',Lore:['{"translate":"lobby.cosmetic_selector.hats.22.bio","italic":false,"color":"gray"}','{"text":""}','{"translate":"lobby.cosmetic_selector.hats.22.cost","italic":false,"color":"#CC692C"}']}}
execute if score @s cosmetic.hat.22 matches 1 unless score @s cosmetic.hat matches 22 run item replace entity @s enderchest.7 with carrot_on_a_stick{page: 81, selection: 7, cosmeticItem: 1b, CustomModelData:922, display:{Name:'{"translate":"lobby.cosmetic_selector.hats.22","italic":false}',Lore:['{"translate":"lobby.cosmetic_selector.hats.22.bio","italic":false,"color":"gray"}','{"text":""}','{"translate":"lobby.cosmetic_selector.item.bought","italic":false,"color":"#96FF96"}']}}
execute if score @s cosmetic.hat matches 22 run item replace entity @s enderchest.7 with carrot_on_a_stick{page: 81, selection: 7, cosmeticItem: 1b, CustomModelData:1022, display:{Name:'{"translate":"lobby.cosmetic_selector.hats.22","italic":false}',Lore:['{"translate":"lobby.cosmetic_selector.hats.22.bio","italic":false,"color":"gray"}','{"text":""}','{"translate":"lobby.cosmetic_selector.item.selected","italic":false,"color":"#96FF96"}']}}

## particle 23 - mycelium
execute unless score @s cosmetic.hat.23 matches 1 unless score @s cosmetic.hat matches 23 run item replace entity @s enderchest.11 with carrot_on_a_stick{page: 81, selection: 11, cosmeticItem: 1b, CustomModelData:823, display:{Name:'{"translate":"lobby.cosmetic_selector.hats.23","italic":false}',Lore:['{"translate":"lobby.cosmetic_selector.hats.23.bio","italic":false,"color":"gray"}','{"text":""}','{"translate":"lobby.cosmetic_selector.hats.23.cost","italic":false,"color":"#CC692C"}']}}
execute if score @s cosmetic.hat.23 matches 1 unless score @s cosmetic.hat matches 23 run item replace entity @s enderchest.11 with carrot_on_a_stick{page: 81, selection: 11, cosmeticItem: 1b, CustomModelData:923, display:{Name:'{"translate":"lobby.cosmetic_selector.hats.23","italic":false}',Lore:['{"translate":"lobby.cosmetic_selector.hats.23.bio","italic":false,"color":"gray"}','{"text":""}','{"translate":"lobby.cosmetic_selector.item.bought","italic":false,"color":"#96FF96"}']}}
execute if score @s cosmetic.hat matches 23 run item replace entity @s enderchest.11 with carrot_on_a_stick{page: 81, selection: 11, cosmeticItem: 1b, CustomModelData:1023, display:{Name:'{"translate":"lobby.cosmetic_selector.hats.23","italic":false}',Lore:['{"translate":"lobby.cosmetic_selector.hats.23.bio","italic":false,"color":"gray"}','{"text":""}','{"translate":"lobby.cosmetic_selector.item.selected","italic":false,"color":"#96FF96"}']}}

## particle 24 - rain
execute unless score @s cosmetic.hat.24 matches 1 unless score @s cosmetic.hat matches 24 run item replace entity @s enderchest.12 with carrot_on_a_stick{page: 81, selection: 12, cosmeticItem: 1b, CustomModelData:824, display:{Name:'{"translate":"lobby.cosmetic_selector.hats.24","italic":false}',Lore:['{"translate":"lobby.cosmetic_selector.hats.24.bio","italic":false,"color":"gray"}','{"text":""}','{"translate":"lobby.cosmetic_selector.hats.24.cost","italic":false,"color":"#CC692C"}']}}
execute if score @s cosmetic.hat.24 matches 1 unless score @s cosmetic.hat matches 24 run item replace entity @s enderchest.12 with carrot_on_a_stick{page: 81, selection: 12, cosmeticItem: 1b, CustomModelData:924, display:{Name:'{"translate":"lobby.cosmetic_selector.hats.24","italic":false}',Lore:['{"translate":"lobby.cosmetic_selector.hats.24.bio","italic":false,"color":"gray"}','{"text":""}','{"translate":"lobby.cosmetic_selector.item.bought","italic":false,"color":"#96FF96"}']}}
execute if score @s cosmetic.hat matches 24 run item replace entity @s enderchest.12 with carrot_on_a_stick{page: 81, selection: 12, cosmeticItem: 1b, CustomModelData:1024, display:{Name:'{"translate":"lobby.cosmetic_selector.hats.24","italic":false}',Lore:['{"translate":"lobby.cosmetic_selector.hats.24.bio","italic":false,"color":"gray"}','{"text":""}','{"translate":"lobby.cosmetic_selector.item.selected","italic":false,"color":"#96FF96"}']}}

## particle 25 - enchant
execute unless score @s cosmetic.hat.25 matches 1 unless score @s cosmetic.hat matches 25 run item replace entity @s enderchest.13 with carrot_on_a_stick{page: 81, selection: 13, cosmeticItem: 1b, CustomModelData:825, display:{Name:'{"translate":"lobby.cosmetic_selector.hats.25","italic":false}',Lore:['{"translate":"lobby.cosmetic_selector.hats.25.bio","italic":false,"color":"gray","font":"alt"}','{"text":""}','{"translate":"lobby.cosmetic_selector.hats.25.cost","italic":false,"color":"#CC692C"}']}}
execute if score @s cosmetic.hat.25 matches 1 unless score @s cosmetic.hat matches 25 run item replace entity @s enderchest.13 with carrot_on_a_stick{page: 81, selection: 13, cosmeticItem: 1b, CustomModelData:925, display:{Name:'{"translate":"lobby.cosmetic_selector.hats.25","italic":false}',Lore:['{"translate":"lobby.cosmetic_selector.hats.25.bio","italic":false,"color":"gray","font":"alt"}','{"text":""}','{"translate":"lobby.cosmetic_selector.item.bought","italic":false,"color":"#96FF96"}']}}
execute if score @s cosmetic.hat matches 25 run item replace entity @s enderchest.13 with carrot_on_a_stick{page: 81, selection: 13, cosmeticItem: 1b, CustomModelData:1025, display:{Name:'{"translate":"lobby.cosmetic_selector.hats.25","italic":false}',Lore:['{"translate":"lobby.cosmetic_selector.hats.25.bio","italic":false,"color":"gray","font":"alt"}','{"text":""}','{"translate":"lobby.cosmetic_selector.item.selected","italic":false,"color":"#96FF96"}']}}

## particle 26 - sculk charge pop
execute unless score @s cosmetic.hat.26 matches 1 unless score @s cosmetic.hat matches 26 run item replace entity @s enderchest.14 with carrot_on_a_stick{page: 81, selection: 14, cosmeticItem: 1b, CustomModelData:826, display:{Name:'{"translate":"lobby.cosmetic_selector.hats.26","italic":false}',Lore:['{"translate":"lobby.cosmetic_selector.hats.26.bio","italic":false,"color":"gray"}','{"text":""}','{"translate":"lobby.cosmetic_selector.hats.26.cost","italic":false,"color":"#CC692C"}']}}
execute if score @s cosmetic.hat.26 matches 1 unless score @s cosmetic.hat matches 26 run item replace entity @s enderchest.14 with carrot_on_a_stick{page: 81, selection: 14, cosmeticItem: 1b, CustomModelData:926, display:{Name:'{"translate":"lobby.cosmetic_selector.hats.26","italic":false}',Lore:['{"translate":"lobby.cosmetic_selector.hats.26.bio","italic":false,"color":"gray"}','{"text":""}','{"translate":"lobby.cosmetic_selector.item.bought","italic":false,"color":"#96FF96"}']}}
execute if score @s cosmetic.hat matches 26 run item replace entity @s enderchest.14 with carrot_on_a_stick{page: 81, selection: 14, cosmeticItem: 1b, CustomModelData:1026, display:{Name:'{"translate":"lobby.cosmetic_selector.hats.26","italic":false}',Lore:['{"translate":"lobby.cosmetic_selector.hats.26.bio","italic":false,"color":"gray"}','{"text":""}','{"translate":"lobby.cosmetic_selector.item.selected","italic":false,"color":"#96FF96"}']}}