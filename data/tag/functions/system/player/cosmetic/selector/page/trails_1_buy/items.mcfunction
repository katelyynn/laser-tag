# LASERTAG cosmetic selector
## page 0 (default)


# selection
execute if score @s temp_store.cosmetic_selector.selection matches 13 run function tag:system/player/cosmetic/purchase_check
execute if score @s temp_store.cosmetic_selector.selection matches 13 run scoreboard players remove @s temp_store.cosmetic_selector.page 20
execute if score @s temp_store.cosmetic_selector.selection matches 13 run playsound tag:coin.purchase player @s


execute if score @s temp_store.cosmetic_selector.selection matches 15 run scoreboard players reset @s temp_store.cosmetic_selector.buy_arrow_trail
execute if score @s temp_store.cosmetic_selector.selection matches 15 run scoreboard players remove @s temp_store.cosmetic_selector.page 20
execute if score @s temp_store.cosmetic_selector.selection matches 15 run playsound tag:menu.back player @s


# notify
#execute if score selection temp_store.map_selector matches 2..5 run function tag:system/lobby/map_selector/announce

scoreboard players set @s temp_store.cosmetic_selector.selection -1