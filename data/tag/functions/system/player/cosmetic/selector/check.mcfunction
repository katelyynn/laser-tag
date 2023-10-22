# LASERTAG cosmetic selector
## check if eligible with item


execute store result score @s temp_store.cosmetic_selector.has_item run clear @s #tag:map_selector{cosmeticItem: 1b} 0
execute if score @s temp_store.cosmetic_selector.has_item matches 1.. run function tag:system/player/cosmetic/selector/main