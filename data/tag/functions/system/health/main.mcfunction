# LASERTAG health


# track hunger
execute if score @s health.hunger matches ..10 run function tag:system/health/reset_up

# items
## apple
execute if score @s health.apple matches 1.. run function tag:system/health/apple
## golden apple
execute if score @s health.golden_apple matches 1.. run function tag:system/health/golden_apple