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

# score
scoreboard objectives add player.score dummy

# systems
## crossbow
scoreboard objectives add crossbow.time dummy
scoreboard objectives add crossbow.time_s dummy
scoreboard objectives add crossbow.slot dummy
scoreboard objectives add crossbow.slot_temp dummy
scoreboard objectives add crossbow.shoot minecraft.used:minecraft.crossbow
scoreboard players set crossbow_recharge internal 1
## health
scoreboard objectives add health.apple minecraft.used:minecraft.apple
scoreboard objectives add health.golden_apple minecraft.used:minecraft.golden_apple