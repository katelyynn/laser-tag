# LASERTAG inventory trigger item
## on right click of carrot on a stick


# toggle ready status
## ready
execute unless score @s player.ready matches 1.. if entity @s[nbt={SelectedItem:{tag:{readyItem:1b}}}] run function tag:system/ready/enable
## unready
execute if score @s player.ready matches 1.. if entity @s[nbt={SelectedItem:{tag:{unreadyItem:1b}}}] run function tag:system/ready/disable