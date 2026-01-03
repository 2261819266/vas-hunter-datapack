function vas:message/tell {path:"/player/write_pos"}

# @arg : dimension_id, uid

$execute unless data storage vas:sys player[$(uid)] run \
    data modify storage vas:sys player append value []
$execute unless data storage vas:sys player[$(uid)] run \
    function vas:player/write_pos {dimension_id: $(dimension_id), uid: [$(uid)]}

$execute unless data storage vas:sys player[$(uid)].Pos run \
    data modify storage vas:sys player[$(uid)] set value {Pos: []}

$execute unless data storage vas:sys player[$(uid)].Pos[$(dimension_id)] run \
    data modify storage vas:sys player[$(uid)].Pos append value {}
$execute unless data storage vas:sys player[$(uid)].Pos[$(dimension_id)] run \
    function vas:sys/write_pos {dimension_id: $(dimension_id), uid: [$(uid)]}

$data modify storage vas:sys player[$(uid)].Pos[$(dimension_id)].pos set from entity @s Pos
$data modify storage vas:sys player[$(uid)].Pos[$(dimension_id)].dimension set from entity @s Dimension
