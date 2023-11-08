# LASERTAG MAP
## map dev mode
## main loop


execute as @a at @s run execute as @e[tag=spawn_point,distance=..150] at @s run function tag:system/map/dev/spawn

execute as @e[tag=item_spawner.coin] at @s run particle minecraft:block gold_block ~ ~ ~ 0 0 0 1 1


# names

# item spawners
execute as @a at @s run data merge entity @e[tag=item_spawner.crossbow_normal,nbt=!{CustomName:'{"translate":"item_spawner.crossbow_normal","italic":false,"color":"#FF753A"}'},limit=1,distance=..10] {CustomName:'{"translate":"item_spawner.crossbow_normal","italic":false,"color":"#FF753A"}'}
execute as @a at @s run data merge entity @e[tag=item_spawner.crossbow_machine,nbt=!{CustomName:'{"translate":"item_spawner.crossbow_machine","italic":false,"color":"#FF753A"}'},limit=1,distance=..10] {CustomName:'{"translate":"item_spawner.crossbow_machine","italic":false,"color":"#FF753A"}'}
execute as @a at @s run data merge entity @e[tag=item_spawner.crossbow_rocket,nbt=!{CustomName:'{"translate":"item_spawner.crossbow_rocket","italic":false,"color":"#FF753A"}'},limit=1,distance=..10] {CustomName:'{"translate":"item_spawner.crossbow_rocket","italic":false,"color":"#FF753A"}'}
execute as @a at @s run data merge entity @e[tag=item_spawner.crossbow_poison,nbt=!{CustomName:'{"translate":"item_spawner.crossbow_poison","italic":false,"color":"#FF753A"}'},limit=1,distance=..10] {CustomName:'{"translate":"item_spawner.crossbow_poison","italic":false,"color":"#FF753A"}'}
execute as @a at @s run data merge entity @e[tag=item_spawner.crossbow_glowing,nbt=!{CustomName:'{"translate":"item_spawner.crossbow_glowing","italic":false,"color":"#FF753A"}'},limit=1,distance=..10] {CustomName:'{"translate":"item_spawner.crossbow_glowing","italic":false,"color":"#FF753A"}'}
execute as @a at @s run data merge entity @e[tag=item_spawner.apple,nbt=!{CustomName:'{"translate":"item_spawner.apple","italic":false,"color":"red"}'},limit=1,distance=..10] {CustomName:'{"translate":"item_spawner.apple","italic":false,"color":"red"}'}
execute as @a at @s run data merge entity @e[tag=item_spawner.coin,nbt=!{CustomName:'{"translate":"item_spawner.coin","italic":false,"color":"#EBD779"}'},limit=1,distance=..10] {CustomName:'{"translate":"item_spawner.coin","italic":false,"color":"#EBD779"}'}

# spawn
execute as @a at @s run data merge entity @e[tag=spawn_point,nbt=!{CustomName:'{"translate":"spawn_point","italic":false,"color":"green"}'},limit=1,distance=..10] {CustomName:'{"translate":"spawn_point","italic":false,"color":"green"}'}

# display
execute as @e[type=area_effect_cloud,nbt=!{CustomNameVisible:1b}] at @s if entity @a[distance=..5] run data merge entity @s {CustomNameVisible:1b}
execute as @e[type=area_effect_cloud,nbt={CustomNameVisible:1b}] at @s unless entity @a[distance=..5] run data merge entity @s {CustomNameVisible:0b}


# items
execute as @a run item replace entity @s hotbar.7 with carrot_on_a_stick{CustomModelData:11,map_dev_alt_action:1b,display:{Name:'[{"text":"","italic":false}]'}}
execute as @a run item replace entity @s hotbar.8 with carrot_on_a_stick{CustomModelData:10,map_dev_main_action:1b,display:{Name:'[{"text":"","italic":false}]'}}

execute as @a store result score @s temp_store.map_dev_alt_item run clear @s carrot_on_a_stick{map_dev_alt_action:1b} 0
execute as @a store result score @s temp_store.map_dev_main_item run clear @s carrot_on_a_stick{map_dev_main_action:1b} 0

execute as @a if score @s temp_store.map_dev_alt_item matches 2.. run clear @s carrot_on_a_stick{map_dev_alt_action:1b}
execute as @a if score @s temp_store.map_dev_main_item matches 2.. run clear @s carrot_on_a_stick{map_dev_main_action:1b}


# title
execute as @a[nbt={SelectedItem:{tag:{map_dev_alt_action:1b}}},scores={temp_store.map_dev_alt_player_state=0}] run title @s actionbar ["",{"text":"Selecting: ","color":"gray"},{"translate":"spawn_point"},{"text":" - ","color":"gray"},{"keybind":"key.use"},{"text":" to get a spawner","color":"gray"}]
execute as @a[nbt={SelectedItem:{tag:{map_dev_alt_action:1b}}},scores={temp_store.map_dev_alt_player_state=1}] run title @s actionbar ["",{"text":"Selecting: ","color":"gray"},{"translate":"item_spawner"},{"text":" - ","color":"gray"},{"keybind":"key.use"},{"text":" to get a spawner","color":"gray"}]
execute as @a[nbt={SelectedItem:{tag:{map_dev_alt_action:1b}}},scores={temp_store.map_dev_alt_player_state=2}] run title @s actionbar ["",{"text":"Selecting: ","color":"gray"},{"translate":"something"},{"text":" - ","color":"gray"},{"keybind":"key.use"},{"text":" to get a spawner","color":"gray"}]

## main

## spawn point
execute as @a[nbt={SelectedItem:{tag:{map_dev_main_action:1b}}},scores={temp_store.map_dev_alt_player_state=0,temp_store.map_dev_player_state=0}] at @s if entity @e[tag=spawn_point,sort=nearest,limit=1,distance=..2.5] run title @s actionbar ["",{"text":"Press ","color":"gray"},{"keybind":"key.use","color":"red"},{"text":" to kill ","color":"gray"},{"selector":"@e[tag=spawn_point,sort=nearest,limit=1,distance=..2.5]","color":"red"}]
execute as @a[nbt={SelectedItem:{tag:{map_dev_main_action:1b}}},scores={temp_store.map_dev_alt_player_state=0,temp_store.map_dev_player_state=1}] at @s if entity @e[tag=spawn_point,sort=nearest,limit=1,distance=..2.5] run title @s actionbar ["",{"text":"Press ","color":"gray"},{"keybind":"key.use"},{"text":" to move up ","color":"gray"},{"selector":"@e[tag=spawn_point,sort=nearest,limit=1,distance=..2.5]"}]
execute as @a[nbt={SelectedItem:{tag:{map_dev_main_action:1b}}},scores={temp_store.map_dev_alt_player_state=0,temp_store.map_dev_player_state=2}] at @s if entity @e[tag=spawn_point,sort=nearest,limit=1,distance=..2.5] run title @s actionbar ["",{"text":"Press ","color":"gray"},{"keybind":"key.use"},{"text":" to move down ","color":"gray"},{"selector":"@e[tag=spawn_point,sort=nearest,limit=1,distance=..2.5]"}]

execute as @a[nbt={SelectedItem:{tag:{map_dev_main_action:1b}}},scores={temp_store.map_dev_alt_player_state=0}] at @s unless entity @e[tag=spawn_point,sort=nearest,limit=1,distance=..2.5] run title @s actionbar {"text":"No spawn_point close enough","color":"gray"}

## item spawner
execute as @a[nbt={SelectedItem:{tag:{map_dev_main_action:1b}}},scores={temp_store.map_dev_alt_player_state=1,temp_store.map_dev_player_state=0}] at @s if entity @e[tag=item_spawner.generic,sort=nearest,limit=1,distance=..2.5] run title @s actionbar ["",{"text":"Press ","color":"gray"},{"keybind":"key.use","color":"red"},{"text":" to kill ","color":"gray"},{"selector":"@e[tag=item_spawner.generic,sort=nearest,limit=1,distance=..2.5]","color":"red"}]
execute as @a[nbt={SelectedItem:{tag:{map_dev_main_action:1b}}},scores={temp_store.map_dev_alt_player_state=1,temp_store.map_dev_player_state=1}] at @s if entity @e[tag=item_spawner.generic,sort=nearest,limit=1,distance=..2.5] run title @s actionbar ["",{"text":"Press ","color":"gray"},{"keybind":"key.use"},{"text":" to move up ","color":"gray"},{"selector":"@e[tag=item_spawner.generic,sort=nearest,limit=1,distance=..2.5]"}]
execute as @a[nbt={SelectedItem:{tag:{map_dev_main_action:1b}}},scores={temp_store.map_dev_alt_player_state=1,temp_store.map_dev_player_state=2}] at @s if entity @e[tag=item_spawner.generic,sort=nearest,limit=1,distance=..2.5] run title @s actionbar ["",{"text":"Press ","color":"gray"},{"keybind":"key.use"},{"text":" to move down ","color":"gray"},{"selector":"@e[tag=item_spawner.generic,sort=nearest,limit=1,distance=..2.5]"}]

execute as @a[nbt={SelectedItem:{tag:{map_dev_main_action:1b}}},scores={temp_store.map_dev_alt_player_state=1}] at @s unless entity @e[tag=item_spawner.generic,sort=nearest,limit=1,distance=..2.5] run title @s actionbar {"text":"No item_spawner.generic close enough","color":"gray"}