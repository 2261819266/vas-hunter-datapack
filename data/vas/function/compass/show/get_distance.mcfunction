# function vas:message/tell {path:"/compass/show/get_distance/"}

$return run function vas:math/distance/distance {x1 : $(x0), y1 : $(y0), z1 : $(z0), x2 : $(x), y2 : $(y), z2 : $(z)}