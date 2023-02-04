# LASERTAG version


# display version number
## ver.year = 2022
## ver.month = 11
## ver.day = 16
bossbar set tag:ver name ["",{"text":"LASER ","color":"red","bold":true},{"text":"TAG ","color":"blue","bold":true},{"text":"(beta) ","color":"white"},{"score":{"name":"ver.year","objective":"internal"},"color":"yellow"},{"text":".","color":"yellow"},{"score":{"name":"ver.month","objective":"internal"},"color":"yellow"},{"score":{"name":"ver.day","objective":"internal"},"color":"yellow"}]
# display @a
bossbar set tag:ver players @a[tag=!ignore_ver]
# set fill
execute store result bossbar tag:ver value run scoreboard players get ver.month internal
# colour
## Q1
execute if score ver.month internal matches 1..3 run bossbar set tag:ver color yellow
## Q2
execute if score ver.month internal matches 4..6 run bossbar set tag:ver color green
## Q3
execute if score ver.month internal matches 7..9 run bossbar set tag:ver color red
## Q4
execute if score ver.month internal matches 10..12 run bossbar set tag:ver color white