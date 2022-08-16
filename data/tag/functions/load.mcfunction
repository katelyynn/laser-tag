# LASERTAG /reload


# create scoreboards
scoreboard objectives add global dummy
scoreboard objectives add internal dummy

# world
gamerule naturalRegeneration false
gamerule doImmediateRespawn true

# track player hunger
scoreboard objectives add health.hunger food

# track deaths
scoreboard objectives add player.death deathCount

# track kills
scoreboard objectives add player.kills playerKillCount

# track score
scoreboard objectives add player.score dummy

# systems
## crossbow
## NORMAL
scoreboard objectives add crossbow_normal.time dummy
scoreboard objectives add crossbow_normal.slot dummy
scoreboard objectives add crossbow_normal.slot_temp dummy
scoreboard objectives add crossbow_normal.shots dummy
scoreboard objectives add crossbow_normal.shots_remaining dummy
scoreboard players set crossbow_normal.delay internal 10
scoreboard players set crossbow_normal.ammo internal 30
scoreboard players set crossbow_normal.recharge internal 60
## MACHINE
scoreboard objectives add crossbow_machine.time dummy
scoreboard objectives add crossbow_machine.slot dummy
scoreboard objectives add crossbow_machine.slot_temp dummy
scoreboard objectives add crossbow_machine.shots dummy
scoreboard objectives add crossbow_machine.shots_remaining dummy
scoreboard players set crossbow_machine.delay internal 1
scoreboard players set crossbow_machine.ammo internal 20
scoreboard players set crossbow_machine.recharge internal 110
## ROCKET
scoreboard objectives add crossbow_rocket.time dummy
scoreboard objectives add crossbow_rocket.slot dummy
scoreboard objectives add crossbow_rocket.slot_temp dummy
scoreboard objectives add crossbow_rocket.shots dummy
scoreboard objectives add crossbow_rocket.shots_remaining dummy
scoreboard players set crossbow_rocket.delay internal 30
scoreboard players set crossbow_rocket.ammo internal 2
scoreboard players set crossbow_rocket.recharge internal 200

## health
scoreboard objectives add health.apple minecraft.used:minecraft.apple
scoreboard objectives add health.golden_apple minecraft.used:minecraft.golden_apple


# defaults
execute unless score defaults internal matches 1.. run function tag:defaults