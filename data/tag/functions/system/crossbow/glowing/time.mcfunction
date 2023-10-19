# LASERTAG crossbow
## GLOWING
## timer (in ticks)


# announce
execute if score @s crossbow_glowing.shots >= crossbow_glowing.ammo internal run title @s[nbt={SelectedItem:{id:"minecraft:crossbow",Count:1b,tag:{crossbow_type:"glowing"}}}] actionbar ["",{"text":"Score: "},{"score":{"name":"@s","objective":"player.score"},"color":"yellow"},{"text":" \u0020 \u0020Ammo: "},{"score":{"objective":"crossbow_glowing.shots_remaining","name":"@s"},"color":"gray","bold":true},"/",{"score":{"objective":"internal","name":"crossbow_glowing.ammo"},"color":"gray","bold":true},{"text":" \u0020 \u0020Reloading!"}]

scoreboard players add @s crossbow_glowing.time 1

# re-charge
## not out of ammo
execute unless score @s crossbow_glowing.shots >= crossbow_glowing.ammo internal if score @s crossbow_glowing.time >= crossbow_glowing.delay internal run function tag:system/crossbow/glowing/charge
## out of ammo
execute if score @s crossbow_glowing.shots >= crossbow_glowing.ammo internal if score @s crossbow_glowing.time >= crossbow_glowing.recharge internal run function tag:system/crossbow/glowing/reload