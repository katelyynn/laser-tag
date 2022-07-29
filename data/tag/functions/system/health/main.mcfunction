# LASERTAG health


function tag:system/health/reset

## apple
execute if score @s health.apple matches 1.. run function tag:system/health/apple
## golden apple
execute if score @s health.golden_apple matches 1.. run function tag:system/health/golden_apple