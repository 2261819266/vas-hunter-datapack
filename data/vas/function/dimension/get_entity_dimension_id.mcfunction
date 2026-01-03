function vas:message/tell {path:"/dimension/get_entity_dimension_id"}

data modify storage vas:temp get_dimension_id.dimension set from entity @s Dimension
return run function vas:dimension/get_dimension_id_from_dimension with storage vas:temp get_dimension_id