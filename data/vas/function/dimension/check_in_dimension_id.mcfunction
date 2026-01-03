function vas:message/tell {path:"/dimension/check_in_dimension_id"}

# @arg : dimension_id

$return run function vas:dimension/check_in_dimension with storage vas:sys dimensions[$(dimension_id)]