function vas:message/tell {path:"/player/write_pos"}

# @arg : dimension_id, uid

$execute unless data storage vas:sys players[$(uid)] run \
    data modify storage vas:sys players append value []
$execute unless data storage vas:sys players[$(uid)] run \
    function vas:player/write_pos {dimension_id: $(dimension_id), uid: [$(uid)]}

$execute unless data storage vas:sys players[$(uid)].Pos run \
    data modify storage vas:sys players[$(uid)] set value {Pos: []}

$execute unless data storage vas:sys players[$(uid)].Pos[$(dimension_id)] run \
    data modify storage vas:sys players[$(uid)].Pos append value {}
$execute unless data storage vas:sys players[$(uid)].Pos[$(dimension_id)] run \
    function vas:sys/write_pos {dimension_id: $(dimension_id), uid: [$(uid)]}

$data modify storage vas:sys players[$(uid)].Pos[$(dimension_id)].pos set from entity @s Pos
$data modify storage vas:sys players[$(uid)].Pos[$(dimension_id)].dimension set from entity @s Dimension
