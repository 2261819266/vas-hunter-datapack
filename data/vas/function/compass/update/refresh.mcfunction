# function vas:message/tell {path:"/compass/update/refresh/"}

# @arg uid, dimension, hand, hand_, dimension_id, team

$item modify entity @s weapon.$(hand) vas:tracker

# $execute unless entity @p[scores={vas.uid = $(uid)}, tag=!using_compass, predicate=vas:player/can_be_tracked_by_$(team)] run \ 
#     execute store result score @s vas.tracking run function vas:compass/update/select_random_player
    
$data modify storage vas:temp refresh.name set from storage vas:sys players[$(uid)].name

$item modify entity @s weapon.$(hand) \
    { function: "set_lore", lore: [{ "translate": "info.vas.item.lore.track", extra: \
    [{ selector: "@p[scores={vas.uid = $(uid)}]"}] }], \
    mode: "replace_section", offset: 1, entity: "this" }
$data modify storage vas:temp refresh.actionbar set from entity @s $(hand_).components."minecraft:lore"[1]

$data modify storage vas:temp refresh.x set from storage vas:sys players[$(uid)].Pos[$(dimension_id)].pos[0]
$data modify storage vas:temp refresh.y set from storage vas:sys players[$(uid)].Pos[$(dimension_id)].pos[1]
$data modify storage vas:temp refresh.z set from storage vas:sys players[$(uid)].Pos[$(dimension_id)].pos[2]
function vas:compass/update/update_pos with storage vas:temp refresh

