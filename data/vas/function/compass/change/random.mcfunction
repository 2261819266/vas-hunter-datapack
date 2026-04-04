# function vas:message/tell {path:"/compass/change/random/"}

function vas:compass/refresh
tag @s add using_compass
execute store result score @s vas.tracking run \
    function vas:compass/update/select_random_player with storage vas:temp refresh
tag @s remove using_compass
function vas:compass/refresh
