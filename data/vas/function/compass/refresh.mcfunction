# function vas:message/tell {path:"/compass/refresh/"}

scoreboard players set @s vas.use.compass 0

execute unless predicate vas:hand/tracker_offhand unless predicate vas:hand/tracker_mainhand run \
    return fail

execute if predicate vas:hand/tracker_offhand run \
    data modify storage vas:temp refresh.hand set value "offhand"
execute if predicate vas:hand/tracker_mainhand run \
    data modify storage vas:temp refresh.hand set value "mainhand"
execute if predicate vas:hand/tracker_offhand run \
    data modify storage vas:temp refresh.hand_ set value "equipment.offhand"
execute if predicate vas:hand/tracker_mainhand run \
    data modify storage vas:temp refresh.hand_ set value "SelectedItem"
execute if entity @s[team=hunter] run \
    data modify storage vas:temp refresh.team set value "hunter"
execute if entity @s[team=runner] run \
    data modify storage vas:temp refresh.team set value "runner"

execute store result storage vas:temp refresh.uid int 1 run \
    scoreboard players get @s vas.tracking

data modify storage vas:temp refresh.dimension set from entity @s Dimension

execute store result storage vas:temp refresh.dimension_id int 1 run \
    function vas:dimension/get_dimension_id_from_dimension with storage vas:temp refresh

tag @s add using_compass
function vas:compass/update/check with storage vas:temp refresh
function vas:compass/update/refresh with storage vas:temp refresh
tag @s remove using_compass
