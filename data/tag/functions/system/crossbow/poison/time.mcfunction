# LASERTAG crossbow
## poison
## timer (in ticks)


# announce
execute if score @s crossbow_poison.shots >= crossbow_poison.ammo internal run title @s[nbt={SelectedItem:{id:"minecraft:crossbow",Count:1b,tag:{crossbow_type:"poison"}}}] actionbar ["",{"text":"Score: "},{"score":{"name":"@s","objective":"player.score"},"color":"yellow"},{"text":" \u0020 \u0020Ammo: "},{"score":{"objective":"crossbow_poison.shots_remaining","name":"@s"},"color":"gray","bold":true},"/",{"score":{"objective":"internal","name":"crossbow_poison.ammo"},"color":"gray","bold":true},{"text":" \u0020 \u0020Reloading!"}]

scoreboard players add @s crossbow_poison.time 1

# re-charge
## not out of ammo
execute unless score @s crossbow_poison.shots >= crossbow_poison.ammo internal if score @s crossbow_poison.time >= crossbow_poison.delay internal run function tag:system/crossbow/poison/charge
## out of ammo
execute if score @s crossbow_poison.shots >= crossbow_poison.ammo internal if score @s crossbow_poison.time >= crossbow_poison.recharge internal run function tag:system/crossbow/poison/reload