# LASERTAG loadout
## give default player loadout


execute if score knife loadout matches 1.. run function tag:create/weapon/knife
execute if score crossbow_normal loadout matches 1.. run function tag:create/weapon/crossbow_normal
execute if score crossbow_machine loadout matches 1.. run function tag:create/weapon/crossbow_machine
execute if score crossbow_rocket loadout matches 1.. run function tag:create/weapon/crossbow_rocket
execute if score crossbow_poison loadout matches 1.. run function tag:create/weapon/crossbow_poison