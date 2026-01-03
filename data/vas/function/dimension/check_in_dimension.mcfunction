function vas:message/tell {path:"/dimension/check_in_dimension"}

# @arg : dimension

$execute if dimension $(dimension) run return 1
return 0