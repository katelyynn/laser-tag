# LASERTAG /reload


# create scoreboards
scoreboard objectives add global dummy
scoreboard objectives add internal dummy

scoreboard players set 1 internal 1
scoreboard players set 2 internal 2
scoreboard players set 3 internal 3
scoreboard players set 4 internal 4
scoreboard players set 5 internal 5
scoreboard players set 6 internal 6
scoreboard players set 7 internal 7
scoreboard players set 8 internal 8
scoreboard players set 9 internal 9
scoreboard players set 10 internal 10
scoreboard players set 30 internal 30
scoreboard players set 60 internal 60

# world
difficulty easy
gamerule commandBlockOutput false
gamerule naturalRegeneration false
gamerule doImmediateRespawn true
gamerule showDeathMessages false
gamerule doInsomnia false
gamerule doFireTick false
gamerule spawnRadius 1
## overrides custom weapon killing
## would like to revisit ^ in the future
gamerule keepInventory true

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


# lobby controls
## stores current frame state
scoreboard objectives add lobby_controls dummy

# lobby items
scoreboard objectives add temp_store.ready_item dummy


# open profile
## /trigger profile
scoreboard objectives add profile trigger "Open profile"

# track player health
scoreboard objectives add health.hp health {"text":"❤","color":"red"}
scoreboard objectives add health.hunger food

# track deaths
scoreboard objectives add player.death deathCount
# track direct death from player
scoreboard objectives add player.direct_death killed_by:player
# temp score to track direct death
scoreboard objectives add temp_store.direct_death dummy

# track kills
scoreboard objectives add player.kills playerKillCount
# track kill event
scoreboard objectives add player.kill playerKillCount
# track killstreak
## TODO: range check killstreak
scoreboard objectives add player.killstreak dummy
# temp store to calculate killstreak coins
scoreboard objectives add temp_store.killstreak dummy

# track score
## singular game
## re-created via start/go
scoreboard objectives add player.score dummy "Score"


# track player ready status
scoreboard objectives add player.ready dummy
# track if player is ingame
scoreboard objectives add player.ingame dummy
# track items
scoreboard objectives add temp_store.use_ready minecraft.used:minecraft.carrot_on_a_stick
scoreboard objectives add temp_store.use_unready minecraft.used:minecraft.warped_fungus_on_a_stick


# track item drops
## used to know when to kill items
scoreboard objectives add temp_store.drop_crossbow minecraft.dropped:minecraft.crossbow
scoreboard objectives add temp_store.drop_sword minecraft.dropped:minecraft.iron_sword


# track temporary coin storage
scoreboard objectives add temp_store.coins dummy

# earn coins passively
## 1 minute in ticks
scoreboard players set passive_coin_time internal 1200


# leaderboards
## total score from all games
scoreboard objectives add leaderboard.coins dummy {"text":"$","color":"#CCB548"}
scoreboard objectives add leaderboard.score dummy "Score"
scoreboard objectives add leaderboard.wins dummy
scoreboard objectives add leaderboard.games_played dummy
scoreboard objectives add leaderboard.deaths dummy
scoreboard objectives add leaderboard.deaths_player dummy
scoreboard objectives add leaderboard.deaths_suicide dummy
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