# function vas:message/tell {path:"/compass/update/check/"}

# @arg uid, team


$execute unless entity @p[scores={vas.uid = $(uid)}, tag=!using_compass, predicate=vas:player/can_be_tracked_by_$(team)] run \
    execute store result score @s vas.tracking run \
    function vas:compass/update/select_nearest_player with storage vas:temp refresh