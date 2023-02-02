# LASERTAG /reload


# create scoreboards
scoreboard objectives add global dummy
scoreboard objectives add internal dummy

scoreboard players set 1 internal 1
scoreboard players set 2 internal 2
scoreboard players set 3 internal 3
scoreboard players set 4 internal 4
scoreboard players set 5 internal 5

# world
gamerule naturalRegeneration false
gamerule doImmediateRespawn true

# bossbars
bossbar add tag:ver ""
bossbar set tag:ver max 12

# teams
## red
team add red "Red"
team modify red color red
team modify red prefix "① "
## blue
team add blue "Blue"
team modify blue color blue
team modify blue prefix "① "
## display
scoreboard objectives add team.displayed_red dummy
scoreboard objectives add team.displayed_blue dummy
scoreboard objectives add team.displayed_reset dummy

# open profile
## /trigger profile
scoreboard objectives add profile trigger "Open profile"

# track player hunger
scoreboard objectives add health.hunger food

# track deaths
scoreboard objectives add player.death deathCount
# track direct death from player
scoreboard objectives add player.direct_death killed_by:player

# track kills
scoreboard objectives add player.kills playerKillCount
# track kill event
scoreboard objectives add player.kill playerKillCount
# track killstreak
## TODO: range check killstreak
scoreboard objectives add player.killstreak dummy

# track score
## singular game
scoreboard objectives add player.score dummy "Score"


# track temporary coin storage
scoreboard objectives add temp_store.coins dummy


# leaderboards
## total score from all games
scoreboard objectives add leaderboard.coins dummy "Coins"
scoreboard objectives add leaderboard.score dummy "Score"
scoreboard objectives add leaderboard.wins dummy
scoreboard objectives add leaderboard.deaths dummy
scoreboard objectives add leaderboard.kills dummy
scoreboard objectives add leaderboard.killstreak_highest dummy


# systems
## crossbow
## NORMAL
scoreboard objectives add crossbow_normal.time dummy
scoreboard objectives add crossbow_normal.slot dummy
scoreboard objectives add crossbow_normal.slot_temp dummy
scoreboard objectives add crossbow_normal.shots dummy
scoreboard objectives add crossbow_normal.shots_remaining dummy
scoreboard players set crossbow_normal.delay internal 18
scoreboard players set crossbow_normal.ammo internal 12
scoreboard players set crossbow_normal.recharge internal 60
## MACHINE
scoreboard objectives add crossbow_machine.time dummy
scoreboard objectives add crossbow_machine.slot dummy
scoreboard objectives add crossbow_machine.slot_temp dummy
scoreboard objectives add crossbow_machine.shots dummy
scoreboard objectives add crossbow_machine.shots_remaining dummy
scoreboard players set crossbow_machine.delay internal 1
scoreboard players set crossbow_machine.ammo internal 8
scoreboard players set crossbow_machine.recharge internal 110
## ROCKET
scoreboard objectives add crossbow_rocket.time dummy
scoreboard objectives add crossbow_rocket.slot dummy
scoreboard objectives add crossbow_rocket.slot_temp dummy
scoreboard objectives add crossbow_rocket.shots dummy
scoreboard objectives add crossbow_rocket.shots_remaining dummy
scoreboard players set crossbow_rocket.delay internal 40
scoreboard players set crossbow_rocket.ammo internal 2
scoreboard players set crossbow_rocket.recharge internal 200

## health
scoreboard objectives add health.apple minecraft.used:minecraft.apple
scoreboard objectives add health.golden_apple minecraft.used:minecraft.golden_apple


# defaults
execute unless score defaults internal matches 1.. run function tag:defaults