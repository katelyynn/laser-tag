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
gamerule doMobSpawning false
## overrides custom weapon killing
## would like to revisit ^ in the future
gamerule keepInventory true

# player location
scoreboard objectives add player.y dummy

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

# map selector
scoreboard objectives add temp_store.map_selector dummy
scoreboard objectives add temp_store.is_spawn_valid dummy

# cosmetic selector
scoreboard objectives add temp_store.cosmetic_selector.bool dummy
scoreboard objectives add temp_store.cosmetic_selector.page dummy
scoreboard objectives add temp_store.cosmetic_selector.selection dummy
scoreboard objectives add temp_store.cosmetic_selector.has_item dummy

# lobby items
scoreboard objectives add temp_store.ready_item dummy

# return to lobby
## /trigger return_lobby
scoreboard objectives add return_lobby trigger "Return to lobby (map dev)"
## map dev
team add map.leash
team modify map.leash collisionRule never


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
# track time since
scoreboard objectives add player.time_since_death minecraft.custom:minecraft.time_since_death

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
scoreboard objectives add temp_store.use_trigger_item minecraft.used:minecraft.carrot_on_a_stick
scoreboard objectives add temp_store.ready_item dummy
scoreboard objectives add temp_store.unready_item dummy
scoreboard objectives add temp_store.weapon_knife dummy


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
## coins animation
scoreboard objectives add temp_store.leaderboard.coins.display dummy
scoreboard objectives add temp_store.leaderboard.coins.direction dummy
scoreboard objectives add temp_store.leaderboard.coins.time dummy

scoreboard objectives add temp_store.leaderboard.coins.difference dummy
scoreboard objectives add temp_store.leaderboard.coins.difference_amount dummy


# inventory
scoreboard objectives add temp_store.requested_reload_items dummy

# crossbows
scoreboard objectives add temp_store.arrow_index dummy
## NORMAL
scoreboard objectives add crossbow_normal.time dummy
scoreboard objectives add crossbow_normal.slot dummy
scoreboard objectives add crossbow_normal.slot_temp dummy
scoreboard objectives add crossbow_normal.shots dummy
scoreboard objectives add crossbow_normal.shots_remaining dummy
scoreboard players set crossbow_normal.delay internal 16
scoreboard players set crossbow_normal.ammo internal 12
scoreboard players set crossbow_normal.recharge internal 46
scoreboard players set crossbow_normal.index internal 16711680
## MACHINE
scoreboard objectives add crossbow_machine.time dummy
scoreboard objectives add crossbow_machine.slot dummy
scoreboard objectives add crossbow_machine.slot_temp dummy
scoreboard objectives add crossbow_machine.shots dummy
scoreboard objectives add crossbow_machine.shots_remaining dummy
scoreboard players set crossbow_machine.delay internal 1
scoreboard players set crossbow_machine.ammo internal 8
scoreboard players set crossbow_machine.recharge internal 96
scoreboard players set crossbow_machine.index internal 16741120
## ROCKET
scoreboard objectives add crossbow_rocket.time dummy
scoreboard objectives add crossbow_rocket.slot dummy
scoreboard objectives add crossbow_rocket.slot_temp dummy
scoreboard objectives add crossbow_rocket.shots dummy
scoreboard objectives add crossbow_rocket.shots_remaining dummy
scoreboard players set crossbow_rocket.delay internal 96
scoreboard players set crossbow_rocket.ammo internal 2
scoreboard players set crossbow_rocket.recharge internal 210
## POISON
scoreboard objectives add crossbow_poison.time dummy
scoreboard objectives add crossbow_poison.slot dummy
scoreboard objectives add crossbow_poison.slot_temp dummy
scoreboard objectives add crossbow_poison.shots dummy
scoreboard objectives add crossbow_poison.shots_remaining dummy
scoreboard players set crossbow_poison.delay internal 110
scoreboard players set crossbow_poison.ammo internal 3
scoreboard players set crossbow_poison.recharge internal 166
scoreboard players set crossbow_poison.index internal 8494175
## GLOWING
scoreboard objectives add crossbow_glowing.time dummy
scoreboard objectives add crossbow_glowing.slot dummy
scoreboard objectives add crossbow_glowing.slot_temp dummy
scoreboard objectives add crossbow_glowing.shots dummy
scoreboard objectives add crossbow_glowing.shots_remaining dummy
scoreboard players set crossbow_glowing.delay internal 70
scoreboard players set crossbow_glowing.ammo internal 2
scoreboard players set crossbow_glowing.recharge internal 110
scoreboard players set crossbow_glowing.index internal 15862911

# loadout
scoreboard objectives add loadout dummy
scoreboard objectives add temp_store.crossbow_normal dummy
scoreboard objectives add temp_store.crossbow_machine dummy
scoreboard objectives add temp_store.crossbow_rocket dummy
scoreboard objectives add temp_store.crossbow_poison dummy
scoreboard objectives add temp_store.crossbow_glowing dummy
scoreboard objectives add temp_store.knife dummy

# arrows
scoreboard objectives add temp_store.uuid.0 dummy
scoreboard objectives add temp_store.uuid.1 dummy
scoreboard objectives add temp_store.uuid.2 dummy
scoreboard objectives add temp_store.uuid.3 dummy
scoreboard objectives add temp_store.arrow.cosmetic_id dummy


# cosmetics
scoreboard objectives add cosmetic.prices dummy

## arrow trail
scoreboard objectives add temp_store.cosmetic_selector.buy_arrow_trail dummy
scoreboard objectives add cosmetic.arrow_trail dummy
scoreboard objectives add cosmetic.arrow_trail.0 dummy
scoreboard objectives add cosmetic.arrow_trail.1 dummy
scoreboard objectives add cosmetic.arrow_trail.2 dummy
scoreboard objectives add cosmetic.arrow_trail.3 dummy
scoreboard objectives add cosmetic.arrow_trail.4 dummy
scoreboard objectives add cosmetic.arrow_trail.5 dummy
scoreboard objectives add cosmetic.arrow_trail.6 dummy
scoreboard objectives add cosmetic.arrow_trail.7 dummy
scoreboard objectives add cosmetic.arrow_trail.8 dummy
scoreboard objectives add cosmetic.arrow_trail.9 dummy
scoreboard objectives add cosmetic.arrow_trail.10 dummy
scoreboard objectives add cosmetic.arrow_trail.11 dummy
scoreboard objectives add cosmetic.arrow_trail.12 dummy
scoreboard objectives add cosmetic.arrow_trail.13 dummy
scoreboard objectives add cosmetic.arrow_trail.14 dummy
scoreboard objectives add cosmetic.arrow_trail.15 dummy
scoreboard objectives add cosmetic.arrow_trail.16 dummy
scoreboard objectives add cosmetic.arrow_trail.17 dummy
scoreboard objectives add cosmetic.arrow_trail.18 dummy
scoreboard objectives add cosmetic.arrow_trail.19 dummy
scoreboard objectives add cosmetic.arrow_trail.20 dummy
scoreboard objectives add cosmetic.arrow_trail.21 dummy
scoreboard objectives add cosmetic.arrow_trail.22 dummy
scoreboard objectives add cosmetic.arrow_trail.23 dummy
scoreboard objectives add cosmetic.arrow_trail.24 dummy
scoreboard objectives add cosmetic.arrow_trail.25 dummy
scoreboard objectives add cosmetic.arrow_trail.26 dummy
## prices
scoreboard players set arrow_trail.0 cosmetic.prices 850
scoreboard players set arrow_trail.1 cosmetic.prices 1000
scoreboard players set arrow_trail.2 cosmetic.prices 750
scoreboard players set arrow_trail.3 cosmetic.prices 500
scoreboard players set arrow_trail.4 cosmetic.prices 560
scoreboard players set arrow_trail.5 cosmetic.prices 1100
scoreboard players set arrow_trail.6 cosmetic.prices 1500
scoreboard players set arrow_trail.7 cosmetic.prices 180
scoreboard players set arrow_trail.8 cosmetic.prices 300
scoreboard players set arrow_trail.9 cosmetic.prices 150
scoreboard players set arrow_trail.10 cosmetic.prices 170
scoreboard players set arrow_trail.11 cosmetic.prices 1000000000
scoreboard players set arrow_trail.12 cosmetic.prices 600
scoreboard players set arrow_trail.13 cosmetic.prices 650
scoreboard players set arrow_trail.14 cosmetic.prices 500
scoreboard players set arrow_trail.15 cosmetic.prices 450
scoreboard players set arrow_trail.16 cosmetic.prices 100
scoreboard players set arrow_trail.17 cosmetic.prices 200
scoreboard players set arrow_trail.18 cosmetic.prices 130
scoreboard players set arrow_trail.19 cosmetic.prices 200
scoreboard players set arrow_trail.20 cosmetic.prices 170
scoreboard players set arrow_trail.21 cosmetic.prices 200
scoreboard players set arrow_trail.22 cosmetic.prices 180
scoreboard players set arrow_trail.23 cosmetic.prices 110
scoreboard players set arrow_trail.24 cosmetic.prices 180
scoreboard players set arrow_trail.25 cosmetic.prices 210
scoreboard players set arrow_trail.26 cosmetic.prices 340

## hat
scoreboard objectives add temp_store.cosmetic_selector.buy_hat dummy
scoreboard objectives add cosmetic.hat dummy
scoreboard objectives add cosmetic.hat.0 dummy
scoreboard objectives add cosmetic.hat.1 dummy
scoreboard objectives add cosmetic.hat.2 dummy
scoreboard objectives add cosmetic.hat.3 dummy
scoreboard objectives add cosmetic.hat.4 dummy
scoreboard objectives add cosmetic.hat.5 dummy
scoreboard objectives add cosmetic.hat.6 dummy
scoreboard objectives add cosmetic.hat.7 dummy
scoreboard objectives add cosmetic.hat.8 dummy
scoreboard objectives add cosmetic.hat.9 dummy
scoreboard objectives add cosmetic.hat.10 dummy
scoreboard objectives add cosmetic.hat.11 dummy
scoreboard objectives add cosmetic.hat.12 dummy
scoreboard objectives add cosmetic.hat.13 dummy
scoreboard objectives add cosmetic.hat.14 dummy
scoreboard objectives add cosmetic.hat.15 dummy
scoreboard objectives add cosmetic.hat.16 dummy
scoreboard objectives add cosmetic.hat.17 dummy
scoreboard objectives add cosmetic.hat.18 dummy
scoreboard objectives add cosmetic.hat.19 dummy
scoreboard objectives add cosmetic.hat.20 dummy
scoreboard objectives add cosmetic.hat.21 dummy
scoreboard objectives add cosmetic.hat.22 dummy
scoreboard objectives add cosmetic.hat.23 dummy
scoreboard objectives add cosmetic.hat.24 dummy
scoreboard objectives add cosmetic.hat.25 dummy
scoreboard objectives add cosmetic.hat.26 dummy
## prices
scoreboard players set hat.0 cosmetic.prices 700
scoreboard players set hat.1 cosmetic.prices 700
scoreboard players set hat.2 cosmetic.prices 700
scoreboard players set hat.3 cosmetic.prices 700
scoreboard players set hat.4 cosmetic.prices 700
scoreboard players set hat.5 cosmetic.prices 700
scoreboard players set hat.6 cosmetic.prices 700
scoreboard players set hat.7 cosmetic.prices 700
scoreboard players set hat.8 cosmetic.prices 700
scoreboard players set hat.9 cosmetic.prices 700
scoreboard players set hat.10 cosmetic.prices 700
scoreboard players set hat.11 cosmetic.prices 700
scoreboard players set hat.12 cosmetic.prices 700
scoreboard players set hat.13 cosmetic.prices 700
scoreboard players set hat.14 cosmetic.prices 700
scoreboard players set hat.15 cosmetic.prices 700
scoreboard players set hat.16 cosmetic.prices 700
scoreboard players set hat.17 cosmetic.prices 700
scoreboard players set hat.18 cosmetic.prices 700
scoreboard players set hat.19 cosmetic.prices 700
scoreboard players set hat.20 cosmetic.prices 700
scoreboard players set hat.21 cosmetic.prices 700
scoreboard players set hat.22 cosmetic.prices 700
scoreboard players set hat.23 cosmetic.prices 700
scoreboard players set hat.24 cosmetic.prices 700
scoreboard players set hat.25 cosmetic.prices 700
scoreboard players set hat.26 cosmetic.prices 700


# health
scoreboard objectives add health.apple minecraft.used:minecraft.apple
scoreboard objectives add health.golden_apple minecraft.used:minecraft.golden_apple


# item spawners
scoreboard objectives add item_spawner.state dummy
scoreboard objectives add temp_store.item_spawner_time_t dummy
scoreboard objectives add temp_store.item_spawner_time dummy
scoreboard objectives add temp_store.item_spawner_sfx_time dummy
## metadata
scoreboard objectives add item_spawner.replenish dummy
scoreboard players set crossbow_normal item_spawner.replenish 70
scoreboard players set crossbow_machine item_spawner.replenish 130
scoreboard players set crossbow_rocket item_spawner.replenish 200
scoreboard players set crossbow_poison item_spawner.replenish 150
scoreboard players set crossbow_glowing item_spawner.replenish 80
scoreboard players set apple item_spawner.replenish 24


# murder mystery
## alive
scoreboard objectives add mode.mystery.display dummy "Murder Mystery"
## murderer
## used to store index of current murderer
scoreboard objectives add mode.mystery.murderer_index dummy
## detective
## used to store index of current detective
scoreboard objectives add mode.mystery.detective_index dummy


# defaults
execute unless score defaults internal matches 1.. run function tag:defaults