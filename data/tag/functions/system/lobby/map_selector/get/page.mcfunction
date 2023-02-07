# LASERTAG map selector
## get current page


# used to store current page
scoreboard players set bool temp_store.map_selector 0

execute store success score bool temp_store.map_selector run clear @s #tag:map_selector{page: 0} 0
execute if score bool temp_store.map_selector matches 1.. run scoreboard players set @s temp_store.map_selector 0

execute store success score bool temp_store.map_selector run clear @s #tag:map_selector{page: 1} 0
execute if score bool temp_store.map_selector matches 1.. run scoreboard players set @s temp_store.map_selector 1