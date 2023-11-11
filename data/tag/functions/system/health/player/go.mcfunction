# TAG health player
## on health change


tag @s add self_health

# particle
particle minecraft:block redstone_block ~ ~1 ~ 0 0 0 0.1 10 normal @a[tag=!self_health]

scoreboard players operation @s temp_store.health.hp = @s health.hp
tag @s remove self_health