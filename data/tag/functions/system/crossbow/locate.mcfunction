# LASERTAG crossbow
## locate in inventory


scoreboard players set @s crossbow.slot_temp 0

# run through slots
## slot 0
execute store result score @s crossbow.slot_temp run data get entity @s {Inventory:[{id:"minecraft:crossbow",Slot:0b}]}
execute if score @s crossbow.slot_temp matches 1.. run scoreboard players set @s crossbow.slot 0
## slot 1
execute store result score @s crossbow.slot_temp run data get entity @s {Inventory:[{id:"minecraft:crossbow",Slot:1b}]}
execute if score @s crossbow.slot_temp matches 1.. run scoreboard players set @s crossbow.slot 1
## slot 2
execute store result score @s crossbow.slot_temp run data get entity @s {Inventory:[{id:"minecraft:crossbow",Slot:2b}]}
execute if score @s crossbow.slot_temp matches 1.. run scoreboard players set @s crossbow.slot 2
## slot 3
execute store result score @s crossbow.slot_temp run data get entity @s {Inventory:[{id:"minecraft:crossbow",Slot:3b}]}
execute if score @s crossbow.slot_temp matches 1.. run scoreboard players set @s crossbow.slot 3
## slot 4
execute store result score @s crossbow.slot_temp run data get entity @s {Inventory:[{id:"minecraft:crossbow",Slot:4b}]}
execute if score @s crossbow.slot_temp matches 1.. run scoreboard players set @s crossbow.slot 4
## slot 5
execute store result score @s crossbow.slot_temp run data get entity @s {Inventory:[{id:"minecraft:crossbow",Slot:5b}]}
execute if score @s crossbow.slot_temp matches 1.. run scoreboard players set @s crossbow.slot 5
## slot 6
execute store result score @s crossbow.slot_temp run data get entity @s {Inventory:[{id:"minecraft:crossbow",Slot:6b}]}
execute if score @s crossbow.slot_temp matches 1.. run scoreboard players set @s crossbow.slot 6
## slot 7
execute store result score @s crossbow.slot_temp run data get entity @s {Inventory:[{id:"minecraft:crossbow",Slot:7b}]}
execute if score @s crossbow.slot_temp matches 1.. run scoreboard players set @s crossbow.slot 7
## slot 8
execute store result score @s crossbow.slot_temp run data get entity @s {Inventory:[{id:"minecraft:crossbow",Slot:8b}]}
execute if score @s crossbow.slot_temp matches 1.. run scoreboard players set @s crossbow.slot 8

# no crossbow
execute unless score @s crossbow.slot_temp matches 1.. run function tag:system/crossbow/give