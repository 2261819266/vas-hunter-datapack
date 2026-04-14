# function vas:message/tell {path:"/detect/changed_dimension/"}

data modify storage vas:temp add_dimension.dimension set from entity @s Dimension

function vas:dimension/add_dimension with storage vas:temp add_dimension

advancement revoke @s only vas:detect/changed_dimension
