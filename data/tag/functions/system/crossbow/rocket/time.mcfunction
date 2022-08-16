# LASERTAG crossbow
## ROCKET
## timer (in ticks)


# announce
execute if score @s crossbow_rocket.shots >= crossbow_rocket.ammo internal run title @s[nbt={SelectedItem:{id:"minecraft:crossbow",Count:1b,tag:{crossbow_type:"rocket"}}}] actionbar ["",{"text":"Ammo: "},{"score":{"objective":"crossbow_rocket.shots_remaining","name":"@s"},"color":"green","bold":true},"/",{"score":{"objective":"internal","name":"crossbow_rocket.ammo"},"color":"green","bold":true},{"text":" \u0020 \u0020Reloading!"}]

scoreboard players add @s crossbow_rocket.time 1

# re-charge
## not out of ammo
execute unless score @s crossbow_rocket.shots >= crossbow_rocket.ammo internal if score @s crossbow_rocket.time >= crossbow_rocket.delay internal run function tag:system/crossbow/rocket/charge
## out of ammo
execute if score @s crossbow_rocket.shots >= crossbow_rocket.ammo internal if score @s crossbow_rocket.time >= crossbow_rocket.recharge internal run function tag:system/crossbow/rocket/reload