# LASERTAG crossbow
## NORMAL
## timer (in ticks)


# announce
execute if score @s crossbow_normal.shots >= crossbow_normal.ammo internal run title @s[nbt={SelectedItem:{id:"minecraft:crossbow",Count:1b,tag:{crossbow_type:"normal"}}}] actionbar ["",{"text":"Reloading!"}]

scoreboard players add @s crossbow_normal.time 1

# re-charge
## not out of ammo
execute unless score @s crossbow_normal.shots >= crossbow_normal.ammo internal if score @s crossbow_normal.time >= crossbow_normal.delay internal run function tag:system/crossbow/normal/charge
## out of ammo
execute if score @s crossbow_normal.shots >= crossbow_normal.ammo internal if score @s crossbow_normal.time >= crossbow_normal.recharge internal run function tag:system/crossbow/normal/reload