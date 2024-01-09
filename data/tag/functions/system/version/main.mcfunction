# LASERTAG version


# display version number
## ver.year = 2022
## ver.month = 11
## ver.day = 16
bossbar set tag:ver name ["",{"text":"LASER TAG","bold":true},{"text":" Closed Beta ","color":"gray"},{"text":" \u0020 [","color":"dark_gray"},{"score":{"name":"ver.year","objective":"internal"}},{"text":"."},{"score":{"name":"ver.month","objective":"internal"}},{"score":{"name":"ver.day","objective":"internal"}},{"text":"]","color":"dark_gray"}]
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