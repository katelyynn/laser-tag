# LASERTAG inventory reload
## generic reload item


## TODO: trying to copy offhand item back to mainhand
## we already know type so can alternatively just re-create item
## in 'weapon' slot
item replace entity @s weapon from entity @s inventory.0

## TODO: start previous reload loop for item