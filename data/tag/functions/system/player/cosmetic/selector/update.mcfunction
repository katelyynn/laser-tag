# LASERTAG map selector
## update container


function tag:system/player/cosmetic/selector/page/clear

# default selections
execute if score @s temp_store.cosmetic_selector.selection matches 0 unless score @s temp_store.cosmetic_selector.page matches 70 run scoreboard players set @s temp_store.cosmetic_selector.page 0
## arrows
execute unless score @s temp_store.cosmetic_selector.page matches 0 unless score @s temp_store.cosmetic_selector.page matches 70 if score @s temp_store.cosmetic_selector.selection matches 10 run scoreboard players remove @s temp_store.cosmetic_selector.page 1
execute unless score @s temp_store.cosmetic_selector.page matches 0 unless score @s temp_store.cosmetic_selector.page matches 70 if score @s temp_store.cosmetic_selector.selection matches 17 run scoreboard players add @s temp_store.cosmetic_selector.page 1
## range check
execute if score @s temp_store.cosmetic_selector.page matches 52..60 run scoreboard players set @s temp_store.cosmetic_selector.page 50
execute if score @s temp_store.cosmetic_selector.page matches 40..49 run scoreboard players set @s temp_store.cosmetic_selector.page 50

# reset
execute unless score @s temp_store.cosmetic_selector.page matches 70 if score @s temp_store.cosmetic_selector.selection matches 0 run playsound tag:menu.back player @s ~ ~ ~
execute unless score @s temp_store.cosmetic_selector.page matches 70 if score @s temp_store.cosmetic_selector.selection matches 10 run playsound tag:menu.scroll player @s ~ ~ ~
execute unless score @s temp_store.cosmetic_selector.page matches 70 if score @s temp_store.cosmetic_selector.selection matches 17 run playsound tag:menu.scroll player @s ~ ~ ~
execute if score @s temp_store.cosmetic_selector.selection matches 1.. unless score @s temp_store.cosmetic_selector.selection matches 10 unless score @s temp_store.cosmetic_selector.selection matches 17 run playsound tag:menu.tick player @s ~ ~ ~
execute if score @s temp_store.cosmetic_selector.selection matches 0.. run particle minecraft:glow ~ ~ ~ 0 0 0 1 6
#execute if score @s temp_store.cosmetic_selector.selection matches 0.. run tellraw @a ["new map sel selection is ",{"score":{"name":"selection","objective":"temp_store.cosmetic_selector"}}]

# fill container
execute if score @s temp_store.cosmetic_selector.selection matches 0.. if score @s temp_store.cosmetic_selector.page matches 0 run function tag:system/player/cosmetic/selector/page/main/items
execute if score @s temp_store.cosmetic_selector.selection matches 0.. if score @s temp_store.cosmetic_selector.page matches 50 run function tag:system/player/cosmetic/selector/page/trails_0/items
execute if score @s temp_store.cosmetic_selector.selection matches 0.. if score @s temp_store.cosmetic_selector.page matches 70 run function tag:system/player/cosmetic/selector/page/trails_0_buy/items
execute if score @s temp_store.cosmetic_selector.selection matches 0.. if score @s temp_store.cosmetic_selector.page matches 51 run function tag:system/player/cosmetic/selector/page/trails_1/items

execute if score @s temp_store.cosmetic_selector.page matches 0 run function tag:system/player/cosmetic/selector/page/main/main
execute if score @s temp_store.cosmetic_selector.page matches 50 run function tag:system/player/cosmetic/selector/page/trails_0/main
execute if score @s temp_store.cosmetic_selector.page matches 70 run function tag:system/player/cosmetic/selector/page/trails_0_buy/main
execute if score @s temp_store.cosmetic_selector.page matches 51 run function tag:system/player/cosmetic/selector/page/trails_1/main