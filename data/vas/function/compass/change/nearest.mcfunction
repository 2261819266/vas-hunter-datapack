execute unless predicate vas:hand/tracker_offhand unless predicate vas:hand/tracker_mainhand run \
    return run tellraw @s { translate: info.vas.change.fail }

tag @s add using_compass

execute if predicate vas:hand/tracker_mainhand run function vas:compass/change/nearest_mainhand
execute unless predicate vas:hand/tracker_mainhand if predicate vas:hand/tracker_offhand run function vas:compass/change/nearest_offhand
function vas:compass/update/refresh

tag @s remove using_compass