# LASERTAG main loop
## based on mode
## 5: murder mystery


# constant checks
## no murderer...
execute unless entity @a[tag=mode.mystery.murderer] run function tag:system/mode/5/patch/new_murderer
## no detective...
execute unless entity @a[tag=mode.mystery.detective] run function tag:system/mode/5/patch/new_detective
## old murderer is back?!
## TODO: count up murderers, if more than 1
## force-kill the one with the lower index
## repeat for detective!