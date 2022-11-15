# LASERTAG crossbow
## main loop


# timer
## NORMAL
execute unless score @s crossbow_normal.time matches -1 run function tag:system/crossbow/normal/time
execute if score @s crossbow_normal.time matches -1..0 run function tag:system/crossbow/normal/display
## MACHINE
execute unless score @s crossbow_machine.time matches -1 run function tag:system/crossbow/machine/time
execute if score @s crossbow_machine.time matches -1..0 run function tag:system/crossbow/machine/display
## ROCKET
execute unless score @s crossbow_rocket.time matches -1 run function tag:system/crossbow/rocket/time
execute if score @s crossbow_rocket.time matches -1..0 run function tag:system/crossbow/rocket/display

# clear actionbar
execute unless score period internal matches -1 if entity @s[nbt=!{SelectedItem:{id:"minecraft:crossbow",Count:1b,tag:{crossbow_type:"machine"}}},nbt=!{SelectedItem:{id:"minecraft:crossbow",Count:1b,tag:{crossbow_type:"normal"}}},nbt=!{SelectedItem:{id:"minecraft:crossbow",Count:1b,tag:{crossbow_type:"rocket"}}}] run title @s actionbar ["",{"text":"Score: "},{"score":{"name":"@s","objective":"player.score"},"color":"yellow"}]

# lobby actionbar
execute if score period internal matches -1 if entity @s[nbt=!{SelectedItem:{id:"minecraft:crossbow",Count:1b,tag:{crossbow_type:"machine"}}},nbt=!{SelectedItem:{id:"minecraft:crossbow",Count:1b,tag:{crossbow_type:"normal"}}},nbt=!{SelectedItem:{id:"minecraft:crossbow",Count:1b,tag:{crossbow_type:"rocket"}}}] run title @s actionbar ["",{"text":"Score: "},{"score":{"name":"@s","objective":"leaderboard.score"},"color":"yellow"},{"text":"  ④ "},{"score":{"name":"@s","objective":"leaderboard.wins"},"color":"yellow"},{"text":"  ③ "},{"score":{"name":"@s","objective":"leaderboard.kills"},"color":"yellow"},{"text":"  ⑤ "},{"score":{"name":"@s","objective":"leaderboard.deaths"},"color":"yellow"}]