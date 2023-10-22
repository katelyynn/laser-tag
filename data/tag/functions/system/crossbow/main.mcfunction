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
## POISON
execute unless score @s crossbow_poison.time matches -1 run function tag:system/crossbow/poison/time
execute if score @s crossbow_poison.time matches -1..0 run function tag:system/crossbow/poison/display
## GLOWING
execute unless score @s crossbow_glowing.time matches -1 run function tag:system/crossbow/glowing/time
execute if score @s crossbow_glowing.time matches -1..0 run function tag:system/crossbow/glowing/display

# clear actionbar
execute unless score period internal matches -1 if entity @s[nbt=!{SelectedItem:{id:"minecraft:crossbow",Count:1b,tag:{canReload:1b,weaponItem:1b}}}] run title @s actionbar ["",{"text":"Score: "},{"score":{"name":"@s","objective":"player.score"},"color":"yellow","bold":true},{"text":"/","color":"gray"},{"score":{"name":"win_score","objective":"global"},"color":"#FFB32F"},{"text":" \u0020 \u0020Kills: "},{"score":{"objective":"player.kills","name":"@s"},"color":"#BC4D4D","bold":true}]

# lobby actionbar
## TODO: relocate this somewhere better
## ready
execute if score period internal matches -1 if entity @s[nbt=!{SelectedItem:{id:"minecraft:crossbow",Count:1b,tag:{canReload:1b,weaponItem:1b}}}] if score @s player.ready matches 1.. run title @s actionbar ["",{"text":"Coins: "},{"score":{"name":"@s","objective":"leaderboard.coins"},"color":"#EEDA7A"},{"text":" \u0020 "},{"text":"Ready","color":"#94FC94"}]
## unready
execute if score period internal matches -1 if entity @s[nbt=!{SelectedItem:{id:"minecraft:crossbow",Count:1b,tag:{canReload:1b,weaponItem:1b}}}] unless score @s player.ready matches 1.. run title @s actionbar ["",{"text":"Coins: "},{"score":{"name":"@s","objective":"leaderboard.coins"},"color":"#EEDA7A"},{"text":" \u0020 "},{"text":"Not ready","color":"#565663"}]