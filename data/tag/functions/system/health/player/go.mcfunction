# TAG health player
## on health change


tag @s add self_health

# particle
particle ambient_entity_effect ~ ~1 ~ 0.490 0.153 0.153 1 0 normal @a[tag=!self_health]

scoreboard players operation @s temp_store.health.hp = @s health.hp
tag @s remove self_health