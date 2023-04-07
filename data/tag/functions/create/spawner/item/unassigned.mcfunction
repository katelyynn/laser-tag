give @s bat_spawn_egg{display:{Name:'{"text":"item_spawner.unassigned","italic":false}'},EntityTag:{id:"minecraft:area_effect_cloud",Particle:"block air",Radius:0f,Age:2147483647,Tags:["item_spawner.generic","item_spawner.unassigned"]}} 1
tellraw @s {"text":"This item spawner will automatically be assigned a random item on game start. Any manual changes will be overridden.","color":"light_purple"}

# Radius:0f            = removes initial black particles upon spawn
# Particle:"block air" = removes the static particles
# Age:2147483647       = makes the entity never despawn