# LASERTAG map selector
## update container


function tag:system/player/cosmetic/selector/page/clear

# reset
execute if score @s temp_store.cosmetic_selector.selection matches 8 unless score @s temp_store.cosmetic_selector.page matches 0 unless score @s temp_store.cosmetic_selector.page matches 70..71 unless score @s temp_store.cosmetic_selector.page matches 100..101 run playsound tag:menu.back player @s ~ ~ ~
execute if score @s temp_store.cosmetic_selector.selection matches 10 unless score @s temp_store.cosmetic_selector.page matches 0 unless score @s temp_store.cosmetic_selector.page matches 70..71 unless score @s temp_store.cosmetic_selector.page matches 100..101 run playsound tag:menu.scroll player @s ~ ~ ~
execute if score @s temp_store.cosmetic_selector.selection matches 17 unless score @s temp_store.cosmetic_selector.page matches 0 unless score @s temp_store.cosmetic_selector.page matches 70..71 unless score @s temp_store.cosmetic_selector.page matches 100..101 run playsound tag:menu.scroll player @s ~ ~ ~
execute if score @s temp_store.cosmetic_selector.selection matches 0.. unless score @s temp_store.cosmetic_selector.selection matches 8 unless score @s temp_store.cosmetic_selector.selection matches 10 unless score @s temp_store.cosmetic_selector.selection matches 17 run playsound tag:menu.tick player @s ~ ~ ~
execute if score @s temp_store.cosmetic_selector.selection matches 0.. run particle minecraft:glow ~ ~ ~ 0 0 0 1 6
#execute if score @s temp_store.cosmetic_selector.selection matches 0.. run tellraw @a ["new map sel selection is ",{"score":{"name":"selection","objective":"temp_store.cosmetic_selector"}}]

# default selections
execute if score @s temp_store.cosmetic_selector.selection matches 8 unless score @s temp_store.cosmetic_selector.page matches 0 unless score @s temp_store.cosmetic_selector.page matches 70..71 unless score @s temp_store.cosmetic_selector.page matches 100..101 run scoreboard players set @s temp_store.cosmetic_selector.page 0
## arrows
execute unless score @s temp_store.cosmetic_selector.page matches 0 unless score @s temp_store.cosmetic_selector.page matches 70..71 unless score @s temp_store.cosmetic_selector.page matches 100..101 if score @s temp_store.cosmetic_selector.selection matches 10 run scoreboard players remove @s temp_store.cosmetic_selector.page 1
execute unless score @s temp_store.cosmetic_selector.page matches 0 unless score @s temp_store.cosmetic_selector.page matches 70..71 unless score @s temp_store.cosmetic_selector.page matches 100..101 if score @s temp_store.cosmetic_selector.selection matches 17 run scoreboard players add @s temp_store.cosmetic_selector.page 1
# range check
## trails
execute if score @s temp_store.cosmetic_selector.page matches 52..53 run scoreboard players set @s temp_store.cosmetic_selector.page 50
execute if score @s temp_store.cosmetic_selector.page matches 48..49 run scoreboard players set @s temp_store.cosmetic_selector.page 50
## hats
execute if score @s temp_store.cosmetic_selector.page matches 82..83 run scoreboard players set @s temp_store.cosmetic_selector.page 80
execute if score @s temp_store.cosmetic_selector.page matches 78..79 run scoreboard players set @s temp_store.cosmetic_selector.page 80

# fill container
execute if score @s temp_store.cosmetic_selector.selection matches 0.. if score @s temp_store.cosmetic_selector.page matches 0 run function tag:system/player/cosmetic/selector/page/main/items
## trails
execute if score @s temp_store.cosmetic_selector.selection matches 0.. if score @s temp_store.cosmetic_selector.page matches 50 run function tag:system/player/cosmetic/selector/page/trails_0/items
execute if score @s temp_store.cosmetic_selector.selection matches 0.. if score @s temp_store.cosmetic_selector.page matches 70 run function tag:system/player/cosmetic/selector/page/trails_0_buy/items
execute if score @s temp_store.cosmetic_selector.selection matches 0.. if score @s temp_store.cosmetic_selector.page matches 51 run function tag:system/player/cosmetic/selector/page/trails_1/items
execute if score @s temp_store.cosmetic_selector.selection matches 0.. if score @s temp_store.cosmetic_selector.page matches 71 run function tag:system/player/cosmetic/selector/page/trails_1_buy/items
## hats
execute if score @s temp_store.cosmetic_selector.selection matches 0.. if score @s temp_store.cosmetic_selector.page matches 80 run function tag:system/player/cosmetic/selector/page/hats_0/items
execute if score @s temp_store.cosmetic_selector.selection matches 0.. if score @s temp_store.cosmetic_selector.page matches 100 run function tag:system/player/cosmetic/selector/page/hats_0_buy/items
execute if score @s temp_store.cosmetic_selector.selection matches 0.. if score @s temp_store.cosmetic_selector.page matches 81 run function tag:system/player/cosmetic/selector/page/hats_1/items
execute if score @s temp_store.cosmetic_selector.selection matches 0.. if score @s temp_store.cosmetic_selector.page matches 101 run function tag:system/player/cosmetic/selector/page/hats_1_buy/items

execute if score @s temp_store.cosmetic_selector.page matches 0 run function tag:system/player/cosmetic/selector/page/main/main
## trails
execute if score @s temp_store.cosmetic_selector.page matches 50 run function tag:system/player/cosmetic/selector/page/trails_0/main
execute if score @s temp_store.cosmetic_selector.page matches 70 run function tag:system/player/cosmetic/selector/page/trails_0_buy/main
execute if score @s temp_store.cosmetic_selector.page matches 51 run function tag:system/player/cosmetic/selector/page/trails_1/main
execute if score @s temp_store.cosmetic_selector.page matches 71 run function tag:system/player/cosmetic/selector/page/trails_1_buy/main
## hats
execute if score @s temp_store.cosmetic_selector.page matches 80 run function tag:system/player/cosmetic/selector/page/hats_0/main
execute if score @s temp_store.cosmetic_selector.page matches 100 run function tag:system/player/cosmetic/selector/page/hats_0_buy/main
execute if score @s temp_store.cosmetic_selector.page matches 81 run function tag:system/player/cosmetic/selector/page/hats_1/main
execute if score @s temp_store.cosmetic_selector.page matches 101 run function tag:system/player/cosmetic/selector/page/hats_1_buy/main