# function vas:message/tell {path:"/compass/update/select_nearest_player/"}

data modify storage vas:temp refresh.uid set value -1

$execute as @p[tag=!using_compass, predicate=vas:player/can_be_tracked_by_$(team)] \
    store result storage vas:temp refresh.uid int 1 run return run \
    scoreboard players get @s vas.uid

return -1