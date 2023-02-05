# LASERTAG lobby controller
## game start


execute if score matchmaking internal matches 1.. run function tag:system/start/matchmaking/cancel
execute unless score matchmaking internal matches 1.. run function tag:system/start/matchmaking/go

function tag:system/lobby/controller/go