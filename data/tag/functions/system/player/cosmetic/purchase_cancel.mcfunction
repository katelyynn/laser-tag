# LASERTAG cosmetics
## purchase cancel


scoreboard players reset @s temp_store.cosmetic_selector.buy_arrow_trail
scoreboard players reset @s temp_store.cosmetic_selector.buy_hat
execute if score @s temp_store.cosmetic_selector.page matches 70..71 run scoreboard players remove @s temp_store.cosmetic_selector.page 20
execute if score @s temp_store.cosmetic_selector.page matches 100..101 run scoreboard players remove @s temp_store.cosmetic_selector.page 20
function tag:sfx/deny