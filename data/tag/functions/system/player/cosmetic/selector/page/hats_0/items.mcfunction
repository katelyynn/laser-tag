# LASERTAG map selector
## page 1


# selection

## particle -1 - none
execute if score @s temp_store.cosmetic_selector.selection matches 2 run scoreboard players set @s cosmetic.hat -1

## particle 0 - anger
execute unless score @s cosmetic.hat.0 matches 1 if score @s temp_store.cosmetic_selector.selection matches 3 run scoreboard players set @s temp_store.cosmetic_selector.buy_hat 0
execute if score @s cosmetic.hat.0 matches 1 if score @s temp_store.cosmetic_selector.selection matches 3 run scoreboard players set @s cosmetic.hat 0

## particle 1 - hearts
execute unless score @s cosmetic.hat.1 matches 1 if score @s temp_store.cosmetic_selector.selection matches 4 run scoreboard players set @s temp_store.cosmetic_selector.buy_hat 1
execute if score @s cosmetic.hat.1 matches 1 if score @s temp_store.cosmetic_selector.selection matches 4 run scoreboard players set @s cosmetic.hat 1

## particle 2 - withered hearts
execute unless score @s cosmetic.hat.2 matches 1 if score @s temp_store.cosmetic_selector.selection matches 5 run scoreboard players set @s temp_store.cosmetic_selector.buy_hat 2
execute if score @s cosmetic.hat.2 matches 1 if score @s temp_store.cosmetic_selector.selection matches 5 run scoreboard players set @s cosmetic.hat 2

## particle 3 - witch
execute unless score @s cosmetic.hat.3 matches 1 if score @s temp_store.cosmetic_selector.selection matches 6 run scoreboard players set @s temp_store.cosmetic_selector.buy_hat 3
execute if score @s cosmetic.hat.3 matches 1 if score @s temp_store.cosmetic_selector.selection matches 6 run scoreboard players set @s cosmetic.hat 3

## particle 4 - dragon breath
execute unless score @s cosmetic.hat.4 matches 1 if score @s temp_store.cosmetic_selector.selection matches 7 run scoreboard players set @s temp_store.cosmetic_selector.buy_hat 4
execute if score @s cosmetic.hat.4 matches 1 if score @s temp_store.cosmetic_selector.selection matches 7 run scoreboard players set @s cosmetic.hat 4

## particle 5 - soul
execute unless score @s cosmetic.hat.5 matches 1 if score @s temp_store.cosmetic_selector.selection matches 11 run scoreboard players set @s temp_store.cosmetic_selector.buy_hat 5
execute if score @s cosmetic.hat.5 matches 1 if score @s temp_store.cosmetic_selector.selection matches 11 run scoreboard players set @s cosmetic.hat 5

## particle 6 - sculk soul
execute unless score @s cosmetic.hat.6 matches 1 if score @s temp_store.cosmetic_selector.selection matches 12 run scoreboard players set @s temp_store.cosmetic_selector.buy_hat 6
execute if score @s cosmetic.hat.6 matches 1 if score @s temp_store.cosmetic_selector.selection matches 12 run scoreboard players set @s cosmetic.hat 6

## particle 7 - flame
execute unless score @s cosmetic.hat.7 matches 1 if score @s temp_store.cosmetic_selector.selection matches 13 run scoreboard players set @s temp_store.cosmetic_selector.buy_hat 7
execute if score @s cosmetic.hat.7 matches 1 if score @s temp_store.cosmetic_selector.selection matches 13 run scoreboard players set @s cosmetic.hat 7

## particle 8 - soul flame
execute unless score @s cosmetic.hat.8 matches 1 if score @s temp_store.cosmetic_selector.selection matches 14 run scoreboard players set @s temp_store.cosmetic_selector.buy_hat 8
execute if score @s cosmetic.hat.8 matches 1 if score @s temp_store.cosmetic_selector.selection matches 14 run scoreboard players set @s cosmetic.hat 8

## particle 9 - slime
execute unless score @s cosmetic.hat.9 matches 1 if score @s temp_store.cosmetic_selector.selection matches 15 run scoreboard players set @s temp_store.cosmetic_selector.buy_hat 9
execute if score @s cosmetic.hat.9 matches 1 if score @s temp_store.cosmetic_selector.selection matches 15 run scoreboard players set @s cosmetic.hat 9

## particle 10 - snowball
execute unless score @s cosmetic.hat.10 matches 1 if score @s temp_store.cosmetic_selector.selection matches 16 run scoreboard players set @s temp_store.cosmetic_selector.buy_hat 10
execute if score @s cosmetic.hat.10 matches 1 if score @s temp_store.cosmetic_selector.selection matches 16 run scoreboard players set @s cosmetic.hat 10

## particle 11 - sonic boom
execute unless score @s cosmetic.hat.11 matches 1 if score @s temp_store.cosmetic_selector.selection matches 20 run scoreboard players set @s temp_store.cosmetic_selector.buy_hat 11
execute if score @s cosmetic.hat.11 matches 1 if score @s temp_store.cosmetic_selector.selection matches 20 run scoreboard players set @s cosmetic.hat 11

## particle 12 - glow
execute unless score @s cosmetic.hat.12 matches 1 if score @s temp_store.cosmetic_selector.selection matches 21 run scoreboard players set @s temp_store.cosmetic_selector.buy_hat 12
execute if score @s cosmetic.hat.12 matches 1 if score @s temp_store.cosmetic_selector.selection matches 21 run scoreboard players set @s cosmetic.hat 12

## particle 13 - end rod
execute unless score @s cosmetic.hat.13 matches 1 if score @s temp_store.cosmetic_selector.selection matches 22 run scoreboard players set @s temp_store.cosmetic_selector.buy_hat 13
execute if score @s cosmetic.hat.13 matches 1 if score @s temp_store.cosmetic_selector.selection matches 22 run scoreboard players set @s cosmetic.hat 13

## particle 14 - electric spark
execute unless score @s cosmetic.hat.14 matches 1 if score @s temp_store.cosmetic_selector.selection matches 23 run scoreboard players set @s temp_store.cosmetic_selector.buy_hat 14
execute if score @s cosmetic.hat.14 matches 1 if score @s temp_store.cosmetic_selector.selection matches 23 run scoreboard players set @s cosmetic.hat 14

## particle 15 - composter
execute unless score @s cosmetic.hat.15 matches 1 if score @s temp_store.cosmetic_selector.selection matches 24 run scoreboard players set @s temp_store.cosmetic_selector.buy_hat 15
execute if score @s cosmetic.hat.15 matches 1 if score @s temp_store.cosmetic_selector.selection matches 24 run scoreboard players set @s cosmetic.hat 15

## particle 16 - ash
execute unless score @s cosmetic.hat.16 matches 1 if score @s temp_store.cosmetic_selector.selection matches 25 run scoreboard players set @s temp_store.cosmetic_selector.buy_hat 16
execute if score @s cosmetic.hat.16 matches 1 if score @s temp_store.cosmetic_selector.selection matches 25 run scoreboard players set @s cosmetic.hat 16


# confirm buy
execute if score @s temp_store.cosmetic_selector.buy_hat matches 0..16 run function tag:system/player/cosmetic/purchase_check_initial


scoreboard players set @s temp_store.cosmetic_selector.selection -1