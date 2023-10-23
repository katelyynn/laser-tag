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
execute if entity @s[scores={player.ingame=1..}] if entity @s[nbt=!{SelectedItem:{id:"minecraft:crossbow",Count:1b,tag:{canReload:1b,weaponItem:1b}}}] run title @s actionbar ["",{"translate":"player.score"},": ",{"score":{"name":"@s","objective":"player.score"},"color":"yellow","bold":true},{"text":"/","color":"gray"},{"score":{"name":"win_score","objective":"global"},"color":"#FFB32F"}," \u0020 \u0020",{"translate":"player.kills"},": ",{"score":{"objective":"player.kills","name":"@s"},"color":"#BC4D4D","bold":true}]

# lobby actionbar
## TODO: relocate this somewhere better

# coins
## copper
execute if score @s temp_store.leaderboard.coins.display matches 0..999 if score @s player.ready matches 1.. unless entity @s[scores={player.ingame=1..}] if entity @s[nbt=!{SelectedItem:{id:"minecraft:crossbow",Count:1b,tag:{canReload:1b,weaponItem:1b}}}] run title @s actionbar ["",{"text":"⑪ ","color":"#CC692C"},{"score":{"name":"@s","objective":"temp_store.leaderboard.coins.display"},"color":"#CC692C"}," ",{"translate":"player.coins","color":"#CC692C"},{"text":" \u0020 "},{"translate":"player.ready","color":"#94FC94"}]
execute if score @s temp_store.leaderboard.coins.display matches 0..999 unless score @s player.ready matches 1.. unless entity @s[scores={player.ingame=1..}] if entity @s[nbt=!{SelectedItem:{id:"minecraft:crossbow",Count:1b,tag:{canReload:1b,weaponItem:1b}}}] run title @s actionbar ["",{"text":"⑪ ","color":"#CC692C"},{"score":{"name":"@s","objective":"temp_store.leaderboard.coins.display"},"color":"#CC692C"}," ",{"translate":"player.coins","color":"#CC692C"},{"text":" \u0020 "},{"translate":"player.unready","color":"#565663"}]
## silver
execute if score @s temp_store.leaderboard.coins.display matches 1000..9999 if score @s player.ready matches 1.. unless entity @s[scores={player.ingame=1..}] if entity @s[nbt=!{SelectedItem:{id:"minecraft:crossbow",Count:1b,tag:{canReload:1b,weaponItem:1b}}}] run title @s actionbar ["",{"text":"⑫ ","color":"#A8B5B5"},{"score":{"name":"@s","objective":"temp_store.leaderboard.coins.display"},"color":"#A8B5B5"}," ",{"translate":"player.coins","color":"#A8B5B5"},{"text":" \u0020 "},{"translate":"player.ready","color":"#94FC94"}]
execute if score @s temp_store.leaderboard.coins.display matches 1000..9999 unless score @s player.ready matches 1.. unless entity @s[scores={player.ingame=1..}] if entity @s[nbt=!{SelectedItem:{id:"minecraft:crossbow",Count:1b,tag:{canReload:1b,weaponItem:1b}}}] run title @s actionbar ["",{"text":"⑫ ","color":"#A8B5B5"},{"score":{"name":"@s","objective":"temp_store.leaderboard.coins.display"},"color":"#A8B5B5"}," ",{"translate":"player.coins","color":"#A8B5B5"},{"text":" \u0020 "},{"translate":"player.unready","color":"#565663"}]
## gold
execute if score @s temp_store.leaderboard.coins.display matches 10000..49999 if score @s player.ready matches 1.. unless entity @s[scores={player.ingame=1..}] if entity @s[nbt=!{SelectedItem:{id:"minecraft:crossbow",Count:1b,tag:{canReload:1b,weaponItem:1b}}}] run title @s actionbar ["",{"text":"⑨ ","color":"#EBD779"},{"score":{"name":"@s","objective":"temp_store.leaderboard.coins.display"},"color":"#EBD779"}," ",{"translate":"player.coins","color":"#EBD779"},{"text":" \u0020 "},{"translate":"player.ready","color":"#94FC94"}]
execute if score @s temp_store.leaderboard.coins.display matches 10000..49999 unless score @s player.ready matches 1.. unless entity @s[scores={player.ingame=1..}] if entity @s[nbt=!{SelectedItem:{id:"minecraft:crossbow",Count:1b,tag:{canReload:1b,weaponItem:1b}}}] run title @s actionbar ["",{"text":"⑨ ","color":"#EBD779"},{"score":{"name":"@s","objective":"temp_store.leaderboard.coins.display"},"color":"#EBD779"}," ",{"translate":"player.coins","color":"#EBD779"},{"text":" \u0020 "},{"translate":"player.unready","color":"#565663"}]
## platinum
execute if score @s temp_store.leaderboard.coins.display matches 50000.. if score @s player.ready matches 1.. unless entity @s[scores={player.ingame=1..}] if entity @s[nbt=!{SelectedItem:{id:"minecraft:crossbow",Count:1b,tag:{canReload:1b,weaponItem:1b}}}] run title @s actionbar ["",{"text":"⑬ ","color":"#D6C5E4"},{"score":{"name":"@s","objective":"temp_store.leaderboard.coins.display"},"color":"#D6C5E4"}," ",{"translate":"player.coins","color":"#D6C5E4"},{"text":" \u0020 "},{"translate":"player.ready","color":"#94FC94"}]
execute if score @s temp_store.leaderboard.coins.display matches 50000.. unless score @s player.ready matches 1.. unless entity @s[scores={player.ingame=1..}] if entity @s[nbt=!{SelectedItem:{id:"minecraft:crossbow",Count:1b,tag:{canReload:1b,weaponItem:1b}}}] run title @s actionbar ["",{"text":"⑬ ","color":"#D6C5E4"},{"score":{"name":"@s","objective":"temp_store.leaderboard.coins.display"},"color":"#D6C5E4"}," ",{"translate":"player.coins","color":"#D6C5E4"},{"text":" \u0020 "},{"translate":"player.unready","color":"#565663"}]