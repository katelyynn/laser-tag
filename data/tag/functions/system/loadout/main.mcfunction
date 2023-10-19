# LASERTAG loadout
## main loop


# weapons
## normal
execute store result score @s temp_store.crossbow_normal run clear @s minecraft:crossbow{crossbow_type:"normal"} 0
execute unless score @s temp_store.crossbow_normal matches 1 run clear @s minecraft:crossbow{crossbow_type:"normal"} 1
execute unless score @s temp_store.crossbow_normal matches 1 if entity @e[tag=item_spawner.crossbow_normal,distance=..3] run execute as @e[tag=item_spawner.crossbow_normal,distance=..3,scores={item_spawner.state=1}] at @s unless entity @e[type=item,distance=..1.5] run function tag:system/spawner/summon/crossbow_normal
#execute unless score @s temp_store.crossbow_normal matches 1 run function tag:create/weapon/crossbow_normal
## machine
execute store result score @s temp_store.crossbow_machine run clear @s minecraft:crossbow{crossbow_type:"machine"} 0
execute unless score @s temp_store.crossbow_machine matches 1 run clear @s minecraft:crossbow{crossbow_type:"machine"} 1
execute unless score @s temp_store.crossbow_machine matches 1 if entity @e[tag=item_spawner.crossbow_machine,distance=..3] run execute as @e[tag=item_spawner.crossbow_machine,distance=..3,scores={item_spawner.state=1}] at @s unless entity @e[type=item,distance=..1.5] run function tag:system/spawner/summon/crossbow_machine
#execute unless score @s temp_store.crossbow_normal matches 1 run function tag:create/weapon/crossbow_normal
## rocket
execute store result score @s temp_store.crossbow_rocket run clear @s minecraft:crossbow{crossbow_type:"rocket"} 0
execute unless score @s temp_store.crossbow_rocket matches 1 run clear @s minecraft:crossbow{crossbow_type:"rocket"} 1
execute unless score @s temp_store.crossbow_rocket matches 1 if entity @e[tag=item_spawner.crossbow_rocket,distance=..3] run execute as @e[tag=item_spawner.crossbow_rocket,distance=..3,scores={item_spawner.state=1}] at @s unless entity @e[type=item,distance=..1.5] run function tag:system/spawner/summon/crossbow_rocket
#execute unless score @s temp_store.crossbow_normal matches 1 run function tag:create/weapon/crossbow_normal
## poison
execute store result score @s temp_store.crossbow_poison run clear @s minecraft:crossbow{crossbow_type:"poison"} 0
execute unless score @s temp_store.crossbow_poison matches 1 run clear @s minecraft:crossbow{crossbow_type:"poison"} 1
execute unless score @s temp_store.crossbow_poison matches 1 if entity @e[tag=item_spawner.crossbow_poison,distance=..3] run execute as @e[tag=item_spawner.crossbow_poison,distance=..3,scores={item_spawner.state=1}] at @s unless entity @e[type=item,distance=..1.5] run function tag:system/spawner/summon/crossbow_poison
#execute unless score @s temp_store.crossbow_normal matches 1 run function tag:create/weapon/crossbow_normal
## glowing
execute store result score @s temp_store.crossbow_glowing run clear @s minecraft:crossbow{crossbow_type:"glowing"} 0
execute unless score @s temp_store.crossbow_glowing matches 1 run clear @s minecraft:crossbow{crossbow_type:"glowing"} 1
execute unless score @s temp_store.crossbow_glowing matches 1 if entity @e[tag=item_spawner.crossbow_glowing,distance=..3] run execute as @e[tag=item_spawner.crossbow_glowing,distance=..3,scores={item_spawner.state=1}] at @s unless entity @e[type=item,distance=..1.5] run function tag:system/spawner/summon/crossbow_glowing
#execute unless score @s temp_store.crossbow_normal matches 1 run function tag:create/weapon/crossbow_normal
## knife
execute store result score @s temp_store.knife run clear @s minecraft:iron_sword{melee_type:"knife"} 0
execute unless score @s temp_store.knife matches 1 run clear @s minecraft:iron_sword{melee_type:"knife"} 1
execute unless score @s temp_store.knife matches 1 if entity @e[tag=item_spawner.knife,distance=..3] run execute as @e[tag=item_spawner.knife,distance=..3,scores={item_spawner.state=1}] at @s unless entity @e[type=item,distance=..1.5] run function tag:system/spawner/summon/knife
#execute unless score @s temp_store.crossbow_normal matches 1 run function tag:create/weapon/crossbow_normal