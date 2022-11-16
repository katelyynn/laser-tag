## helmet
item replace entity @s armor.head with leather_helmet{CustomModelData:2,display:{Name:'{"text":"","italic":false}',color:5526779},HideFlags:71,Unbreakable:1b,Enchantments:[{id:"minecraft:binding_curse",lvl:1s}]}
## chestplate
item replace entity @s armor.chest with leather_chestplate{CustomModelData:2,display:{Name:'{"text":"","italic":false}',color:5526779},HideFlags:71,Unbreakable:1b,Enchantments:[{id:"minecraft:binding_curse",lvl:1s}]}
## leggings
item replace entity @s armor.legs with leather_leggings{CustomModelData:2,display:{Name:'{"text":"","italic":false}',color:5526779},HideFlags:71,Unbreakable:1b,Enchantments:[{id:"minecraft:binding_curse",lvl:1s}]}
## boots
item replace entity @s armor.feet with leather_boots{CustomModelData:2,display:{Name:'{"text":"","italic":false}',color:5526779},HideFlags:71,Unbreakable:1b,Enchantments:[{id:"minecraft:binding_curse",lvl:1s}]}

# reset
scoreboard players reset @s team.displayed_red
scoreboard players set @s team.displayed_blue 1
scoreboard players reset @s team.displayed_reset