function vas:message/tell {path:"/dimension/add_dimension"}

# @arg : dimension

execute store result storage vas:temp add_dimension.dimension_id int 1 run \
    scoreboard players get #sys vas.count.dimension

$data modify storage vas:temp add_dimension.dimension set value "$(dimension)"

function vas:dimension/register_dimension with storage vas:temp add_dimension

scoreboard players add #sys vas.count.dimension 1
