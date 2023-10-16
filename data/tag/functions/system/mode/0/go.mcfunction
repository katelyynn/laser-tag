# LASERTAG start
## based on mode
## 0: classic
## 1: oitc
## 2: critical


# game type
## 0: solos
## 1: teams
execute if score game_type global matches 1 as @a[team=red] run function tag:create/armour/red
execute if score game_type global matches 1 as @a[team=blue] run function tag:create/armour/blue