# LASERTAG crossbow
## GLOWING
## break


advancement revoke @s only tag:crossbow/shoot_glowing

# sfx
playsound block.wood.break player @s

# clear unloaded
clear @s crossbow{weaponItem:1b,CustomModelData:3,crossbow_type:"glowing"}

# disable timer until shot
scoreboard players set @s crossbow_glowing.time -1
scoreboard players set @s crossbow_glowing.shots 0

execute if score logs internal matches 1 run say "Reloaded Spectral Crossbow"