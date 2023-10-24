# LASERTAG map selector
## trails page 0


item replace entity @s enderchest.0 with carrot_on_a_stick{page: 50, selection: 0, cosmeticItem: 1b, CustomModelData:44, display:{Name:'{"text":"","color":"gray","italic":false}'}}
item replace entity @s enderchest.1 with carrot_on_a_stick{page: 50, selection: 1, cosmeticItem: 1b, CustomModelData:45, display:{Name:'{"text":"","color":"green","italic":false}'}}
item replace entity @s enderchest.8 with carrot_on_a_stick{page: 50, selection: 8, cosmeticItem: 1b, CustomModelData:35, display:{Name:'{"translate":"action.back","color":"gray","italic":false}'}}
item replace entity @s enderchest.9 with carrot_on_a_stick{page: 50, selection: 9, cosmeticItem: 1b, CustomModelData:46, display:{Name:'{"translate":"lobby.cosmetic_selector.home.help","color":"#EBD779","italic":false}',Lore:['{"translate":"lobby.cosmetic_selector.home.help.bio.0","italic":false,"color":"gray"}','{"translate":"lobby.cosmetic_selector.home.help.bio.1","italic":false,"color":"gray"}']}}
item replace entity @s enderchest.10 with carrot_on_a_stick{page: 50, selection: 10, cosmeticItem: 1b, CustomModelData:7, display:{Name:'{"text":"","color":"green","italic":false}'}}
item replace entity @s enderchest.17 with carrot_on_a_stick{page: 50, selection: 17, cosmeticItem: 1b, CustomModelData:7, display:{Name:'{"text":"","color":"green","italic":false}'}}
item replace entity @s enderchest.18 with carrot_on_a_stick{page: 50, selection: 18, cosmeticItem: 1b, CustomModelData:39, display:{Name:'{"text":"","color":"green","italic":false}'}}
item replace entity @s enderchest.19 with carrot_on_a_stick{page: 50, selection: 19, cosmeticItem: 1b, CustomModelData:7, display:{Name:'{"text":"","color":"green","italic":false}'}}
item replace entity @s enderchest.26 with carrot_on_a_stick{page: 50, selection: 26, cosmeticItem: 1b, CustomModelData:7, display:{Name:'{"text":"","color":"green","italic":false}'}}


# fill container

## particle -1 - none
execute if score @s cosmetic.arrow_trail matches 0.. run item replace entity @s enderchest.2 with carrot_on_a_stick{page: 50, selection: 2, cosmeticItem: 1b, CustomModelData:11, display:{Name:'{"translate":"lobby.cosmetic_selector.trails.-1","italic":false}'}}
execute unless score @s cosmetic.arrow_trail matches 0.. run item replace entity @s enderchest.2 with carrot_on_a_stick{page: 50, selection: 2, cosmeticItem: 1b, CustomModelData:489, display:{Name:'{"translate":"lobby.cosmetic_selector.trails.-1","italic":false}',Lore:['{"text":""}','{"translate":"lobby.cosmetic_selector.item.selected","italic":false,"color":"#96FF96"}']}}

## particle 0 - anger
execute unless score @s cosmetic.arrow_trail.0 matches 1 unless score @s cosmetic.arrow_trail matches 0 run item replace entity @s enderchest.3 with carrot_on_a_stick{page: 50, selection: 3, cosmeticItem: 1b, CustomModelData:500, display:{Name:'{"translate":"lobby.cosmetic_selector.trails.0","italic":false}',Lore:['{"translate":"lobby.cosmetic_selector.trails.0.bio","italic":false,"color":"gray"}','{"text":""}','{"translate":"lobby.cosmetic_selector.trails.0.cost","italic":false,"color":"#CC692C"}']}}
execute if score @s cosmetic.arrow_trail.0 matches 1 unless score @s cosmetic.arrow_trail matches 0 run item replace entity @s enderchest.3 with carrot_on_a_stick{page: 50, selection: 3, cosmeticItem: 1b, CustomModelData:600, display:{Name:'{"translate":"lobby.cosmetic_selector.trails.0","italic":false}',Lore:['{"translate":"lobby.cosmetic_selector.trails.0.bio","italic":false,"color":"gray"}','{"text":""}','{"translate":"lobby.cosmetic_selector.item.bought","italic":false,"color":"#96FF96"}']}}
execute if score @s cosmetic.arrow_trail matches 0 run item replace entity @s enderchest.3 with carrot_on_a_stick{page: 50, selection: 3, cosmeticItem: 1b, CustomModelData:700, display:{Name:'{"translate":"lobby.cosmetic_selector.trails.0","italic":false}',Lore:['{"translate":"lobby.cosmetic_selector.trails.0.bio","italic":false,"color":"gray"}','{"text":""}','{"translate":"lobby.cosmetic_selector.item.selected","italic":false,"color":"#96FF96"}']}}

## particle 1 - hearts
execute unless score @s cosmetic.arrow_trail.1 matches 1 unless score @s cosmetic.arrow_trail matches 1 run item replace entity @s enderchest.4 with carrot_on_a_stick{page: 50, selection: 4, cosmeticItem: 1b, CustomModelData:501, display:{Name:'{"translate":"lobby.cosmetic_selector.trails.1","italic":false}',Lore:['{"translate":"lobby.cosmetic_selector.trails.1.bio","italic":false,"color":"gray"}','{"text":""}','{"translate":"lobby.cosmetic_selector.trails.1.cost","italic":false,"color":"#A8B5B5"}']}}
execute if score @s cosmetic.arrow_trail.1 matches 1 unless score @s cosmetic.arrow_trail matches 1 run item replace entity @s enderchest.4 with carrot_on_a_stick{page: 50, selection: 4, cosmeticItem: 1b, CustomModelData:601, display:{Name:'{"translate":"lobby.cosmetic_selector.trails.1","italic":false}',Lore:['{"translate":"lobby.cosmetic_selector.trails.1.bio","italic":false,"color":"gray"}','{"text":""}','{"translate":"lobby.cosmetic_selector.item.bought","italic":false,"color":"#96FF96"}']}}
execute if score @s cosmetic.arrow_trail matches 1 run item replace entity @s enderchest.4 with carrot_on_a_stick{page: 50, selection: 4, cosmeticItem: 1b, CustomModelData:701, display:{Name:'{"translate":"lobby.cosmetic_selector.trails.1","italic":false}',Lore:['{"translate":"lobby.cosmetic_selector.trails.1.bio","italic":false,"color":"gray"}','{"text":""}','{"translate":"lobby.cosmetic_selector.item.selected","italic":false,"color":"#96FF96"}']}}

## particle 2 - withered hearts
execute unless score @s cosmetic.arrow_trail.2 matches 1 unless score @s cosmetic.arrow_trail matches 2 run item replace entity @s enderchest.5 with carrot_on_a_stick{page: 50, selection: 5, cosmeticItem: 1b, CustomModelData:502, display:{Name:'{"translate":"lobby.cosmetic_selector.trails.2","italic":false}',Lore:['{"translate":"lobby.cosmetic_selector.trails.2.bio","italic":false,"color":"gray"}','{"text":""}','{"translate":"lobby.cosmetic_selector.trails.2.cost","italic":false,"color":"#CC692C"}']}}
execute if score @s cosmetic.arrow_trail.2 matches 1 unless score @s cosmetic.arrow_trail matches 2 run item replace entity @s enderchest.5 with carrot_on_a_stick{page: 50, selection: 5, cosmeticItem: 1b, CustomModelData:602, display:{Name:'{"translate":"lobby.cosmetic_selector.trails.2","italic":false}',Lore:['{"translate":"lobby.cosmetic_selector.trails.2.bio","italic":false,"color":"gray"}','{"text":""}','{"translate":"lobby.cosmetic_selector.item.bought","italic":false,"color":"#96FF96"}']}}
execute if score @s cosmetic.arrow_trail matches 2 run item replace entity @s enderchest.5 with carrot_on_a_stick{page: 50, selection: 5, cosmeticItem: 1b, CustomModelData:702, display:{Name:'{"translate":"lobby.cosmetic_selector.trails.2","italic":false}',Lore:['{"translate":"lobby.cosmetic_selector.trails.2.bio","italic":false,"color":"gray"}','{"text":""}','{"translate":"lobby.cosmetic_selector.item.selected","italic":false,"color":"#96FF96"}']}}

## particle 3 - witch
execute unless score @s cosmetic.arrow_trail.3 matches 1 unless score @s cosmetic.arrow_trail matches 3 run item replace entity @s enderchest.6 with carrot_on_a_stick{page: 50, selection: 6, cosmeticItem: 1b, CustomModelData:503, display:{Name:'{"translate":"lobby.cosmetic_selector.trails.3","italic":false}',Lore:['{"translate":"lobby.cosmetic_selector.trails.3.bio","italic":false,"color":"gray"}','{"text":""}','{"translate":"lobby.cosmetic_selector.trails.3.cost","italic":false,"color":"#CC692C"}']}}
execute if score @s cosmetic.arrow_trail.3 matches 1 unless score @s cosmetic.arrow_trail matches 3 run item replace entity @s enderchest.6 with carrot_on_a_stick{page: 50, selection: 6, cosmeticItem: 1b, CustomModelData:603, display:{Name:'{"translate":"lobby.cosmetic_selector.trails.3","italic":false}',Lore:['{"translate":"lobby.cosmetic_selector.trails.3.bio","italic":false,"color":"gray"}','{"text":""}','{"translate":"lobby.cosmetic_selector.item.bought","italic":false,"color":"#96FF96"}']}}
execute if score @s cosmetic.arrow_trail matches 3 run item replace entity @s enderchest.6 with carrot_on_a_stick{page: 50, selection: 6, cosmeticItem: 1b, CustomModelData:703, display:{Name:'{"translate":"lobby.cosmetic_selector.trails.3","italic":false}',Lore:['{"translate":"lobby.cosmetic_selector.trails.3.bio","italic":false,"color":"gray"}','{"text":""}','{"translate":"lobby.cosmetic_selector.item.selected","italic":false,"color":"#96FF96"}']}}

## particle 4 - dragon breath
execute unless score @s cosmetic.arrow_trail.4 matches 1 unless score @s cosmetic.arrow_trail matches 4 run item replace entity @s enderchest.7 with carrot_on_a_stick{page: 50, selection: 7, cosmeticItem: 1b, CustomModelData:504, display:{Name:'{"translate":"lobby.cosmetic_selector.trails.4","italic":false}',Lore:['{"translate":"lobby.cosmetic_selector.trails.4.bio","italic":false,"color":"gray"}','{"text":""}','{"translate":"lobby.cosmetic_selector.trails.4.cost","italic":false,"color":"#CC692C"}']}}
execute if score @s cosmetic.arrow_trail.4 matches 1 unless score @s cosmetic.arrow_trail matches 4 run item replace entity @s enderchest.7 with carrot_on_a_stick{page: 50, selection: 7, cosmeticItem: 1b, CustomModelData:604, display:{Name:'{"translate":"lobby.cosmetic_selector.trails.4","italic":false}',Lore:['{"translate":"lobby.cosmetic_selector.trails.4.bio","italic":false,"color":"gray"}','{"text":""}','{"translate":"lobby.cosmetic_selector.item.bought","italic":false,"color":"#96FF96"}']}}
execute if score @s cosmetic.arrow_trail matches 4 run item replace entity @s enderchest.7 with carrot_on_a_stick{page: 50, selection: 7, cosmeticItem: 1b, CustomModelData:704, display:{Name:'{"translate":"lobby.cosmetic_selector.trails.4","italic":false}',Lore:['{"translate":"lobby.cosmetic_selector.trails.4.bio","italic":false,"color":"gray"}','{"text":""}','{"translate":"lobby.cosmetic_selector.item.selected","italic":false,"color":"#96FF96"}']}}

## particle 5 - soul
execute unless score @s cosmetic.arrow_trail.5 matches 1 unless score @s cosmetic.arrow_trail matches 5 run item replace entity @s enderchest.11 with carrot_on_a_stick{page: 50, selection: 11, cosmeticItem: 1b, CustomModelData:505, display:{Name:'{"translate":"lobby.cosmetic_selector.trails.5","italic":false}',Lore:['{"translate":"lobby.cosmetic_selector.trails.5.bio","italic":false,"color":"gray"}','{"text":""}','{"translate":"lobby.cosmetic_selector.trails.5.cost","italic":false,"color":"#CC692C"}']}}
execute if score @s cosmetic.arrow_trail.5 matches 1 unless score @s cosmetic.arrow_trail matches 5 run item replace entity @s enderchest.11 with carrot_on_a_stick{page: 50, selection: 11, cosmeticItem: 1b, CustomModelData:605, display:{Name:'{"translate":"lobby.cosmetic_selector.trails.5","italic":false}',Lore:['{"translate":"lobby.cosmetic_selector.trails.5.bio","italic":false,"color":"gray"}','{"text":""}','{"translate":"lobby.cosmetic_selector.item.bought","italic":false,"color":"#96FF96"}']}}
execute if score @s cosmetic.arrow_trail matches 5 run item replace entity @s enderchest.11 with carrot_on_a_stick{page: 50, selection: 11, cosmeticItem: 1b, CustomModelData:705, display:{Name:'{"translate":"lobby.cosmetic_selector.trails.5","italic":false}',Lore:['{"translate":"lobby.cosmetic_selector.trails.5.bio","italic":false,"color":"gray"}','{"text":""}','{"translate":"lobby.cosmetic_selector.item.selected","italic":false,"color":"#96FF96"}']}}

## particle 6 - sculk soul
execute unless score @s cosmetic.arrow_trail.6 matches 1 unless score @s cosmetic.arrow_trail matches 6 run item replace entity @s enderchest.12 with carrot_on_a_stick{page: 50, selection: 12, cosmeticItem: 1b, CustomModelData:506, display:{Name:'{"translate":"lobby.cosmetic_selector.trails.6","italic":false}',Lore:['{"translate":"lobby.cosmetic_selector.trails.6.bio","italic":false,"color":"gray"}','{"text":""}','{"translate":"lobby.cosmetic_selector.trails.6.cost","italic":false,"color":"#CC692C"}']}}
execute if score @s cosmetic.arrow_trail.6 matches 1 unless score @s cosmetic.arrow_trail matches 6 run item replace entity @s enderchest.12 with carrot_on_a_stick{page: 50, selection: 12, cosmeticItem: 1b, CustomModelData:606, display:{Name:'{"translate":"lobby.cosmetic_selector.trails.6","italic":false}',Lore:['{"translate":"lobby.cosmetic_selector.trails.6.bio","italic":false,"color":"gray"}','{"text":""}','{"translate":"lobby.cosmetic_selector.item.bought","italic":false,"color":"#96FF96"}']}}
execute if score @s cosmetic.arrow_trail matches 6 run item replace entity @s enderchest.12 with carrot_on_a_stick{page: 50, selection: 12, cosmeticItem: 1b, CustomModelData:706, display:{Name:'{"translate":"lobby.cosmetic_selector.trails.6","italic":false}',Lore:['{"translate":"lobby.cosmetic_selector.trails.6.bio","italic":false,"color":"gray"}','{"text":""}','{"translate":"lobby.cosmetic_selector.item.selected","italic":false,"color":"#96FF96"}']}}

## particle 7 - flame
execute unless score @s cosmetic.arrow_trail.7 matches 1 unless score @s cosmetic.arrow_trail matches 7 run item replace entity @s enderchest.13 with carrot_on_a_stick{page: 50, selection: 13, cosmeticItem: 1b, CustomModelData:507, display:{Name:'{"translate":"lobby.cosmetic_selector.trails.7","italic":false}',Lore:['{"translate":"lobby.cosmetic_selector.trails.7.bio","italic":false,"color":"gray"}','{"text":""}','{"translate":"lobby.cosmetic_selector.trails.7.cost","italic":false,"color":"#CC692C"}']}}
execute if score @s cosmetic.arrow_trail.7 matches 1 unless score @s cosmetic.arrow_trail matches 7 run item replace entity @s enderchest.13 with carrot_on_a_stick{page: 50, selection: 13, cosmeticItem: 1b, CustomModelData:607, display:{Name:'{"translate":"lobby.cosmetic_selector.trails.7","italic":false}',Lore:['{"translate":"lobby.cosmetic_selector.trails.7.bio","italic":false,"color":"gray"}','{"text":""}','{"translate":"lobby.cosmetic_selector.item.bought","italic":false,"color":"#96FF96"}']}}
execute if score @s cosmetic.arrow_trail matches 7 run item replace entity @s enderchest.13 with carrot_on_a_stick{page: 50, selection: 13, cosmeticItem: 1b, CustomModelData:707, display:{Name:'{"translate":"lobby.cosmetic_selector.trails.7","italic":false}',Lore:['{"translate":"lobby.cosmetic_selector.trails.7.bio","italic":false,"color":"gray"}','{"text":""}','{"translate":"lobby.cosmetic_selector.item.selected","italic":false,"color":"#96FF96"}']}}

## particle 8 - soul flame
execute unless score @s cosmetic.arrow_trail.8 matches 1 unless score @s cosmetic.arrow_trail matches 8 run item replace entity @s enderchest.14 with carrot_on_a_stick{page: 50, selection: 14, cosmeticItem: 1b, CustomModelData:508, display:{Name:'{"translate":"lobby.cosmetic_selector.trails.8","italic":false}',Lore:['{"translate":"lobby.cosmetic_selector.trails.8.bio","italic":false,"color":"gray"}','{"text":""}','{"translate":"lobby.cosmetic_selector.trails.8.cost","italic":false,"color":"#CC692C"}']}}
execute if score @s cosmetic.arrow_trail.8 matches 1 unless score @s cosmetic.arrow_trail matches 8 run item replace entity @s enderchest.14 with carrot_on_a_stick{page: 50, selection: 14, cosmeticItem: 1b, CustomModelData:608, display:{Name:'{"translate":"lobby.cosmetic_selector.trails.8","italic":false}',Lore:['{"translate":"lobby.cosmetic_selector.trails.8.bio","italic":false,"color":"gray"}','{"text":""}','{"translate":"lobby.cosmetic_selector.item.bought","italic":false,"color":"#96FF96"}']}}
execute if score @s cosmetic.arrow_trail matches 8 run item replace entity @s enderchest.14 with carrot_on_a_stick{page: 50, selection: 14, cosmeticItem: 1b, CustomModelData:708, display:{Name:'{"translate":"lobby.cosmetic_selector.trails.8","italic":false}',Lore:['{"translate":"lobby.cosmetic_selector.trails.8.bio","italic":false,"color":"gray"}','{"text":""}','{"translate":"lobby.cosmetic_selector.item.selected","italic":false,"color":"#96FF96"}']}}

## particle 9 - slime
execute unless score @s cosmetic.arrow_trail.9 matches 1 unless score @s cosmetic.arrow_trail matches 9 run item replace entity @s enderchest.15 with carrot_on_a_stick{page: 50, selection: 15, cosmeticItem: 1b, CustomModelData:509, display:{Name:'{"translate":"lobby.cosmetic_selector.trails.9","italic":false}',Lore:['{"translate":"lobby.cosmetic_selector.trails.9.bio","italic":false,"color":"gray"}','{"text":""}','{"translate":"lobby.cosmetic_selector.trails.9.cost","italic":false,"color":"#CC692C"}']}}
execute if score @s cosmetic.arrow_trail.9 matches 1 unless score @s cosmetic.arrow_trail matches 9 run item replace entity @s enderchest.15 with carrot_on_a_stick{page: 50, selection: 15, cosmeticItem: 1b, CustomModelData:609, display:{Name:'{"translate":"lobby.cosmetic_selector.trails.9","italic":false}',Lore:['{"translate":"lobby.cosmetic_selector.trails.9.bio","italic":false,"color":"gray"}','{"text":""}','{"translate":"lobby.cosmetic_selector.item.bought","italic":false,"color":"#96FF96"}']}}
execute if score @s cosmetic.arrow_trail matches 9 run item replace entity @s enderchest.15 with carrot_on_a_stick{page: 50, selection: 15, cosmeticItem: 1b, CustomModelData:709, display:{Name:'{"translate":"lobby.cosmetic_selector.trails.9","italic":false}',Lore:['{"translate":"lobby.cosmetic_selector.trails.9.bio","italic":false,"color":"gray"}','{"text":""}','{"translate":"lobby.cosmetic_selector.item.selected","italic":false,"color":"#96FF96"}']}}

## particle 10 - snowball
execute unless score @s cosmetic.arrow_trail.10 matches 1 unless score @s cosmetic.arrow_trail matches 10 run item replace entity @s enderchest.16 with carrot_on_a_stick{page: 50, selection: 16, cosmeticItem: 1b, CustomModelData:510, display:{Name:'{"translate":"lobby.cosmetic_selector.trails.10","italic":false}',Lore:['{"translate":"lobby.cosmetic_selector.trails.10.bio","italic":false,"color":"gray"}','{"text":""}','{"translate":"lobby.cosmetic_selector.trails.10.cost","italic":false,"color":"#CC692C"}']}}
execute if score @s cosmetic.arrow_trail.10 matches 1 unless score @s cosmetic.arrow_trail matches 10 run item replace entity @s enderchest.16 with carrot_on_a_stick{page: 50, selection: 16, cosmeticItem: 1b, CustomModelData:610, display:{Name:'{"translate":"lobby.cosmetic_selector.trails.10","italic":false}',Lore:['{"translate":"lobby.cosmetic_selector.trails.10.bio","italic":false,"color":"gray"}','{"text":""}','{"translate":"lobby.cosmetic_selector.item.bought","italic":false,"color":"#96FF96"}']}}
execute if score @s cosmetic.arrow_trail matches 10 run item replace entity @s enderchest.16 with carrot_on_a_stick{page: 50, selection: 16, cosmeticItem: 1b, CustomModelData:710, display:{Name:'{"translate":"lobby.cosmetic_selector.trails.10","italic":false}',Lore:['{"translate":"lobby.cosmetic_selector.trails.10.bio","italic":false,"color":"gray"}','{"text":""}','{"translate":"lobby.cosmetic_selector.item.selected","italic":false,"color":"#96FF96"}']}}

## particle 11 - sonic boom
execute unless score @s cosmetic.arrow_trail.11 matches 1 unless score @s cosmetic.arrow_trail matches 11 run item replace entity @s enderchest.20 with carrot_on_a_stick{page: 50, selection: 20, cosmeticItem: 1b, CustomModelData:511, display:{Name:'{"translate":"lobby.cosmetic_selector.trails.11","italic":false}',Lore:['{"translate":"lobby.cosmetic_selector.trails.11.bio","italic":false,"color":"gray"}','{"text":""}','{"translate":"lobby.cosmetic_selector.trails.11.cost","italic":false,"color":"#FF9696"}']}}
execute if score @s cosmetic.arrow_trail.11 matches 1 unless score @s cosmetic.arrow_trail matches 11 run item replace entity @s enderchest.20 with carrot_on_a_stick{page: 50, selection: 20, cosmeticItem: 1b, CustomModelData:611, display:{Name:'{"translate":"lobby.cosmetic_selector.trails.11","italic":false}',Lore:['{"translate":"lobby.cosmetic_selector.trails.11.bio","italic":false,"color":"gray"}','{"text":""}','{"translate":"lobby.cosmetic_selector.item.bought","italic":false,"color":"#96FF96"}']}}
execute if score @s cosmetic.arrow_trail matches 11 run item replace entity @s enderchest.20 with carrot_on_a_stick{page: 50, selection: 20, cosmeticItem: 1b, CustomModelData:711, display:{Name:'{"translate":"lobby.cosmetic_selector.trails.11","italic":false}',Lore:['{"translate":"lobby.cosmetic_selector.trails.11.bio","italic":false,"color":"gray"}','{"text":""}','{"translate":"lobby.cosmetic_selector.item.selected","italic":false,"color":"#96FF96"}']}}

## particle 12 - glow
execute unless score @s cosmetic.arrow_trail.12 matches 1 unless score @s cosmetic.arrow_trail matches 12 run item replace entity @s enderchest.21 with carrot_on_a_stick{page: 50, selection: 21, cosmeticItem: 1b, CustomModelData:512, display:{Name:'{"translate":"lobby.cosmetic_selector.trails.12","italic":false}',Lore:['{"translate":"lobby.cosmetic_selector.trails.12.bio","italic":false,"color":"gray"}','{"text":""}','{"translate":"lobby.cosmetic_selector.trails.12.cost","italic":false,"color":"#CC692C"}']}}
execute if score @s cosmetic.arrow_trail.12 matches 1 unless score @s cosmetic.arrow_trail matches 12 run item replace entity @s enderchest.21 with carrot_on_a_stick{page: 50, selection: 21, cosmeticItem: 1b, CustomModelData:612, display:{Name:'{"translate":"lobby.cosmetic_selector.trails.12","italic":false}',Lore:['{"translate":"lobby.cosmetic_selector.trails.12.bio","italic":false,"color":"gray"}','{"text":""}','{"translate":"lobby.cosmetic_selector.item.bought","italic":false,"color":"#96FF96"}']}}
execute if score @s cosmetic.arrow_trail matches 12 run item replace entity @s enderchest.21 with carrot_on_a_stick{page: 50, selection: 21, cosmeticItem: 1b, CustomModelData:712, display:{Name:'{"translate":"lobby.cosmetic_selector.trails.12","italic":false}',Lore:['{"translate":"lobby.cosmetic_selector.trails.12.bio","italic":false,"color":"gray"}','{"text":""}','{"translate":"lobby.cosmetic_selector.item.selected","italic":false,"color":"#96FF96"}']}}

## particle 13 - end rod
execute unless score @s cosmetic.arrow_trail.13 matches 1 unless score @s cosmetic.arrow_trail matches 13 run item replace entity @s enderchest.22 with carrot_on_a_stick{page: 50, selection: 22, cosmeticItem: 1b, CustomModelData:513, display:{Name:'{"translate":"lobby.cosmetic_selector.trails.13","italic":false}',Lore:['{"translate":"lobby.cosmetic_selector.trails.13.bio","italic":false,"color":"gray"}','{"text":""}','{"translate":"lobby.cosmetic_selector.trails.13.cost","italic":false,"color":"#CC692C"}']}}
execute if score @s cosmetic.arrow_trail.13 matches 1 unless score @s cosmetic.arrow_trail matches 13 run item replace entity @s enderchest.22 with carrot_on_a_stick{page: 50, selection: 22, cosmeticItem: 1b, CustomModelData:613, display:{Name:'{"translate":"lobby.cosmetic_selector.trails.13","italic":false}',Lore:['{"translate":"lobby.cosmetic_selector.trails.13.bio","italic":false,"color":"gray"}','{"text":""}','{"translate":"lobby.cosmetic_selector.item.bought","italic":false,"color":"#96FF96"}']}}
execute if score @s cosmetic.arrow_trail matches 13 run item replace entity @s enderchest.22 with carrot_on_a_stick{page: 50, selection: 22, cosmeticItem: 1b, CustomModelData:713, display:{Name:'{"translate":"lobby.cosmetic_selector.trails.13","italic":false}',Lore:['{"translate":"lobby.cosmetic_selector.trails.13.bio","italic":false,"color":"gray"}','{"text":""}','{"translate":"lobby.cosmetic_selector.item.selected","italic":false,"color":"#96FF96"}']}}

## particle 14 - electric spark
execute unless score @s cosmetic.arrow_trail.14 matches 1 unless score @s cosmetic.arrow_trail matches 14 run item replace entity @s enderchest.23 with carrot_on_a_stick{page: 50, selection: 23, cosmeticItem: 1b, CustomModelData:514, display:{Name:'{"translate":"lobby.cosmetic_selector.trails.14","italic":false}',Lore:['{"translate":"lobby.cosmetic_selector.trails.14.bio","italic":false,"color":"gray"}','{"text":""}','{"translate":"lobby.cosmetic_selector.trails.14.cost","italic":false,"color":"#CC692C"}']}}
execute if score @s cosmetic.arrow_trail.14 matches 1 unless score @s cosmetic.arrow_trail matches 14 run item replace entity @s enderchest.23 with carrot_on_a_stick{page: 50, selection: 23, cosmeticItem: 1b, CustomModelData:614, display:{Name:'{"translate":"lobby.cosmetic_selector.trails.14","italic":false}',Lore:['{"translate":"lobby.cosmetic_selector.trails.14.bio","italic":false,"color":"gray"}','{"text":""}','{"translate":"lobby.cosmetic_selector.item.bought","italic":false,"color":"#96FF96"}']}}
execute if score @s cosmetic.arrow_trail matches 14 run item replace entity @s enderchest.23 with carrot_on_a_stick{page: 50, selection: 23, cosmeticItem: 1b, CustomModelData:714, display:{Name:'{"translate":"lobby.cosmetic_selector.trails.14","italic":false}',Lore:['{"translate":"lobby.cosmetic_selector.trails.14.bio","italic":false,"color":"gray"}','{"text":""}','{"translate":"lobby.cosmetic_selector.item.selected","italic":false,"color":"#96FF96"}']}}

## particle 15 - composter
execute unless score @s cosmetic.arrow_trail.15 matches 1 unless score @s cosmetic.arrow_trail matches 15 run item replace entity @s enderchest.24 with carrot_on_a_stick{page: 50, selection: 24, cosmeticItem: 1b, CustomModelData:515, display:{Name:'{"translate":"lobby.cosmetic_selector.trails.15","italic":false}',Lore:['{"translate":"lobby.cosmetic_selector.trails.15.bio","italic":false,"color":"gray"}','{"text":""}','{"translate":"lobby.cosmetic_selector.trails.15.cost","italic":false,"color":"#CC692C"}']}}
execute if score @s cosmetic.arrow_trail.15 matches 1 unless score @s cosmetic.arrow_trail matches 15 run item replace entity @s enderchest.24 with carrot_on_a_stick{page: 50, selection: 24, cosmeticItem: 1b, CustomModelData:615, display:{Name:'{"translate":"lobby.cosmetic_selector.trails.15","italic":false}',Lore:['{"translate":"lobby.cosmetic_selector.trails.15.bio","italic":false,"color":"gray"}','{"text":""}','{"translate":"lobby.cosmetic_selector.item.bought","italic":false,"color":"#96FF96"}']}}
execute if score @s cosmetic.arrow_trail matches 15 run item replace entity @s enderchest.24 with carrot_on_a_stick{page: 50, selection: 24, cosmeticItem: 1b, CustomModelData:715, display:{Name:'{"translate":"lobby.cosmetic_selector.trails.15","italic":false}',Lore:['{"translate":"lobby.cosmetic_selector.trails.15.bio","italic":false,"color":"gray"}','{"text":""}','{"translate":"lobby.cosmetic_selector.item.selected","italic":false,"color":"#96FF96"}']}}

## particle 16 - ash
execute unless score @s cosmetic.arrow_trail.16 matches 1 unless score @s cosmetic.arrow_trail matches 16 run item replace entity @s enderchest.25 with carrot_on_a_stick{page: 50, selection: 25, cosmeticItem: 1b, CustomModelData:516, display:{Name:'{"translate":"lobby.cosmetic_selector.trails.16","italic":false}',Lore:['{"translate":"lobby.cosmetic_selector.trails.16.bio","italic":false,"color":"gray"}','{"text":""}','{"translate":"lobby.cosmetic_selector.trails.16.cost","italic":false,"color":"#CC692C"}']}}
execute if score @s cosmetic.arrow_trail.16 matches 1 unless score @s cosmetic.arrow_trail matches 16 run item replace entity @s enderchest.25 with carrot_on_a_stick{page: 50, selection: 25, cosmeticItem: 1b, CustomModelData:616, display:{Name:'{"translate":"lobby.cosmetic_selector.trails.16","italic":false}',Lore:['{"translate":"lobby.cosmetic_selector.trails.16.bio","italic":false,"color":"gray"}','{"text":""}','{"translate":"lobby.cosmetic_selector.item.bought","italic":false,"color":"#96FF96"}']}}
execute if score @s cosmetic.arrow_trail matches 16 run item replace entity @s enderchest.25 with carrot_on_a_stick{page: 50, selection: 25, cosmeticItem: 1b, CustomModelData:716, display:{Name:'{"translate":"lobby.cosmetic_selector.trails.16","italic":false}',Lore:['{"translate":"lobby.cosmetic_selector.trails.16.bio","italic":false,"color":"gray"}','{"text":""}','{"translate":"lobby.cosmetic_selector.item.selected","italic":false,"color":"#96FF96"}']}}