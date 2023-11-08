# LASERTAG player
## crouch trigger


tag @s add temp_store.crouch_cooldown

# map dev?
execute if score map_dev_mode internal matches 1.. if entity @s[nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick"}}] run playsound tag:menu.tick player @s ~ ~ ~
execute if score map_dev_mode internal matches 1.. if entity @s[nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick"}}] run scoreboard players add @s temp_store.map_dev_player_state 1
execute if score map_dev_mode internal matches 1.. if entity @s[nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick"}}] if score @s temp_store.map_dev_player_state >= max_map_dev_player_state internal run scoreboard players operation @s temp_store.map_dev_player_state = min_map_dev_player_state internal