# LASERTAG map selector
## hats page 0


item replace entity @s enderchest.0 with carrot_on_a_stick{page: 80, selection: 0, cosmeticItem: 1b, CustomModelData:52, display:{Name:'{"text":"","color":"gray","italic":false}'}}
item replace entity @s enderchest.1 with carrot_on_a_stick{page: 80, selection: 1, cosmeticItem: 1b, CustomModelData:7, display:{Name:'{"text":"","color":"green","italic":false}'}}
item replace entity @s enderchest.8 with carrot_on_a_stick{page: 80, selection: 8, cosmeticItem: 1b, CustomModelData:35, display:{Name:'{"translate":"action.back","color":"gray","italic":false}'}}
item replace entity @s enderchest.9 with carrot_on_a_stick{page: 80, selection: 9, cosmeticItem: 1b, CustomModelData:46, display:{Name:'{"translate":"lobby.cosmetic_selector.home.help","color":"#EBD779","italic":false}',Lore:['{"translate":"lobby.cosmetic_selector.home.help.bio.0","italic":false,"color":"gray"}','{"translate":"lobby.cosmetic_selector.home.help.bio.1","italic":false,"color":"gray"}']}}
item replace entity @s enderchest.10 with carrot_on_a_stick{page: 80, selection: 10, cosmeticItem: 1b, CustomModelData:7, display:{Name:'{"text":"","color":"green","italic":false}'}}
item replace entity @s enderchest.17 with carrot_on_a_stick{page: 80, selection: 17, cosmeticItem: 1b, CustomModelData:7, display:{Name:'{"text":"","color":"green","italic":false}'}}
item replace entity @s enderchest.18 with carrot_on_a_stick{page: 80, selection: 18, cosmeticItem: 1b, CustomModelData:39, display:{Name:'{"text":"","color":"green","italic":false}'}}
item replace entity @s enderchest.19 with carrot_on_a_stick{page: 80, selection: 19, cosmeticItem: 1b, CustomModelData:7, display:{Name:'{"text":"","color":"green","italic":false}'}}
item replace entity @s enderchest.26 with carrot_on_a_stick{page: 80, selection: 26, cosmeticItem: 1b, CustomModelData:7, display:{Name:'{"text":"","color":"green","italic":false}'}}


# fill container

## particle -1 - none
execute if score @s cosmetic.hat matches 0.. run item replace entity @s enderchest.2 with carrot_on_a_stick{page: 80, selection: 2, cosmeticItem: 1b, CustomModelData:11, display:{Name:'{"translate":"lobby.cosmetic_selector.hats.-1","italic":false}'}}
execute unless score @s cosmetic.hat matches 0.. run item replace entity @s enderchest.2 with carrot_on_a_stick{page: 80, selection: 2, cosmeticItem: 1b, CustomModelData:489, display:{Name:'{"translate":"lobby.cosmetic_selector.hats.-1","italic":false}',Lore:['{"text":""}','{"translate":"lobby.cosmetic_selector.item.selected","italic":false,"color":"#96FF96"}']}}

## particle 0 - anger
execute unless score @s cosmetic.hat.0 matches 1 unless score @s cosmetic.hat matches 0 run item replace entity @s enderchest.3 with carrot_on_a_stick{page: 80, selection: 3, cosmeticItem: 1b, CustomModelData:800, display:{Name:'{"translate":"lobby.cosmetic_selector.hats.0","italic":false}',Lore:['{"translate":"lobby.cosmetic_selector.hats.0.bio","italic":false,"color":"gray"}','{"text":""}','{"translate":"lobby.cosmetic_selector.hats.0.cost","italic":false,"color":"#CC692C"}']}}
execute if score @s cosmetic.hat.0 matches 1 unless score @s cosmetic.hat matches 0 run item replace entity @s enderchest.3 with carrot_on_a_stick{page: 80, selection: 3, cosmeticItem: 1b, CustomModelData:900, display:{Name:'{"translate":"lobby.cosmetic_selector.hats.0","italic":false}',Lore:['{"translate":"lobby.cosmetic_selector.hats.0.bio","italic":false,"color":"gray"}','{"text":""}','{"translate":"lobby.cosmetic_selector.item.bought","italic":false,"color":"#96FF96"}']}}
execute if score @s cosmetic.hat matches 0 run item replace entity @s enderchest.3 with carrot_on_a_stick{page: 80, selection: 3, cosmeticItem: 1b, CustomModelData:1000, display:{Name:'{"translate":"lobby.cosmetic_selector.hats.0","italic":false}',Lore:['{"translate":"lobby.cosmetic_selector.hats.0.bio","italic":false,"color":"gray"}','{"text":""}','{"translate":"lobby.cosmetic_selector.item.selected","italic":false,"color":"#96FF96"}']}}

## particle 1 - hearts
execute unless score @s cosmetic.hat.1 matches 1 unless score @s cosmetic.hat matches 1 run item replace entity @s enderchest.4 with carrot_on_a_stick{page: 80, selection: 4, cosmeticItem: 1b, CustomModelData:801, display:{Name:'{"translate":"lobby.cosmetic_selector.hats.1","italic":false}',Lore:['{"translate":"lobby.cosmetic_selector.hats.1.bio","italic":false,"color":"gray"}','{"text":""}','{"translate":"lobby.cosmetic_selector.hats.1.cost","italic":false,"color":"#CC692C"}']}}
execute if score @s cosmetic.hat.1 matches 1 unless score @s cosmetic.hat matches 1 run item replace entity @s enderchest.4 with carrot_on_a_stick{page: 80, selection: 4, cosmeticItem: 1b, CustomModelData:901, display:{Name:'{"translate":"lobby.cosmetic_selector.hats.1","italic":false}',Lore:['{"translate":"lobby.cosmetic_selector.hats.1.bio","italic":false,"color":"gray"}','{"text":""}','{"translate":"lobby.cosmetic_selector.item.bought","italic":false,"color":"#96FF96"}']}}
execute if score @s cosmetic.hat matches 1 run item replace entity @s enderchest.4 with carrot_on_a_stick{page: 80, selection: 4, cosmeticItem: 1b, CustomModelData:1001, display:{Name:'{"translate":"lobby.cosmetic_selector.hats.1","italic":false}',Lore:['{"translate":"lobby.cosmetic_selector.hats.1.bio","italic":false,"color":"gray"}','{"text":""}','{"translate":"lobby.cosmetic_selector.item.selected","italic":false,"color":"#96FF96"}']}}

## particle 2 - withered hearts
execute unless score @s cosmetic.hat.2 matches 1 unless score @s cosmetic.hat matches 2 run item replace entity @s enderchest.5 with carrot_on_a_stick{page: 80, selection: 5, cosmeticItem: 1b, CustomModelData:802, display:{Name:'{"translate":"lobby.cosmetic_selector.hats.2","italic":false}',Lore:['{"translate":"lobby.cosmetic_selector.hats.2.bio","italic":false,"color":"gray"}','{"text":""}','{"translate":"lobby.cosmetic_selector.hats.2.cost","italic":false,"color":"#CC692C"}']}}
execute if score @s cosmetic.hat.2 matches 1 unless score @s cosmetic.hat matches 2 run item replace entity @s enderchest.5 with carrot_on_a_stick{page: 80, selection: 5, cosmeticItem: 1b, CustomModelData:902, display:{Name:'{"translate":"lobby.cosmetic_selector.hats.2","italic":false}',Lore:['{"translate":"lobby.cosmetic_selector.hats.2.bio","italic":false,"color":"gray"}','{"text":""}','{"translate":"lobby.cosmetic_selector.item.bought","italic":false,"color":"#96FF96"}']}}
execute if score @s cosmetic.hat matches 2 run item replace entity @s enderchest.5 with carrot_on_a_stick{page: 80, selection: 5, cosmeticItem: 1b, CustomModelData:1002, display:{Name:'{"translate":"lobby.cosmetic_selector.hats.2","italic":false}',Lore:['{"translate":"lobby.cosmetic_selector.hats.2.bio","italic":false,"color":"gray"}','{"text":""}','{"translate":"lobby.cosmetic_selector.item.selected","italic":false,"color":"#96FF96"}']}}

## particle 3 - witch
execute unless score @s cosmetic.hat.3 matches 1 unless score @s cosmetic.hat matches 3 run item replace entity @s enderchest.6 with carrot_on_a_stick{page: 80, selection: 6, cosmeticItem: 1b, CustomModelData:803, display:{Name:'{"translate":"lobby.cosmetic_selector.hats.3","italic":false}',Lore:['{"translate":"lobby.cosmetic_selector.hats.3.bio","italic":false,"color":"gray"}','{"text":""}','{"translate":"lobby.cosmetic_selector.hats.3.cost","italic":false,"color":"#CC692C"}']}}
execute if score @s cosmetic.hat.3 matches 1 unless score @s cosmetic.hat matches 3 run item replace entity @s enderchest.6 with carrot_on_a_stick{page: 80, selection: 6, cosmeticItem: 1b, CustomModelData:903, display:{Name:'{"translate":"lobby.cosmetic_selector.hats.3","italic":false}',Lore:['{"translate":"lobby.cosmetic_selector.hats.3.bio","italic":false,"color":"gray"}','{"text":""}','{"translate":"lobby.cosmetic_selector.item.bought","italic":false,"color":"#96FF96"}']}}
execute if score @s cosmetic.hat matches 3 run item replace entity @s enderchest.6 with carrot_on_a_stick{page: 80, selection: 6, cosmeticItem: 1b, CustomModelData:1003, display:{Name:'{"translate":"lobby.cosmetic_selector.hats.3","italic":false}',Lore:['{"translate":"lobby.cosmetic_selector.hats.3.bio","italic":false,"color":"gray"}','{"text":""}','{"translate":"lobby.cosmetic_selector.item.selected","italic":false,"color":"#96FF96"}']}}

## particle 4 - dragon breath
execute unless score @s cosmetic.hat.4 matches 1 unless score @s cosmetic.hat matches 4 run item replace entity @s enderchest.7 with carrot_on_a_stick{page: 80, selection: 7, cosmeticItem: 1b, CustomModelData:804, display:{Name:'{"translate":"lobby.cosmetic_selector.hats.4","italic":false}',Lore:['{"translate":"lobby.cosmetic_selector.hats.4.bio","italic":false,"color":"gray"}','{"text":""}','{"translate":"lobby.cosmetic_selector.hats.4.cost","italic":false,"color":"#CC692C"}']}}
execute if score @s cosmetic.hat.4 matches 1 unless score @s cosmetic.hat matches 4 run item replace entity @s enderchest.7 with carrot_on_a_stick{page: 80, selection: 7, cosmeticItem: 1b, CustomModelData:904, display:{Name:'{"translate":"lobby.cosmetic_selector.hats.4","italic":false}',Lore:['{"translate":"lobby.cosmetic_selector.hats.4.bio","italic":false,"color":"gray"}','{"text":""}','{"translate":"lobby.cosmetic_selector.item.bought","italic":false,"color":"#96FF96"}']}}
execute if score @s cosmetic.hat matches 4 run item replace entity @s enderchest.7 with carrot_on_a_stick{page: 80, selection: 7, cosmeticItem: 1b, CustomModelData:1004, display:{Name:'{"translate":"lobby.cosmetic_selector.hats.4","italic":false}',Lore:['{"translate":"lobby.cosmetic_selector.hats.4.bio","italic":false,"color":"gray"}','{"text":""}','{"translate":"lobby.cosmetic_selector.item.selected","italic":false,"color":"#96FF96"}']}}

## particle 5 - soul
execute unless score @s cosmetic.hat.5 matches 1 unless score @s cosmetic.hat matches 5 run item replace entity @s enderchest.11 with carrot_on_a_stick{page: 80, selection: 11, cosmeticItem: 1b, CustomModelData:805, display:{Name:'{"translate":"lobby.cosmetic_selector.hats.5","italic":false}',Lore:['{"translate":"lobby.cosmetic_selector.hats.5.bio","italic":false,"color":"gray"}','{"text":""}','{"translate":"lobby.cosmetic_selector.hats.5.cost","italic":false,"color":"#CC692C"}']}}
execute if score @s cosmetic.hat.5 matches 1 unless score @s cosmetic.hat matches 5 run item replace entity @s enderchest.11 with carrot_on_a_stick{page: 80, selection: 11, cosmeticItem: 1b, CustomModelData:905, display:{Name:'{"translate":"lobby.cosmetic_selector.hats.5","italic":false}',Lore:['{"translate":"lobby.cosmetic_selector.hats.5.bio","italic":false,"color":"gray"}','{"text":""}','{"translate":"lobby.cosmetic_selector.item.bought","italic":false,"color":"#96FF96"}']}}
execute if score @s cosmetic.hat matches 5 run item replace entity @s enderchest.11 with carrot_on_a_stick{page: 80, selection: 11, cosmeticItem: 1b, CustomModelData:1005, display:{Name:'{"translate":"lobby.cosmetic_selector.hats.5","italic":false}',Lore:['{"translate":"lobby.cosmetic_selector.hats.5.bio","italic":false,"color":"gray"}','{"text":""}','{"translate":"lobby.cosmetic_selector.item.selected","italic":false,"color":"#96FF96"}']}}

## particle 6 - sculk soul
execute unless score @s cosmetic.hat.6 matches 1 unless score @s cosmetic.hat matches 6 run item replace entity @s enderchest.12 with carrot_on_a_stick{page: 80, selection: 12, cosmeticItem: 1b, CustomModelData:806, display:{Name:'{"translate":"lobby.cosmetic_selector.hats.6","italic":false}',Lore:['{"translate":"lobby.cosmetic_selector.hats.6.bio","italic":false,"color":"gray"}','{"text":""}','{"translate":"lobby.cosmetic_selector.hats.6.cost","italic":false,"color":"#CC692C"}']}}
execute if score @s cosmetic.hat.6 matches 1 unless score @s cosmetic.hat matches 6 run item replace entity @s enderchest.12 with carrot_on_a_stick{page: 80, selection: 12, cosmeticItem: 1b, CustomModelData:906, display:{Name:'{"translate":"lobby.cosmetic_selector.hats.6","italic":false}',Lore:['{"translate":"lobby.cosmetic_selector.hats.6.bio","italic":false,"color":"gray"}','{"text":""}','{"translate":"lobby.cosmetic_selector.item.bought","italic":false,"color":"#96FF96"}']}}
execute if score @s cosmetic.hat matches 6 run item replace entity @s enderchest.12 with carrot_on_a_stick{page: 80, selection: 12, cosmeticItem: 1b, CustomModelData:1006, display:{Name:'{"translate":"lobby.cosmetic_selector.hats.6","italic":false}',Lore:['{"translate":"lobby.cosmetic_selector.hats.6.bio","italic":false,"color":"gray"}','{"text":""}','{"translate":"lobby.cosmetic_selector.item.selected","italic":false,"color":"#96FF96"}']}}

## particle 7 - flame
execute unless score @s cosmetic.hat.7 matches 1 unless score @s cosmetic.hat matches 7 run item replace entity @s enderchest.13 with carrot_on_a_stick{page: 80, selection: 13, cosmeticItem: 1b, CustomModelData:807, display:{Name:'{"translate":"lobby.cosmetic_selector.hats.7","italic":false}',Lore:['{"translate":"lobby.cosmetic_selector.hats.7.bio","italic":false,"color":"gray"}','{"text":""}','{"translate":"lobby.cosmetic_selector.hats.7.cost","italic":false,"color":"#CC692C"}']}}
execute if score @s cosmetic.hat.7 matches 1 unless score @s cosmetic.hat matches 7 run item replace entity @s enderchest.13 with carrot_on_a_stick{page: 80, selection: 13, cosmeticItem: 1b, CustomModelData:907, display:{Name:'{"translate":"lobby.cosmetic_selector.hats.7","italic":false}',Lore:['{"translate":"lobby.cosmetic_selector.hats.7.bio","italic":false,"color":"gray"}','{"text":""}','{"translate":"lobby.cosmetic_selector.item.bought","italic":false,"color":"#96FF96"}']}}
execute if score @s cosmetic.hat matches 7 run item replace entity @s enderchest.13 with carrot_on_a_stick{page: 80, selection: 13, cosmeticItem: 1b, CustomModelData:1007, display:{Name:'{"translate":"lobby.cosmetic_selector.hats.7","italic":false}',Lore:['{"translate":"lobby.cosmetic_selector.hats.7.bio","italic":false,"color":"gray"}','{"text":""}','{"translate":"lobby.cosmetic_selector.item.selected","italic":false,"color":"#96FF96"}']}}

## particle 8 - soul flame
execute unless score @s cosmetic.hat.8 matches 1 unless score @s cosmetic.hat matches 8 run item replace entity @s enderchest.14 with carrot_on_a_stick{page: 80, selection: 14, cosmeticItem: 1b, CustomModelData:808, display:{Name:'{"translate":"lobby.cosmetic_selector.hats.8","italic":false}',Lore:['{"translate":"lobby.cosmetic_selector.hats.8.bio","italic":false,"color":"gray"}','{"text":""}','{"translate":"lobby.cosmetic_selector.hats.8.cost","italic":false,"color":"#CC692C"}']}}
execute if score @s cosmetic.hat.8 matches 1 unless score @s cosmetic.hat matches 8 run item replace entity @s enderchest.14 with carrot_on_a_stick{page: 80, selection: 14, cosmeticItem: 1b, CustomModelData:908, display:{Name:'{"translate":"lobby.cosmetic_selector.hats.8","italic":false}',Lore:['{"translate":"lobby.cosmetic_selector.hats.8.bio","italic":false,"color":"gray"}','{"text":""}','{"translate":"lobby.cosmetic_selector.item.bought","italic":false,"color":"#96FF96"}']}}
execute if score @s cosmetic.hat matches 8 run item replace entity @s enderchest.14 with carrot_on_a_stick{page: 80, selection: 14, cosmeticItem: 1b, CustomModelData:1008, display:{Name:'{"translate":"lobby.cosmetic_selector.hats.8","italic":false}',Lore:['{"translate":"lobby.cosmetic_selector.hats.8.bio","italic":false,"color":"gray"}','{"text":""}','{"translate":"lobby.cosmetic_selector.item.selected","italic":false,"color":"#96FF96"}']}}

## particle 9 - slime
execute unless score @s cosmetic.hat.9 matches 1 unless score @s cosmetic.hat matches 9 run item replace entity @s enderchest.15 with carrot_on_a_stick{page: 80, selection: 15, cosmeticItem: 1b, CustomModelData:809, display:{Name:'{"translate":"lobby.cosmetic_selector.hats.9","italic":false}',Lore:['{"translate":"lobby.cosmetic_selector.hats.9.bio","italic":false,"color":"gray"}','{"text":""}','{"translate":"lobby.cosmetic_selector.hats.9.cost","italic":false,"color":"#CC692C"}']}}
execute if score @s cosmetic.hat.9 matches 1 unless score @s cosmetic.hat matches 9 run item replace entity @s enderchest.15 with carrot_on_a_stick{page: 80, selection: 15, cosmeticItem: 1b, CustomModelData:909, display:{Name:'{"translate":"lobby.cosmetic_selector.hats.9","italic":false}',Lore:['{"translate":"lobby.cosmetic_selector.hats.9.bio","italic":false,"color":"gray"}','{"text":""}','{"translate":"lobby.cosmetic_selector.item.bought","italic":false,"color":"#96FF96"}']}}
execute if score @s cosmetic.hat matches 9 run item replace entity @s enderchest.15 with carrot_on_a_stick{page: 80, selection: 15, cosmeticItem: 1b, CustomModelData:1009, display:{Name:'{"translate":"lobby.cosmetic_selector.hats.9","italic":false}',Lore:['{"translate":"lobby.cosmetic_selector.hats.9.bio","italic":false,"color":"gray"}','{"text":""}','{"translate":"lobby.cosmetic_selector.item.selected","italic":false,"color":"#96FF96"}']}}

## particle 10 - snowball
execute unless score @s cosmetic.hat.10 matches 1 unless score @s cosmetic.hat matches 10 run item replace entity @s enderchest.16 with carrot_on_a_stick{page: 80, selection: 16, cosmeticItem: 1b, CustomModelData:810, display:{Name:'{"translate":"lobby.cosmetic_selector.hats.10","italic":false}',Lore:['{"translate":"lobby.cosmetic_selector.hats.10.bio","italic":false,"color":"gray"}','{"text":""}','{"translate":"lobby.cosmetic_selector.hats.10.cost","italic":false,"color":"#CC692C"}']}}
execute if score @s cosmetic.hat.10 matches 1 unless score @s cosmetic.hat matches 10 run item replace entity @s enderchest.16 with carrot_on_a_stick{page: 80, selection: 16, cosmeticItem: 1b, CustomModelData:910, display:{Name:'{"translate":"lobby.cosmetic_selector.hats.10","italic":false}',Lore:['{"translate":"lobby.cosmetic_selector.hats.10.bio","italic":false,"color":"gray"}','{"text":""}','{"translate":"lobby.cosmetic_selector.item.bought","italic":false,"color":"#96FF96"}']}}
execute if score @s cosmetic.hat matches 10 run item replace entity @s enderchest.16 with carrot_on_a_stick{page: 80, selection: 16, cosmeticItem: 1b, CustomModelData:1010, display:{Name:'{"translate":"lobby.cosmetic_selector.hats.10","italic":false}',Lore:['{"translate":"lobby.cosmetic_selector.hats.10.bio","italic":false,"color":"gray"}','{"text":""}','{"translate":"lobby.cosmetic_selector.item.selected","italic":false,"color":"#96FF96"}']}}

## particle 11 - sonic boom
execute unless score @s cosmetic.hat.11 matches 1 unless score @s cosmetic.hat matches 11 run item replace entity @s enderchest.20 with carrot_on_a_stick{page: 80, selection: 20, cosmeticItem: 1b, CustomModelData:811, display:{Name:'{"translate":"lobby.cosmetic_selector.hats.11","italic":false}',Lore:['{"translate":"lobby.cosmetic_selector.hats.11.bio","italic":false,"color":"gray"}','{"text":""}','{"translate":"lobby.cosmetic_selector.hats.11.cost","italic":false,"color":"#CC692C"}']}}
execute if score @s cosmetic.hat.11 matches 1 unless score @s cosmetic.hat matches 11 run item replace entity @s enderchest.20 with carrot_on_a_stick{page: 80, selection: 20, cosmeticItem: 1b, CustomModelData:911, display:{Name:'{"translate":"lobby.cosmetic_selector.hats.11","italic":false}',Lore:['{"translate":"lobby.cosmetic_selector.hats.11.bio","italic":false,"color":"gray"}','{"text":""}','{"translate":"lobby.cosmetic_selector.item.bought","italic":false,"color":"#96FF96"}']}}
execute if score @s cosmetic.hat matches 11 run item replace entity @s enderchest.20 with carrot_on_a_stick{page: 80, selection: 20, cosmeticItem: 1b, CustomModelData:1011, display:{Name:'{"translate":"lobby.cosmetic_selector.hats.11","italic":false}',Lore:['{"translate":"lobby.cosmetic_selector.hats.11.bio","italic":false,"color":"gray"}','{"text":""}','{"translate":"lobby.cosmetic_selector.item.selected","italic":false,"color":"#96FF96"}']}}

## particle 12 - glow
execute unless score @s cosmetic.hat.12 matches 1 unless score @s cosmetic.hat matches 12 run item replace entity @s enderchest.21 with carrot_on_a_stick{page: 80, selection: 21, cosmeticItem: 1b, CustomModelData:812, display:{Name:'{"translate":"lobby.cosmetic_selector.hats.12","italic":false}',Lore:['{"translate":"lobby.cosmetic_selector.hats.12.bio","italic":false,"color":"gray"}','{"text":""}','{"translate":"lobby.cosmetic_selector.hats.12.cost","italic":false,"color":"#CC692C"}']}}
execute if score @s cosmetic.hat.12 matches 1 unless score @s cosmetic.hat matches 12 run item replace entity @s enderchest.21 with carrot_on_a_stick{page: 80, selection: 21, cosmeticItem: 1b, CustomModelData:912, display:{Name:'{"translate":"lobby.cosmetic_selector.hats.12","italic":false}',Lore:['{"translate":"lobby.cosmetic_selector.hats.12.bio","italic":false,"color":"gray"}','{"text":""}','{"translate":"lobby.cosmetic_selector.item.bought","italic":false,"color":"#96FF96"}']}}
execute if score @s cosmetic.hat matches 12 run item replace entity @s enderchest.21 with carrot_on_a_stick{page: 80, selection: 21, cosmeticItem: 1b, CustomModelData:1012, display:{Name:'{"translate":"lobby.cosmetic_selector.hats.12","italic":false}',Lore:['{"translate":"lobby.cosmetic_selector.hats.12.bio","italic":false,"color":"gray"}','{"text":""}','{"translate":"lobby.cosmetic_selector.item.selected","italic":false,"color":"#96FF96"}']}}

## particle 13 - end rod
execute unless score @s cosmetic.hat.13 matches 1 unless score @s cosmetic.hat matches 13 run item replace entity @s enderchest.22 with carrot_on_a_stick{page: 80, selection: 22, cosmeticItem: 1b, CustomModelData:813, display:{Name:'{"translate":"lobby.cosmetic_selector.hats.13","italic":false}',Lore:['{"translate":"lobby.cosmetic_selector.hats.13.bio","italic":false,"color":"gray"}','{"text":""}','{"translate":"lobby.cosmetic_selector.hats.13.cost","italic":false,"color":"#CC692C"}']}}
execute if score @s cosmetic.hat.13 matches 1 unless score @s cosmetic.hat matches 13 run item replace entity @s enderchest.22 with carrot_on_a_stick{page: 80, selection: 22, cosmeticItem: 1b, CustomModelData:913, display:{Name:'{"translate":"lobby.cosmetic_selector.hats.13","italic":false}',Lore:['{"translate":"lobby.cosmetic_selector.hats.13.bio","italic":false,"color":"gray"}','{"text":""}','{"translate":"lobby.cosmetic_selector.item.bought","italic":false,"color":"#96FF96"}']}}
execute if score @s cosmetic.hat matches 13 run item replace entity @s enderchest.22 with carrot_on_a_stick{page: 80, selection: 22, cosmeticItem: 1b, CustomModelData:1013, display:{Name:'{"translate":"lobby.cosmetic_selector.hats.13","italic":false}',Lore:['{"translate":"lobby.cosmetic_selector.hats.13.bio","italic":false,"color":"gray"}','{"text":""}','{"translate":"lobby.cosmetic_selector.item.selected","italic":false,"color":"#96FF96"}']}}

## particle 14 - electric spark
execute unless score @s cosmetic.hat.14 matches 1 unless score @s cosmetic.hat matches 14 run item replace entity @s enderchest.23 with carrot_on_a_stick{page: 80, selection: 23, cosmeticItem: 1b, CustomModelData:814, display:{Name:'{"translate":"lobby.cosmetic_selector.hats.14","italic":false}',Lore:['{"translate":"lobby.cosmetic_selector.hats.14.bio","italic":false,"color":"gray"}','{"text":""}','{"translate":"lobby.cosmetic_selector.hats.14.cost","italic":false,"color":"#CC692C"}']}}
execute if score @s cosmetic.hat.14 matches 1 unless score @s cosmetic.hat matches 14 run item replace entity @s enderchest.23 with carrot_on_a_stick{page: 80, selection: 23, cosmeticItem: 1b, CustomModelData:914, display:{Name:'{"translate":"lobby.cosmetic_selector.hats.14","italic":false}',Lore:['{"translate":"lobby.cosmetic_selector.hats.14.bio","italic":false,"color":"gray"}','{"text":""}','{"translate":"lobby.cosmetic_selector.item.bought","italic":false,"color":"#96FF96"}']}}
execute if score @s cosmetic.hat matches 14 run item replace entity @s enderchest.23 with carrot_on_a_stick{page: 80, selection: 23, cosmeticItem: 1b, CustomModelData:1014, display:{Name:'{"translate":"lobby.cosmetic_selector.hats.14","italic":false}',Lore:['{"translate":"lobby.cosmetic_selector.hats.14.bio","italic":false,"color":"gray"}','{"text":""}','{"translate":"lobby.cosmetic_selector.item.selected","italic":false,"color":"#96FF96"}']}}

## particle 15 - composter
execute unless score @s cosmetic.hat.15 matches 1 unless score @s cosmetic.hat matches 15 run item replace entity @s enderchest.24 with carrot_on_a_stick{page: 80, selection: 24, cosmeticItem: 1b, CustomModelData:815, display:{Name:'{"translate":"lobby.cosmetic_selector.hats.15","italic":false}',Lore:['{"translate":"lobby.cosmetic_selector.hats.15.bio","italic":false,"color":"gray"}','{"text":""}','{"translate":"lobby.cosmetic_selector.hats.15.cost","italic":false,"color":"#CC692C"}']}}
execute if score @s cosmetic.hat.15 matches 1 unless score @s cosmetic.hat matches 15 run item replace entity @s enderchest.24 with carrot_on_a_stick{page: 80, selection: 24, cosmeticItem: 1b, CustomModelData:915, display:{Name:'{"translate":"lobby.cosmetic_selector.hats.15","italic":false}',Lore:['{"translate":"lobby.cosmetic_selector.hats.15.bio","italic":false,"color":"gray"}','{"text":""}','{"translate":"lobby.cosmetic_selector.item.bought","italic":false,"color":"#96FF96"}']}}
execute if score @s cosmetic.hat matches 15 run item replace entity @s enderchest.24 with carrot_on_a_stick{page: 80, selection: 24, cosmeticItem: 1b, CustomModelData:1015, display:{Name:'{"translate":"lobby.cosmetic_selector.hats.15","italic":false}',Lore:['{"translate":"lobby.cosmetic_selector.hats.15.bio","italic":false,"color":"gray"}','{"text":""}','{"translate":"lobby.cosmetic_selector.item.selected","italic":false,"color":"#96FF96"}']}}

## particle 16 - ash
execute unless score @s cosmetic.hat.16 matches 1 unless score @s cosmetic.hat matches 16 run item replace entity @s enderchest.25 with carrot_on_a_stick{page: 80, selection: 25, cosmeticItem: 1b, CustomModelData:816, display:{Name:'{"translate":"lobby.cosmetic_selector.hats.16","italic":false}',Lore:['{"translate":"lobby.cosmetic_selector.hats.16.bio","italic":false,"color":"#E889D6"}','{"text":""}','{"translate":"lobby.cosmetic_selector.hats.16.cost","italic":false,"color":"#A8B5B5"}']}}
execute if score @s cosmetic.hat.16 matches 1 unless score @s cosmetic.hat matches 16 run item replace entity @s enderchest.25 with carrot_on_a_stick{page: 80, selection: 25, cosmeticItem: 1b, CustomModelData:916, display:{Name:'{"translate":"lobby.cosmetic_selector.hats.16","italic":false}',Lore:['{"translate":"lobby.cosmetic_selector.hats.16.bio","italic":false,"color":"#E889D6"}','{"text":""}','{"translate":"lobby.cosmetic_selector.item.bought","italic":false,"color":"#96FF96"}']}}
execute if score @s cosmetic.hat matches 16 run item replace entity @s enderchest.25 with carrot_on_a_stick{page: 80, selection: 25, cosmeticItem: 1b, CustomModelData:1016, display:{Name:'{"translate":"lobby.cosmetic_selector.hats.16","italic":false}',Lore:['{"translate":"lobby.cosmetic_selector.hats.16.bio","italic":false,"color":"#E889D6"}','{"text":""}','{"translate":"lobby.cosmetic_selector.item.selected","italic":false,"color":"#96FF96"}']}}