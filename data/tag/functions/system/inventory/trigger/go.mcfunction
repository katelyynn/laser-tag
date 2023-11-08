# LASERTAG inventory trigger item
## on right click of carrot on a stick


# toggle ready status
## ready
execute unless score @s player.ready matches 1.. if entity @s[nbt={SelectedItem:{tag:{readyItem:1b}}}] run function tag:system/ready/enable
## unready
execute if score @s player.ready matches 1.. if entity @s[nbt={SelectedItem:{tag:{unreadyItem:1b}}}] run function tag:system/ready/disable


# map dev
## alt action
execute if entity @s[nbt={SelectedItem:{tag:{map_dev_alt_action:1b}}}] if score @s temp_store.map_dev_alt_player_state matches 0 run function tag:create/map/spawn
execute if entity @s[nbt={SelectedItem:{tag:{map_dev_alt_action:1b}}}] if score @s temp_store.map_dev_alt_player_state matches 1 run function tag:create/spawner/item/crossbow_normal
execute if entity @s[nbt={SelectedItem:{tag:{map_dev_alt_action:1b}}}] if score @s temp_store.map_dev_alt_player_state matches 1 run function tag:create/spawner/item/crossbow_machine
execute if entity @s[nbt={SelectedItem:{tag:{map_dev_alt_action:1b}}}] if score @s temp_store.map_dev_alt_player_state matches 1 run function tag:create/spawner/item/crossbow_rocket
execute if entity @s[nbt={SelectedItem:{tag:{map_dev_alt_action:1b}}}] if score @s temp_store.map_dev_alt_player_state matches 1 run function tag:create/spawner/item/crossbow_poison
execute if entity @s[nbt={SelectedItem:{tag:{map_dev_alt_action:1b}}}] if score @s temp_store.map_dev_alt_player_state matches 1 run function tag:create/spawner/item/crossbow_glowing
execute if entity @s[nbt={SelectedItem:{tag:{map_dev_alt_action:1b}}}] if score @s temp_store.map_dev_alt_player_state matches 2 run function tag:create/spawner/item/coin

## main action

## spawn point
execute if entity @s[nbt={SelectedItem:{tag:{map_dev_main_action:1b}}}] if score @s temp_store.map_dev_alt_player_state matches 0 if score @s temp_store.map_dev_player_state matches 0 run function tag:dev/destroy_spawn
execute if entity @s[nbt={SelectedItem:{tag:{map_dev_main_action:1b}}}] if score @s temp_store.map_dev_alt_player_state matches 0 if score @s temp_store.map_dev_player_state matches 1 run function tag:dev/move_spawn_up
execute if entity @s[nbt={SelectedItem:{tag:{map_dev_main_action:1b}}}] if score @s temp_store.map_dev_alt_player_state matches 0 if score @s temp_store.map_dev_player_state matches 2 run function tag:dev/move_spawn_down

## item spawner
execute if entity @s[nbt={SelectedItem:{tag:{map_dev_main_action:1b}}}] if score @s temp_store.map_dev_alt_player_state matches 1 if score @s temp_store.map_dev_player_state matches 0 run function tag:dev/destroy_item_spawner
execute if entity @s[nbt={SelectedItem:{tag:{map_dev_main_action:1b}}}] if score @s temp_store.map_dev_alt_player_state matches 1 if score @s temp_store.map_dev_player_state matches 1 run function tag:dev/move_item_spawner_up
execute if entity @s[nbt={SelectedItem:{tag:{map_dev_main_action:1b}}}] if score @s temp_store.map_dev_alt_player_state matches 1 if score @s temp_store.map_dev_player_state matches 2 run function tag:dev/move_item_spawner_down