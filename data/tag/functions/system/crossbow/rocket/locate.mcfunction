# LASERTAG crossbow
## ROCKET
## locate in inventory


scoreboard players set @s crossbow_rocket.slot_temp 0

# run through slots
## slot 0
execute store result score @s crossbow_rocket.slot_temp run data get entity @s {Inventory:[{id:"minecraft:crossbow",Slot:0b,tag:{crossbow_type:"rocket"}}]}
execute if score @s crossbow_rocket.slot_temp matches 1.. run scoreboard players set @s crossbow_rocket.slot 0
## slot 1
execute store result score @s crossbow_rocket.slot_temp run data get entity @s {Inventory:[{id:"minecraft:crossbow",Slot:1b,tag:{crossbow_type:"rocket"}}]}
execute if score @s crossbow_rocket.slot_temp matches 1.. run scoreboard players set @s crossbow_rocket.slot 1
## slot 2
execute store result score @s crossbow_rocket.slot_temp run data get entity @s {Inventory:[{id:"minecraft:crossbow",Slot:2b,tag:{crossbow_type:"rocket"}}]}
execute if score @s crossbow_rocket.slot_temp matches 1.. run scoreboard players set @s crossbow_rocket.slot 2
## slot 3
execute store result score @s crossbow_rocket.slot_temp run data get entity @s {Inventory:[{id:"minecraft:crossbow",Slot:3b,tag:{crossbow_type:"rocket"}}]}
execute if score @s crossbow_rocket.slot_temp matches 1.. run scoreboard players set @s crossbow_rocket.slot 3
## slot 4
execute store result score @s crossbow_rocket.slot_temp run data get entity @s {Inventory:[{id:"minecraft:crossbow",Slot:4b,tag:{crossbow_type:"rocket"}}]}
execute if score @s crossbow_rocket.slot_temp matches 1.. run scoreboard players set @s crossbow_rocket.slot 4
## slot 5
execute store result score @s crossbow_rocket.slot_temp run data get entity @s {Inventory:[{id:"minecraft:crossbow",Slot:5b,tag:{crossbow_type:"rocket"}}]}
execute if score @s crossbow_rocket.slot_temp matches 1.. run scoreboard players set @s crossbow_rocket.slot 5
## slot 6
execute store result score @s crossbow_rocket.slot_temp run data get entity @s {Inventory:[{id:"minecraft:crossbow",Slot:6b,tag:{crossbow_type:"rocket"}}]}
execute if score @s crossbow_rocket.slot_temp matches 1.. run scoreboard players set @s crossbow_rocket.slot 6
## slot 7
execute store result score @s crossbow_rocket.slot_temp run data get entity @s {Inventory:[{id:"minecraft:crossbow",Slot:7b,tag:{crossbow_type:"rocket"}}]}
execute if score @s crossbow_rocket.slot_temp matches 1.. run scoreboard players set @s crossbow_rocket.slot 7
## slot 8
execute store result score @s crossbow_rocket.slot_temp run data get entity @s {Inventory:[{id:"minecraft:crossbow",Slot:8b,tag:{crossbow_type:"rocket"}}]}
execute if score @s crossbow_rocket.slot_temp matches 1.. run scoreboard players set @s crossbow_rocket.slot 8