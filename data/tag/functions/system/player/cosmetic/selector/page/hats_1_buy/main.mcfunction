# LASERTAG cosmetic selector
## main


item replace entity @s enderchest.0 with carrot_on_a_stick{page: 101, selection: 0, cosmeticItem: 1b, CustomModelData:38, display:{Name:'{"text":"","color":"green","italic":false}'}}
item replace entity @s enderchest.1 with carrot_on_a_stick{page: 101, selection: 1, cosmeticItem: 1b, CustomModelData:40, display:{Name:'{"text":"","color":"green","italic":false}'}}
item replace entity @s enderchest.8 with carrot_on_a_stick{page: 101, selection: 8, cosmeticItem: 1b, CustomModelData:7, display:{Name:'{"text":"","color":"green","italic":false}'}}
item replace entity @s enderchest.9 with carrot_on_a_stick{page: 101, selection: 9, cosmeticItem: 1b, CustomModelData:31, display:{Name:'{"text":"","color":"green","italic":false}'}}
item replace entity @s enderchest.10 with carrot_on_a_stick{page: 101, selection: 10, cosmeticItem: 1b, CustomModelData:31, display:{Name:'{"text":"","color":"green","italic":false}'}}
item replace entity @s enderchest.17 with carrot_on_a_stick{page: 101, selection: 17, cosmeticItem: 1b, CustomModelData:31, display:{Name:'{"text":"","color":"green","italic":false}'}}
item replace entity @s enderchest.18 with carrot_on_a_stick{page: 101, selection: 18, cosmeticItem: 1b, CustomModelData:37, display:{Name:'{"text":"","color":"green","italic":false}'}}
item replace entity @s enderchest.19 with carrot_on_a_stick{page: 101, selection: 19, cosmeticItem: 1b, CustomModelData:7, display:{Name:'{"text":"","color":"green","italic":false}'}}
item replace entity @s enderchest.26 with carrot_on_a_stick{page: 101, selection: 26, cosmeticItem: 1b, CustomModelData:7, display:{Name:'{"text":"","color":"green","italic":false}'}}


# blank slots
## around item
item replace entity @s enderchest.2 with carrot_on_a_stick{page: 101, selection: 2, cosmeticItem: 1b, CustomModelData:41, display:{Name:'{"text":"","color":"green","italic":false}'}}
item replace entity @s enderchest.3 with carrot_on_a_stick{page: 101, selection: 3, cosmeticItem: 1b, CustomModelData:31, display:{Name:'{"text":"","color":"green","italic":false}'}}
item replace entity @s enderchest.12 with carrot_on_a_stick{page: 101, selection: 12, cosmeticItem: 1b, CustomModelData:31, display:{Name:'{"text":"","color":"green","italic":false}'}}
item replace entity @s enderchest.20 with carrot_on_a_stick{page: 101, selection: 20, cosmeticItem: 1b, CustomModelData:39, display:{Name:'{"text":"","color":"green","italic":false}'}}
item replace entity @s enderchest.21 with carrot_on_a_stick{page: 101, selection: 21, cosmeticItem: 1b, CustomModelData:37, display:{Name:'{"text":"","color":"green","italic":false}'}}

## around buttons
item replace entity @s enderchest.4 with carrot_on_a_stick{page: 101, selection: 4, cosmeticItem: 1b, CustomModelData:31, display:{Name:'{"text":"","color":"green","italic":false}'}}
item replace entity @s enderchest.5 with carrot_on_a_stick{page: 101, selection: 5, cosmeticItem: 1b, CustomModelData:31, display:{Name:'{"text":"","color":"green","italic":false}'}}
item replace entity @s enderchest.6 with carrot_on_a_stick{page: 101, selection: 6, cosmeticItem: 1b, CustomModelData:31, display:{Name:'{"text":"","color":"green","italic":false}'}}
item replace entity @s enderchest.7 with carrot_on_a_stick{page: 101, selection: 7, cosmeticItem: 1b, CustomModelData:31, display:{Name:'{"text":"","color":"green","italic":false}'}}
item replace entity @s enderchest.14 with carrot_on_a_stick{page: 101, selection: 14, cosmeticItem: 1b, CustomModelData:36, display:{Name:'{"text":"","color":"green","italic":false}'}}
item replace entity @s enderchest.16 with carrot_on_a_stick{page: 101, selection: 16, cosmeticItem: 1b, CustomModelData:31, display:{Name:'{"text":"","color":"green","italic":false}'}}
item replace entity @s enderchest.22 with carrot_on_a_stick{page: 101, selection: 22, cosmeticItem: 1b, CustomModelData:37, display:{Name:'{"text":"","color":"green","italic":false}'}}
item replace entity @s enderchest.23 with carrot_on_a_stick{page: 101, selection: 23, cosmeticItem: 1b, CustomModelData:37, display:{Name:'{"text":"","color":"green","italic":false}'}}
item replace entity @s enderchest.24 with carrot_on_a_stick{page: 101, selection: 24, cosmeticItem: 1b, CustomModelData:37, display:{Name:'{"text":"","color":"green","italic":false}'}}
item replace entity @s enderchest.25 with carrot_on_a_stick{page: 101, selection: 25, cosmeticItem: 1b, CustomModelData:37, display:{Name:'{"text":"","color":"green","italic":false}'}}


# fill container
item replace entity @s enderchest.13 with carrot_on_a_stick{page: 101, selection: 13, cosmeticItem: 1b, CustomModelData:33, display:{Name:'{"translate":"lobby.cosmetic_selector.buy.purchase","color":"#96FF96","italic":false}'}}
item replace entity @s enderchest.15 with carrot_on_a_stick{page: 101, selection: 15, cosmeticItem: 1b, CustomModelData:34, display:{Name:'{"translate":"lobby.cosmetic_selector.buy.cancel","color":"#F76565","italic":false}'}}


# item
## particle 17 - white ash
execute if score @s temp_store.cosmetic_selector.buy_hat matches 17 run item replace entity @s enderchest.11 with carrot_on_a_stick{page: 101, selection: 2, cosmeticItem: 1b, CustomModelData:917, display:{Name:'{"translate":"lobby.cosmetic_selector.hats.17","italic":false}',Lore:['{"translate":"lobby.cosmetic_selector.hats.17.bio","italic":false,"color":"gray"}','{"text":""}','{"translate":"lobby.cosmetic_selector.hats.17.cost","italic":false,"color":"#CC692C"}']}}

## particle 18 - warped spore
execute if score @s temp_store.cosmetic_selector.buy_hat matches 18 run item replace entity @s enderchest.11 with carrot_on_a_stick{page: 101, selection: 3, cosmeticItem: 1b, CustomModelData:918, display:{Name:'{"translate":"lobby.cosmetic_selector.hats.18","italic":false}',Lore:['{"translate":"lobby.cosmetic_selector.hats.18.bio","italic":false,"color":"gray"}','{"text":""}','{"translate":"lobby.cosmetic_selector.hats.18.cost","italic":false,"color":"#CC692C"}']}}

## particle 19 - crimson spore
execute if score @s temp_store.cosmetic_selector.buy_hat matches 19 run item replace entity @s enderchest.11 with carrot_on_a_stick{page: 101, selection: 4, cosmeticItem: 1b, CustomModelData:919, display:{Name:'{"translate":"lobby.cosmetic_selector.hats.19","italic":false}',Lore:['{"translate":"lobby.cosmetic_selector.hats.19.bio","italic":false,"color":"gray"}','{"text":""}','{"translate":"lobby.cosmetic_selector.hats.19.cost","italic":false,"color":"#CC692C"}']}}

## particle 20 - falling cherry leaves
execute if score @s temp_store.cosmetic_selector.buy_hat matches 20 run item replace entity @s enderchest.11 with carrot_on_a_stick{page: 101, selection: 5, cosmeticItem: 1b, CustomModelData:920, display:{Name:'{"translate":"lobby.cosmetic_selector.hats.20","italic":false}',Lore:['{"translate":"lobby.cosmetic_selector.hats.20.bio","italic":false,"color":"gray"}','{"text":""}','{"translate":"lobby.cosmetic_selector.hats.20.cost","italic":false,"color":"#CC692C"}']}}

## particle 21 - spore blossom
execute if score @s temp_store.cosmetic_selector.buy_hat matches 21 run item replace entity @s enderchest.11 with carrot_on_a_stick{page: 101, selection: 6, cosmeticItem: 1b, CustomModelData:921, display:{Name:'{"translate":"lobby.cosmetic_selector.hats.21","italic":false}',Lore:['{"translate":"lobby.cosmetic_selector.hats.21.bio","italic":false,"color":"gray"}','{"text":""}','{"translate":"lobby.cosmetic_selector.hats.21.cost","italic":false,"color":"#CC692C"}']}}

## particle 22 - obsidian tear
execute if score @s temp_store.cosmetic_selector.buy_hat matches 22 run item replace entity @s enderchest.11 with carrot_on_a_stick{page: 101, selection: 7, cosmeticItem: 1b, CustomModelData:922, display:{Name:'{"translate":"lobby.cosmetic_selector.hats.22","italic":false}',Lore:['{"translate":"lobby.cosmetic_selector.hats.22.bio","italic":false,"color":"gray"}','{"text":""}','{"translate":"lobby.cosmetic_selector.hats.22.cost","italic":false,"color":"#CC692C"}']}}

## particle 23 - mycelium
execute if score @s temp_store.cosmetic_selector.buy_hat matches 23 run item replace entity @s enderchest.11 with carrot_on_a_stick{page: 101, selection: 11, cosmeticItem: 1b, CustomModelData:923, display:{Name:'{"translate":"lobby.cosmetic_selector.hats.23","italic":false}',Lore:['{"translate":"lobby.cosmetic_selector.hats.23.bio","italic":false,"color":"gray"}','{"text":""}','{"translate":"lobby.cosmetic_selector.hats.23.cost","italic":false,"color":"#CC692C"}']}}

## particle 24 - rain
execute if score @s temp_store.cosmetic_selector.buy_hat matches 24 run item replace entity @s enderchest.11 with carrot_on_a_stick{page: 101, selection: 12, cosmeticItem: 1b, CustomModelData:924, display:{Name:'{"translate":"lobby.cosmetic_selector.hats.24","italic":false}',Lore:['{"translate":"lobby.cosmetic_selector.hats.24.bio","italic":false,"color":"gray"}','{"text":""}','{"translate":"lobby.cosmetic_selector.hats.24.cost","italic":false,"color":"#CC692C"}']}}

## particle 25 - enchant
execute if score @s temp_store.cosmetic_selector.buy_hat matches 25 run item replace entity @s enderchest.11 with carrot_on_a_stick{page: 101, selection: 13, cosmeticItem: 1b, CustomModelData:925, display:{Name:'{"translate":"lobby.cosmetic_selector.hats.25","italic":false}',Lore:['{"translate":"lobby.cosmetic_selector.hats.25.bio","italic":false,"color":"gray","font":"alt"}','{"text":""}','{"translate":"lobby.cosmetic_selector.hats.25.cost","italic":false,"color":"#CC692C"}']}}

## particle 26 - sculk charge pop
execute if score @s temp_store.cosmetic_selector.buy_hat matches 26 run item replace entity @s enderchest.11 with carrot_on_a_stick{page: 101, selection: 14, cosmeticItem: 1b, CustomModelData:926, display:{Name:'{"translate":"lobby.cosmetic_selector.hats.26","italic":false}',Lore:['{"translate":"lobby.cosmetic_selector.hats.26.bio","italic":false,"color":"gray"}','{"text":""}','{"translate":"lobby.cosmetic_selector.hats.26.cost","italic":false,"color":"#CC692C"}']}}