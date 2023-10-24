# LASERTAG map selector
## page 1


# selection
execute unless score @s cosmetic.hat.17 matches 1 if score @s temp_store.cosmetic_selector.selection matches 2 run scoreboard players set @s temp_store.cosmetic_selector.buy_hat 17
execute if score @s cosmetic.hat.17 matches 1 if score @s temp_store.cosmetic_selector.selection matches 2 run scoreboard players set @s cosmetic.hat 17
execute unless score @s cosmetic.hat.18 matches 1 if score @s temp_store.cosmetic_selector.selection matches 3 run scoreboard players set @s temp_store.cosmetic_selector.buy_hat 18
execute if score @s cosmetic.hat.18 matches 1 if score @s temp_store.cosmetic_selector.selection matches 3 run scoreboard players set @s cosmetic.hat 18
execute unless score @s cosmetic.hat.19 matches 1 if score @s temp_store.cosmetic_selector.selection matches 4 run scoreboard players set @s temp_store.cosmetic_selector.buy_hat 19
execute if score @s cosmetic.hat.19 matches 1 if score @s temp_store.cosmetic_selector.selection matches 4 run scoreboard players set @s cosmetic.hat 19
execute unless score @s cosmetic.hat.20 matches 1 if score @s temp_store.cosmetic_selector.selection matches 5 run scoreboard players set @s temp_store.cosmetic_selector.buy_hat 20
execute if score @s cosmetic.hat.20 matches 1 if score @s temp_store.cosmetic_selector.selection matches 5 run scoreboard players set @s cosmetic.hat 20
execute unless score @s cosmetic.hat.21 matches 1 if score @s temp_store.cosmetic_selector.selection matches 6 run scoreboard players set @s temp_store.cosmetic_selector.buy_hat 21
execute if score @s cosmetic.hat.21 matches 1 if score @s temp_store.cosmetic_selector.selection matches 6 run scoreboard players set @s cosmetic.hat 21
execute unless score @s cosmetic.hat.22 matches 1 if score @s temp_store.cosmetic_selector.selection matches 7 run scoreboard players set @s temp_store.cosmetic_selector.buy_hat 22
execute if score @s cosmetic.hat.22 matches 1 if score @s temp_store.cosmetic_selector.selection matches 7 run scoreboard players set @s cosmetic.hat 22
execute unless score @s cosmetic.hat.23 matches 1 if score @s temp_store.cosmetic_selector.selection matches 11 run scoreboard players set @s temp_store.cosmetic_selector.buy_hat 23
execute if score @s cosmetic.hat.23 matches 1 if score @s temp_store.cosmetic_selector.selection matches 11 run scoreboard players set @s cosmetic.hat 23
execute unless score @s cosmetic.hat.24 matches 1 if score @s temp_store.cosmetic_selector.selection matches 12 run scoreboard players set @s temp_store.cosmetic_selector.buy_hat 24
execute if score @s cosmetic.hat.24 matches 1 if score @s temp_store.cosmetic_selector.selection matches 12 run scoreboard players set @s cosmetic.hat 24
execute unless score @s cosmetic.hat.25 matches 1 if score @s temp_store.cosmetic_selector.selection matches 13 run scoreboard players set @s temp_store.cosmetic_selector.buy_hat 25
execute if score @s cosmetic.hat.25 matches 1 if score @s temp_store.cosmetic_selector.selection matches 13 run scoreboard players set @s cosmetic.hat 25
execute unless score @s cosmetic.hat.26 matches 1 if score @s temp_store.cosmetic_selector.selection matches 14 run scoreboard players set @s temp_store.cosmetic_selector.buy_hat 26
execute if score @s cosmetic.hat.26 matches 1 if score @s temp_store.cosmetic_selector.selection matches 14 run scoreboard players set @s cosmetic.hat 26
execute unless score @s cosmetic.hat.27 matches 1 if score @s temp_store.cosmetic_selector.selection matches 15 run scoreboard players set @s temp_store.cosmetic_selector.buy_hat 27
execute if score @s cosmetic.hat.27 matches 1 if score @s temp_store.cosmetic_selector.selection matches 15 run scoreboard players set @s cosmetic.hat 27
execute unless score @s cosmetic.hat.28 matches 1 if score @s temp_store.cosmetic_selector.selection matches 16 run scoreboard players set @s temp_store.cosmetic_selector.buy_hat 28
execute if score @s cosmetic.hat.28 matches 1 if score @s temp_store.cosmetic_selector.selection matches 16 run scoreboard players set @s cosmetic.hat 28
execute unless score @s cosmetic.hat.29 matches 1 if score @s temp_store.cosmetic_selector.selection matches 20 run scoreboard players set @s temp_store.cosmetic_selector.buy_hat 29
execute if score @s cosmetic.hat.29 matches 1 if score @s temp_store.cosmetic_selector.selection matches 20 run scoreboard players set @s cosmetic.hat 29
execute unless score @s cosmetic.hat.30 matches 1 if score @s temp_store.cosmetic_selector.selection matches 21 run scoreboard players set @s temp_store.cosmetic_selector.buy_hat 30
execute if score @s cosmetic.hat.30 matches 1 if score @s temp_store.cosmetic_selector.selection matches 21 run scoreboard players set @s cosmetic.hat 30
execute unless score @s cosmetic.hat.31 matches 1 if score @s temp_store.cosmetic_selector.selection matches 22 run scoreboard players set @s temp_store.cosmetic_selector.buy_hat 31
execute if score @s cosmetic.hat.31 matches 1 if score @s temp_store.cosmetic_selector.selection matches 22 run scoreboard players set @s cosmetic.hat 31
execute unless score @s cosmetic.hat.32 matches 1 if score @s temp_store.cosmetic_selector.selection matches 23 run scoreboard players set @s temp_store.cosmetic_selector.buy_hat 32
execute if score @s cosmetic.hat.32 matches 1 if score @s temp_store.cosmetic_selector.selection matches 23 run scoreboard players set @s cosmetic.hat 32
execute unless score @s cosmetic.hat.33 matches 1 if score @s temp_store.cosmetic_selector.selection matches 24 run scoreboard players set @s temp_store.cosmetic_selector.buy_hat 33
execute if score @s cosmetic.hat.33 matches 1 if score @s temp_store.cosmetic_selector.selection matches 24 run scoreboard players set @s cosmetic.hat 33
execute unless score @s cosmetic.hat.34 matches 1 if score @s temp_store.cosmetic_selector.selection matches 25 run scoreboard players set @s temp_store.cosmetic_selector.buy_hat 34
execute if score @s cosmetic.hat.34 matches 1 if score @s temp_store.cosmetic_selector.selection matches 25 run scoreboard players set @s cosmetic.hat 34


# confirm buy
execute if score @s temp_store.cosmetic_selector.buy_hat matches 17..34 run function tag:system/player/cosmetic/purchase_check_initial


scoreboard players set @s temp_store.cosmetic_selector.selection -1