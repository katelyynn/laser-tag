# LASERTAG killstreak
## 3 kills


tag @s add self

# announce
tellraw @a[tag=!self] ["",{"text":"[","color":"dark_gray"},{"text":"☠","color":"red"},{"text":"] ","color":"dark_gray"},{"selector":"@s","color":"dark_red","bold":true},{"text":" is on a ","color":"red"},{"text":"Triple Kill","color":"dark_red","bold":true},{"text":"!","color":"red"}]
# sfx
playsound minecraft:entity.player.attack.crit player @s ~ ~ ~ 15 0.6


tag @s remove self