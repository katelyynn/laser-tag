# LASERTAG start
## if eligible


# countdown
function tag:system/start/count/5
schedule function tag:system/start/count/4 1s
schedule function tag:system/start/count/3 2s
schedule function tag:system/start/count/2 3s
schedule function tag:system/start/count/1 4s
schedule function tag:system/start/done 5s


scoreboard players set period internal 0