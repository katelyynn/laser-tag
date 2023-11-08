# LASERTAG inventory trigger item
## on right click of carrot on a stick


# toggle ready status
## ready
execute unless score @s player.ready matches 1.. if entity @s[nbt={SelectedItem:{tag:{readyItem:1b}}}] run function tag:system/ready/enable
## unready
execute if score @s player.ready matches 1.. if entity @s[nbt={SelectedItem:{tag:{unreadyItem:1b}}}] run function tag:system/ready/disable


# map dev
## alt action
execute if entity @s[nbt={SelectedItem:{tag:{map_dev_main_action:1b}}}] if score @s temp_store.map_dev_alt_player_state matches 0 if score @s temp_store.map_dev_player_state matches 0 run function tag:dev/destroy_spawn
execute if entity @s[nbt={SelectedItem:{tag:{map_dev_main_action:1b}}}] if score @s temp_store.map_dev_alt_player_state matches 0 if score @s temp_store.map_dev_player_state matches 1 run function tag:dev/move_spawn_up
execute if entity @s[nbt={SelectedItem:{tag:{map_dev_main_action:1b}}}] if score @s temp_store.map_dev_alt_player_state matches 0 if score @s temp_store.map_dev_player_state matches 2 run function tag:dev/move_spawn_down