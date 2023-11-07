# LASERTAG death


tag @s add self
summon area_effect_cloud ~ ~ ~ {Particle:"block air",Radius:0f,Age:2147483647,Tags:["self_pos"]}

execute as @e[tag=self_pos,limit=1] store result entity @s Pos[0] double 1 run scoreboard players get @a[tag=self,limit=1] temp_store.player_alive.x
execute as @e[tag=self_pos,limit=1] store result entity @s Pos[1] double 1 run scoreboard players get @a[tag=self,limit=1] temp_store.player_alive.y
execute as @e[tag=self_pos,limit=1] store result entity @s Pos[2] double 1 run scoreboard players get @a[tag=self,limit=1] temp_store.player_alive.z
execute as @e[tag=self_pos,limit=1] at @s run particle minecraft:item gold_ingot ~ ~0.7 ~ 0 0.3 0 0.025 40
kill @e[tag=self_pos,limit=1]

# clear items
## only necessary if `keepInventory` is enabled
clear @s

# decrease score
scoreboard players operation @s player.score += score.death global

# announce
## direct death is handled via kill/go
execute unless entity @a[scores={player.direct_death=1..}] run tellraw @a[tag=!self] ["",{"text":"[","color":"dark_gray"},{"text":"🗡","color":"#FB7C3F"},{"text":"] ","color":"dark_gray"},{"selector":"@s"},{"text":" › ","color":"gray"},{"selector":"@s"}]
execute unless entity @a[scores={player.direct_death=1..}] run tellraw @s ""
execute unless entity @a[scores={player.direct_death=1..}] run tellraw @s ["",{"text":"[","color":"red"},{"text":"🗡","color":"#FB7C3F"},{"text":"] ","color":"red"},{"selector":"@s"},{"text":" › ","color":"gray"},{"selector":"@s"}]
## suicides are handled here
execute if score @s player.direct_death matches 1.. unless entity @a[scores={player.kill=1..}] run tellraw @a[tag=!self] ["",{"text":"[","color":"dark_gray"},{"text":"🗡","color":"#FB7C3F"},{"text":"] ","color":"dark_gray"},{"selector":"@s"},{"text":" › ","color":"gray"},{"selector":"@s"}]
execute if score @s player.direct_death matches 1.. unless entity @a[scores={player.kill=1..}] run tellraw @s ""
execute if score @s player.direct_death matches 1.. unless entity @a[scores={player.kill=1..}] run tellraw @s ["",{"text":"[","color":"red"},{"text":"🗡","color":"#FB7C3F"},{"text":"] ","color":"red"},{"selector":"@s"},{"text":" › ","color":"gray"},{"selector":"@s"}]
title @s title ""
title @s subtitle {"text":"You died!","color":"red"}
# sfx
function tag:sfx/death

# end killstreak
# announce
execute if score @s player.killstreak matches 2.. run tellraw @s ["",{"text":"[","color":"dark_gray"},{"text":"🗡","color":"#FB7C3F"},{"text":"] ","color":"dark_gray"},{"text":"You lost your x","color":"#CE3F29"},{"score":{"name":"@s","objective":"player.killstreak"},"color":"#CE3F29"},{"text":" killstreak..","color":"#CE3F29"}]
# sfx
## TODO: add sfx for losing killstreak
scoreboard players set @s player.killstreak 0


# save to leaderboards
scoreboard players add @s leaderboard.deaths 1
execute if entity @a[scores={player.direct_death=1..}] run scoreboard players add @s leaderboard.deaths_player 1
execute unless entity @a[scores={player.direct_death=1..}] run scoreboard players add @s leaderboard.deaths_suicide 1


# reset loadout
function tag:system/loadout/go
## reload loadout
#function tag:system/crossbow/normal/reload
#function tag:system/crossbow/machine/reload
#function tag:system/crossbow/rocket/reload
advancement revoke @s only tag:crossbow/shoot_normal
advancement revoke @s only tag:crossbow/shoot_rocket
advancement revoke @s only tag:crossbow/shoot_machine
scoreboard players set @s crossbow_normal.time -1
scoreboard players set @s crossbow_normal.shots 0
scoreboard players set @s crossbow_rocket.time -1
scoreboard players set @s crossbow_rocket.shots 0
scoreboard players set @s crossbow_machine.time -1
scoreboard players set @s crossbow_machine.shots 0
scoreboard players set @s crossbow_poison.time -1
scoreboard players set @s crossbow_poison.shots 0

# reset hunger
function tag:system/health/reset

# find a new spawn point
execute as @a at @s positioned as @e[tag=spawn_point,sort=random,limit=1,distance=..200] run spawnpoint @s ~ ~ ~
execute if score dev_mode internal matches 77 as @a run tellraw @a [{"selector":"@s","color":"dark_gray"}," new spawn at ",{"nbt":"SpawnX","entity":"@s","color":"gold"}," ",{"nbt":"SpawnY","entity":"@s","color":"gold"}," ",{"nbt":"SpawnZ","entity":"@s","color":"gold"}]

# effects
effect give @s minecraft:resistance 2 255 true

tag @s remove self