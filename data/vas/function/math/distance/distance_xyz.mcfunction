# function vas:message/tell {path:"/math/distance/distance_xyz/"}

# @arg x, y, z

$return run execute summon text_display run \
    function vas:math/distance/calculate_distance {x: $(x), y: $(y), z: $(z)}