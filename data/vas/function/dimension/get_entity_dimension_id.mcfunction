function vas:message/tell {path:"/dimension/get_entity_dimension_id"}

scoreboard players set #vas.get_dimension_id vas.cycle 0
scoreboard players operation #vas.get_dimension_id vas.cycle_end = #sys vas.count.dimension
data modify storage vas:temp get_dimension_id set value {dimension_id: 0}

return run function vas:dimension/cycle_get_entity_dimension_id with storage vas:temp get_dimension_id