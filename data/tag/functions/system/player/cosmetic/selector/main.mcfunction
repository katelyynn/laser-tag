# LASERTAG cosmetic selector
## main loop
## if eligible with item (run 'check' first)


# retrieve data
function tag:system/player/cosmetic/selector/get/page
function tag:system/player/cosmetic/selector/get/selection

function tag:system/player/cosmetic/selector/update
clear @s #tag:map_selector{cosmeticItem: 1b}
#scoreboard players set @s temp_store.cosmetic_selector.selection -1