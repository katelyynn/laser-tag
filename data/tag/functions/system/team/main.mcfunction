# LASERTAG teams
## manages team-related things


# display current team
## red
execute if entity @s[team=red] unless score @s team.displayed_red matches 1.. run function tag:create/armour/red
## blue
execute if entity @s[team=blue] unless score @s team.displayed_blue matches 1.. run function tag:create/armour/blue