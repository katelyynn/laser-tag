# LASERTAG cosmetic selector
## main


item replace entity @s enderchest.0 with carrot_on_a_stick{page: 70, selection: 0, cosmeticItem: 1b, CustomModelData:38, display:{Name:'{"text":"","color":"green","italic":false}'}}
item replace entity @s enderchest.1 with carrot_on_a_stick{page: 70, selection: 1, cosmeticItem: 1b, CustomModelData:40, display:{Name:'{"text":"","color":"green","italic":false}'}}
item replace entity @s enderchest.8 with carrot_on_a_stick{page: 70, selection: 8, cosmeticItem: 1b, CustomModelData:7, display:{Name:'{"text":"","color":"green","italic":false}'}}
item replace entity @s enderchest.9 with carrot_on_a_stick{page: 70, selection: 9, cosmeticItem: 1b, CustomModelData:31, display:{Name:'{"text":"","color":"green","italic":false}'}}
item replace entity @s enderchest.10 with carrot_on_a_stick{page: 70, selection: 10, cosmeticItem: 1b, CustomModelData:31, display:{Name:'{"text":"","color":"green","italic":false}'}}
item replace entity @s enderchest.17 with carrot_on_a_stick{page: 70, selection: 17, cosmeticItem: 1b, CustomModelData:31, display:{Name:'{"text":"","color":"green","italic":false}'}}
item replace entity @s enderchest.18 with carrot_on_a_stick{page: 70, selection: 18, cosmeticItem: 1b, CustomModelData:37, display:{Name:'{"text":"","color":"green","italic":false}'}}
item replace entity @s enderchest.19 with carrot_on_a_stick{page: 70, selection: 19, cosmeticItem: 1b, CustomModelData:7, display:{Name:'{"text":"","color":"green","italic":false}'}}
item replace entity @s enderchest.26 with carrot_on_a_stick{page: 70, selection: 26, cosmeticItem: 1b, CustomModelData:7, display:{Name:'{"text":"","color":"green","italic":false}'}}


# blank slots
## around item
item replace entity @s enderchest.2 with carrot_on_a_stick{page: 70, selection: 2, cosmeticItem: 1b, CustomModelData:41, display:{Name:'{"text":"","color":"green","italic":false}'}}
item replace entity @s enderchest.3 with carrot_on_a_stick{page: 70, selection: 3, cosmeticItem: 1b, CustomModelData:31, display:{Name:'{"text":"","color":"green","italic":false}'}}
item replace entity @s enderchest.12 with carrot_on_a_stick{page: 70, selection: 12, cosmeticItem: 1b, CustomModelData:31, display:{Name:'{"text":"","color":"green","italic":false}'}}
item replace entity @s enderchest.20 with carrot_on_a_stick{page: 70, selection: 20, cosmeticItem: 1b, CustomModelData:39, display:{Name:'{"text":"","color":"green","italic":false}'}}
item replace entity @s enderchest.21 with carrot_on_a_stick{page: 70, selection: 21, cosmeticItem: 1b, CustomModelData:37, display:{Name:'{"text":"","color":"green","italic":false}'}}

## around buttons
item replace entity @s enderchest.4 with carrot_on_a_stick{page: 70, selection: 4, cosmeticItem: 1b, CustomModelData:31, display:{Name:'{"text":"","color":"green","italic":false}'}}
item replace entity @s enderchest.5 with carrot_on_a_stick{page: 70, selection: 5, cosmeticItem: 1b, CustomModelData:31, display:{Name:'{"text":"","color":"green","italic":false}'}}
item replace entity @s enderchest.6 with carrot_on_a_stick{page: 70, selection: 6, cosmeticItem: 1b, CustomModelData:31, display:{Name:'{"text":"","color":"green","italic":false}'}}
item replace entity @s enderchest.7 with carrot_on_a_stick{page: 70, selection: 7, cosmeticItem: 1b, CustomModelData:31, display:{Name:'{"text":"","color":"green","italic":false}'}}
item replace entity @s enderchest.14 with carrot_on_a_stick{page: 70, selection: 14, cosmeticItem: 1b, CustomModelData:36, display:{Name:'{"text":"","color":"green","italic":false}'}}
item replace entity @s enderchest.16 with carrot_on_a_stick{page: 70, selection: 16, cosmeticItem: 1b, CustomModelData:31, display:{Name:'{"text":"","color":"green","italic":false}'}}
item replace entity @s enderchest.22 with carrot_on_a_stick{page: 70, selection: 22, cosmeticItem: 1b, CustomModelData:37, display:{Name:'{"text":"","color":"green","italic":false}'}}
item replace entity @s enderchest.23 with carrot_on_a_stick{page: 70, selection: 23, cosmeticItem: 1b, CustomModelData:37, display:{Name:'{"text":"","color":"green","italic":false}'}}
item replace entity @s enderchest.24 with carrot_on_a_stick{page: 70, selection: 24, cosmeticItem: 1b, CustomModelData:37, display:{Name:'{"text":"","color":"green","italic":false}'}}
item replace entity @s enderchest.25 with carrot_on_a_stick{page: 70, selection: 25, cosmeticItem: 1b, CustomModelData:37, display:{Name:'{"text":"","color":"green","italic":false}'}}


# fill container
item replace entity @s enderchest.13 with carrot_on_a_stick{page: 70, selection: 13, cosmeticItem: 1b, CustomModelData:33, display:{Name:'{"text":"Purchase","color":"#96FF96","italic":false}'}}
item replace entity @s enderchest.15 with carrot_on_a_stick{page: 70, selection: 15, cosmeticItem: 1b, CustomModelData:34, display:{Name:'{"text":"Cancel","color":"#F76565","italic":false}'}}


# item
## particle 0 - anger
execute if score @s temp_store.cosmetic_selector.buy_arrow_trail matches 0 run item replace entity @s enderchest.11 with carrot_on_a_stick{page: 70, selection: 11, cosmeticItem: 1b, CustomModelData:600, display:{Name:'{"text":"Anger","italic":false}',Lore:['{"text":"Fueled with rage","italic":false,"color":"gray"}','{"text":""}','{"text":"⑪ 120 Coins","italic":false,"color":"#CC692C"}']}}

## particle 1 - hearts
execute if score @s temp_store.cosmetic_selector.buy_arrow_trail matches 1 run item replace entity @s enderchest.11 with carrot_on_a_stick{page: 70, selection: 11, cosmeticItem: 1b, CustomModelData:601, display:{Name:'{"text":"Hearts","italic":false}',Lore:['{"text":"Arrows sharp as a broken heart","italic":false,"color":"gray"}','{"text":""}','{"text":"⑫ 1000 Coins","italic":false,"color":"#A8B5B5"}']}}

## particle 2 - withered hearts
execute if score @s temp_store.cosmetic_selector.buy_arrow_trail matches 2 run item replace entity @s enderchest.11 with carrot_on_a_stick{page: 70, selection: 11, cosmeticItem: 1b, CustomModelData:602, display:{Name:'{"text":"Withered hearts","italic":false}',Lore:['{"text":"Arrows sharp as a withered heart","italic":false,"color":"gray"}','{"text":""}','{"text":"⑪ 750 Coins","italic":false,"color":"#CC692C"}']}}

## particle 3 - witch
execute if score @s temp_store.cosmetic_selector.buy_arrow_trail matches 3 run item replace entity @s enderchest.11 with carrot_on_a_stick{page: 70, selection: 11, cosmeticItem: 1b, CustomModelData:603, display:{Name:'{"text":"Witch","italic":false}',Lore:['{"text":"","italic":false,"color":"gray"}','{"text":""}','{"text":"⑪ 500 Coins","italic":false,"color":"#CC692C"}']}}

## particle 4 - dragon breath
execute if score @s temp_store.cosmetic_selector.buy_arrow_trail matches 4 run item replace entity @s enderchest.11 with carrot_on_a_stick{page: 70, selection: 11, cosmeticItem: 1b, CustomModelData:604, display:{Name:'{"text":"Dragon breath","italic":false}',Lore:['{"text":"Arrows sharp as a withered heart","italic":false,"color":"gray"}','{"text":""}','{"text":"⑪ 750 Coins","italic":false,"color":"#CC692C"}']}}

## particle 5 - soul
execute if score @s temp_store.cosmetic_selector.buy_arrow_trail matches 5 run item replace entity @s enderchest.11 with carrot_on_a_stick{page: 70, selection: 11, cosmeticItem: 1b, CustomModelData:605, display:{Name:'{"text":"Soul","italic":false}',Lore:['{"text":"","italic":false,"color":"gray"}','{"text":""}','{"text":"⑪ 500 Coins","italic":false,"color":"#CC692C"}']}}

## particle 6 - sculk soul
execute if score @s temp_store.cosmetic_selector.buy_arrow_trail matches 6 run item replace entity @s enderchest.11 with carrot_on_a_stick{page: 70, selection: 11, cosmeticItem: 1b, CustomModelData:606, display:{Name:'{"text":"Sculk Soul","italic":false}',Lore:['{"text":"Arrows sharp as a withered heart","italic":false,"color":"gray"}','{"text":""}','{"text":"⑪ 750 Coins","italic":false,"color":"#CC692C"}']}}

## particle 7 - flame
execute if score @s temp_store.cosmetic_selector.buy_arrow_trail matches 7 run item replace entity @s enderchest.11 with carrot_on_a_stick{page: 70, selection: 11, cosmeticItem: 1b, CustomModelData:607, display:{Name:'{"text":"Flame","italic":false}',Lore:['{"text":"","italic":false,"color":"gray"}','{"text":""}','{"text":"⑪ 500 Coins","italic":false,"color":"#CC692C"}']}}

## particle 8 - soul flame
execute if score @s temp_store.cosmetic_selector.buy_arrow_trail matches 8 run item replace entity @s enderchest.11 with carrot_on_a_stick{page: 70, selection: 11, cosmeticItem: 1b, CustomModelData:608, display:{Name:'{"text":"Soul Flame","italic":false}',Lore:['{"text":"Arrows sharp as a withered heart","italic":false,"color":"gray"}','{"text":""}','{"text":"⑪ 750 Coins","italic":false,"color":"#CC692C"}']}}

## particle 9 - slime
execute if score @s temp_store.cosmetic_selector.buy_arrow_trail matches 9 run item replace entity @s enderchest.11 with carrot_on_a_stick{page: 70, selection: 11, cosmeticItem: 1b, CustomModelData:609, display:{Name:'{"text":"Slime","italic":false}',Lore:['{"text":"","italic":false,"color":"gray"}','{"text":""}','{"text":"⑪ 500 Coins","italic":false,"color":"#CC692C"}']}}

## particle 10 - snowball
execute if score @s temp_store.cosmetic_selector.buy_arrow_trail matches 10 run item replace entity @s enderchest.11 with carrot_on_a_stick{page: 70, selection: 11, cosmeticItem: 1b, CustomModelData:610, display:{Name:'{"text":"Snowball","italic":false}',Lore:['{"text":"Arrows sharp as a withered heart","italic":false,"color":"gray"}','{"text":""}','{"text":"⑪ 750 Coins","italic":false,"color":"#CC692C"}']}}

## particle 11 - sonic boom
execute if score @s temp_store.cosmetic_selector.buy_arrow_trail matches 11 run item replace entity @s enderchest.11 with carrot_on_a_stick{page: 70, selection: 11, cosmeticItem: 1b, CustomModelData:611, display:{Name:'{"text":"Sonic boom","italic":false}',Lore:['{"text":"Remove this one","italic":false,"color":"gray"}','{"text":""}','{"text":"⑭ Locked","italic":false,"color":"#FF9696"}']}}

## particle 12 - glow
execute if score @s temp_store.cosmetic_selector.buy_arrow_trail matches 12 run item replace entity @s enderchest.11 with carrot_on_a_stick{page: 70, selection: 11, cosmeticItem: 1b, CustomModelData:612, display:{Name:'{"text":"Glow","italic":false}',Lore:['{"text":"Arrows sharp as a withered heart","italic":false,"color":"gray"}','{"text":""}','{"text":"⑪ 750 Coins","italic":false,"color":"#CC692C"}']}}

## particle 13 - end rod
execute if score @s temp_store.cosmetic_selector.buy_arrow_trail matches 13 run item replace entity @s enderchest.11 with carrot_on_a_stick{page: 70, selection: 11, cosmeticItem: 1b, CustomModelData:613, display:{Name:'{"text":"End rod","italic":false}',Lore:['{"text":"","italic":false,"color":"gray"}','{"text":""}','{"text":"⑪ 500 Coins","italic":false,"color":"#CC692C"}']}}

## particle 14 - electric spark
execute if score @s temp_store.cosmetic_selector.buy_arrow_trail matches 14 run item replace entity @s enderchest.11 with carrot_on_a_stick{page: 70, selection: 11, cosmeticItem: 1b, CustomModelData:614, display:{Name:'{"text":"Electric spark","italic":false}',Lore:['{"text":"Arrows sharp as a withered heart","italic":false,"color":"gray"}','{"text":""}','{"text":"⑪ 750 Coins","italic":false,"color":"#CC692C"}']}}

## particle 15 - composter
execute if score @s temp_store.cosmetic_selector.buy_arrow_trail matches 15 run item replace entity @s enderchest.11 with carrot_on_a_stick{page: 70, selection: 11, cosmeticItem: 1b, CustomModelData:615, display:{Name:'{"text":"Composter","italic":false}',Lore:['{"text":"Remove this one","italic":false,"color":"gray"}','{"text":""}','{"text":"⑪ 500 Coins","italic":false,"color":"#CC692C"}']}}

## particle 16 - ash
execute if score @s temp_store.cosmetic_selector.buy_arrow_trail matches 16 run item replace entity @s enderchest.11 with carrot_on_a_stick{page: 70, selection: 11, cosmeticItem: 1b, CustomModelData:616, display:{Name:'{"text":"Ash","italic":false}',Lore:['{"text":"","italic":false,"color":"gray"}','{"text":""}','{"text":"⑪ 500 Coins","italic":false,"color":"#CC692C"}']}}