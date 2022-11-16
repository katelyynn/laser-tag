# LASERTAG teams
## manages team-related things


# display current team
## red
execute if entity @s[team=red] unless score @s team.displayed_red matches 1.. run function tag:create/armour/red
## blue
execute if entity @s[team=blue] unless score @s team.displayed_blue matches 1.. run function tag:create/armour/blue
## none
execute if entity @s[team=!red,team=!blue] unless score @s team.displayed_reset matches 1.. run function tag:system/team/reset_armour
execute if entity @s[team=!red,team=!blue] run function tag:system/team/reset_display
execute unless score mode global matches 1 run function tag:system/team/reset_display