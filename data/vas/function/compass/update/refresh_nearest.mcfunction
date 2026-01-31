# function vas:message/tell {path:"/compass/refresh_nearest/"}

# @arg name, uid, dimension_id, dimension

$data modify storage vas:temp refresh.x set from storage vas:sys players[$(uid)].Pos[$(dimension_id)].pos[0]
$data modify storage vas:temp refresh.y set from storage vas:sys players[$(uid)].Pos[$(dimension_id)].pos[1]
$data modify storage vas:temp refresh.z set from storage vas:sys players[$(uid)].Pos[$(dimension_id)].pos[2]

execute if entity @s[predicate=vas:hand/tracker_mainhand] run \
    function vas:compass/update/update_pos_mainhand with storage vas:temp refresh
execute if entity @s[predicate=vas:hand/tracker_offhand,predicate=!vas:hand/tracker_mainhand] run \
    function vas:compass/update/update_pos_offhand with storage vas:temp refresh

$title @s actionbar $(actionbar)