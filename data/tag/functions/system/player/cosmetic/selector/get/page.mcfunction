# LASERTAG map selector
## get current page


# used to store current page
scoreboard players set @s temp_store.cosmetic_selector.bool 0

execute store success score @s temp_store.cosmetic_selector.bool run clear @s #tag:map_selector{page: 0} 0
execute if score @s temp_store.cosmetic_selector.bool matches 1.. run scoreboard players set @s temp_store.cosmetic_selector.page 0

execute store success score @s temp_store.cosmetic_selector.bool run clear @s #tag:map_selector{page: 50} 0
execute if score @s temp_store.cosmetic_selector.bool matches 1.. run scoreboard players set @s temp_store.cosmetic_selector.page 50
execute store success score @s temp_store.cosmetic_selector.bool run clear @s #tag:map_selector{page: 51} 0
execute if score @s temp_store.cosmetic_selector.bool matches 1.. run scoreboard players set @s temp_store.cosmetic_selector.page 51

execute store success score @s temp_store.cosmetic_selector.bool run clear @s #tag:map_selector{page: 100} 0
execute if score @s temp_store.cosmetic_selector.bool matches 1.. run scoreboard players set @s temp_store.cosmetic_selector.page 100
execute store success score @s temp_store.cosmetic_selector.bool run clear @s #tag:map_selector{page: 101} 0
execute if score @s temp_store.cosmetic_selector.bool matches 1.. run scoreboard players set @s temp_store.cosmetic_selector.page 101