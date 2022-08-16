# LASERTAG crossbow
## MACHINE
## timer (in ticks)


# announce
execute if score @s crossbow_machine.shots >= crossbow_machine.ammo internal run title @s[nbt={SelectedItem:{id:"minecraft:crossbow",Count:1b,tag:{crossbow_type:"machine"}}}] actionbar ["",{"text":"Ammo: "},{"score":{"objective":"crossbow_machine.shots_remaining","name":"@s"},"color":"green","bold":true},"/",{"score":{"objective":"internal","name":"crossbow_machine.ammo"},"color":"green","bold":true},{"text":" \u0020 \u0020Reloading!"}]

scoreboard players add @s crossbow_machine.time 1

# re-charge
## not out of ammo
execute unless score @s crossbow_machine.shots >= crossbow_machine.ammo internal if score @s crossbow_machine.time >= crossbow_machine.delay internal run function tag:system/crossbow/machine/charge
## out of ammo
execute if score @s crossbow_machine.shots >= crossbow_machine.ammo internal if score @s crossbow_machine.time >= crossbow_machine.recharge internal run function tag:system/crossbow/machine/reload