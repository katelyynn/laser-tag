# LASERTAG teams
## reset armour when no team


## helmet
item replace entity @s armor.head with air
## chestplate
item replace entity @s armor.chest with air
## leggings
item replace entity @s armor.legs with air
## boots
item replace entity @s armor.feet with air

# reset
scoreboard players set @s team.displayed_reset 1
scoreboard players reset @s team.displayed_red
scoreboard players reset @s team.displayed_blue