function vas:message/tell {path:"/dimension/register_dimension"}

$execute if data storage vas:sys dimensions[$(dimension_id)] run return fail

$data modify storage vas:sys dimensions append value {dimension: $(dimension)}
$data modify storage vas:sys dimension_id.$(dimension) set value $(dimension_id)

