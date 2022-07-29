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

# systems
## health
scoreboard objectives add health.apple minecraft.used:minecraft.apple
scoreboard objectives add health.golden_apple minecraft.used:minecraft.golden_apple