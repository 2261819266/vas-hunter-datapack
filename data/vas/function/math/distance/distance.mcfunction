# function vas:message/tell {path:"/math/distance/distance/"}

# @arg x1, x2, y1, y2, z1, z2

$scoreboard players set math.distance.x1 vas.temp $(x1)
$scoreboard players set math.distance.x2 vas.temp $(x2)
$scoreboard players set math.distance.y1 vas.temp $(y1)
$scoreboard players set math.distance.y2 vas.temp $(y2)
$scoreboard players set math.distance.z1 vas.temp $(z1)
$scoreboard players set math.distance.z2 vas.temp $(z2)

execute store result storage vas:temp math.distance.x int 1 run \
    scoreboard players operation math.distance.x1 vas.temp -= math.distance.x2 vas.temp
execute store result storage vas:temp math.distance.y int 1 run \
    scoreboard players operation math.distance.y1 vas.temp -= math.distance.y2 vas.temp
execute store result storage vas:temp math.distance.z int 1 run \
    scoreboard players operation math.distance.z1 vas.temp -= math.distance.z2 vas.temp

return run execute summon text_display run function vas:math/distance/calculate_distance with storage vas:temp math.distance