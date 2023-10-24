# LASERTAG cosmetic selector
## page 0 (default)


# selection
execute if score @s temp_store.cosmetic_selector.selection matches 13 run scoreboard players set @s temp_store.cosmetic_selector.page 50
execute if score @s temp_store.cosmetic_selector.selection matches 14 run scoreboard players set @s temp_store.cosmetic_selector.page 80


# notify
#execute if score selection temp_store.map_selector matches 2..5 run function tag:system/lobby/map_selector/announce

scoreboard players set @s temp_store.cosmetic_selector.selection -1